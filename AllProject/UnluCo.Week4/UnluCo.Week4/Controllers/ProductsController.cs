using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Caching.Distributed;
using Microsoft.Extensions.Caching.Memory;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using UnluCo.Week4.Models;

namespace UnluCo.Week4.Controllers
{
    [Authorize]
    [Route("[controller]")]
    [ApiController]

    public class ProductsController : ControllerBase
    {
        private readonly IdentityDbContext _context;
        private readonly IMemoryCache _memoryCache;
        private readonly IDistributedCache _distributedCache;
        public ProductsController(IdentityDbContext context, IMemoryCache memoryCache, IDistributedCache distributedCache)
        {
            _context = context;
            _memoryCache = memoryCache;
            _distributedCache = distributedCache;
        }

        [HttpGet] // Response cach
        [ResponseCache(Duration = 1000, Location = ResponseCacheLocation.Client)]
        public ActionResult GetAll()
        {
            List<Products> productList = new List<Products>();

            foreach (var item in _context.Products)
            {
                productList.Add(item);
            }

            return Ok(productList);
        }

        [HttpGet] // 100'den fazla sonuç dönerse Redis kullanılacak
        [Route("redis")]
        public async Task<IActionResult> GetAllRedis()
        {
            var productFromCache = await _distributedCache.GetAsync("allproducts");

            List<Products> productList = new List<Products>();

            if (productFromCache == null)
            {
                foreach (var item in _context.Products)
                {
                    productList.Add(item);
                }
                if (productList.Count > 100) {
                    await _distributedCache.SetAsync("allproducts", Encoding.UTF8.GetBytes(System.Text.Json.JsonSerializer.Serialize(productList)));
                }
                return Ok(productList);


            }
            var result = System.Text.Json.JsonSerializer.Deserialize<List<Products>>(productFromCache);

            return Ok(result);
        }

    }
}
