5. hafta
Restful api oluşturun

Daha önce oluşturduğunuz apilerden birini kullanın
tek bir endpoint ten arama, filtreleme ve sıralama işlemlerini yaptırın.
apiye ait basit ayarları in memory cache de tutan ve kullanımını sağlayan bir yapı geliştirin
endpointlerinizden en az birinde response cache mekanizmasını kullanın
distributed cache olarak redis e yazan ve okuyan bir cache yönetim servisi yazın. sorgu adedi 100 ve üzeri olursa istenilen zaman aralığında cache yazsın ve okusun



4. hafta
Restful api oluşturun

Daha önce oluşturduğunuz apilerden birini kullanın
kullanıcı işlemleri için Asp.NET Core Identity altyapısını kullanın
api de yetkilendirme işlemleri için JWT kullanın
bir tane result filter oluşturun ve her response da header a verinin oluşturulma/getirilme tarihi saati yazılsın
bonus
rol bazlı yapı tanımlayın


3. Hafta Ödev
Veritabanı

Patikadev yapısını düşünerek bir db oluşturun
eğitimler, öğrenciler,katılımcılar,eğitmenler,asistanlar, eğitimde öğrencilerin yoklamalarının ve başarı durumlarının tutulduğu tablolar olacaktır.
veritipleri ve ilişkiler belirtilmelidir.
trigger yazın
öğrenci yoklaması girildiğinde. yoklama durumuna göre başarı durumunu hafta bazlı olarak güncelleyin.(Örn: eğitim 7 hafta olsun. ilk iki hafta derslere katıldı ise başarı oranı 2/7 nin % olarak karşılı olmalı.)
stored procedure yazın
öğrencileri eğitimlere ekleyen bir procedure olacak. öğrenci belirtilen eğitim tarihinde herhangi başka bir eğitime kayıtlı olmamalıdır.
view yazın
eğitim bazlı öğrencileri listeleyin(gruplu olarak)
Bonus
Aynı yapıyı ef code first olarak sadece model bazında oluşturun



2. Hafta Ödev
Restful Api Geliştirin

ilk hafta geliştirdiğiniz api kullanılacaktır.
Rest standartlarına uygun olmalıdır.
solid prensiplerine uyulmalıdır.
Fake servisler geliştirilerek Dependency injection kullanılmalıdır.
api nizde kullaınılmak üzere extension geliştirin.
Projede swagger implementasyonu gerçekleştirilmelidir.
global loglama yapan bir middleware(sadece actiona girildi gibi çok basit düzeyde)
Bonus
Fake bir kullanıcı giriş sistemi yapın ve custom bir attribute ile bunu kontrol edin.
global exception middleware i oluşturun


1. Hafta Ödev
Restful Api Geliştirin

Rest standartlarna uygun olmalıdır.
GET,POST,PUT,DELETE,PATCH methodları kullanılmalıdır.
Http status code standartlarına uyulmalıdır. Error Handler ile 500, 400, 404, 200, 201 hatalarının standart format ile verilmesi
Modellerde zorunlu alanların kontrolü yapılmalıdır.
Routing kullanılmalıdır.
Model binding işlemleri hem body den hemde query den yapılacak şekilde örneklendirilmelidir. Bonus:
Standart crud işlemlerine ek olarak, listeleme ve sıralama işlevleride eklenmelidir. Örn: /api/products/list?name=abc
