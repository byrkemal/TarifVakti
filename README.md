# 🍽 Tarif Vakti - Yemek Tarifleri Platformu

**Tarif Vakti**, kullanıcıların yemek tariflerine bakabildiği, blog yazılarını okuyabildiği, galeri görüntüleyebildiği ve yönetim paneli aracılığıyla içerik yönetimi yapabildiği **ASP.NET Web Forms** tabanlı bir web uygulamasıdır.

---

## 🚀 Teknolojiler

### Backend
- **ASP.NET Web Forms 4.7.2** – Ana web framework
- **C#** – Programlama dili
- **SQL Server** – Veritabanı

### Frontend
- **Bootstrap 5.2.3** – Modern responsive CSS framework
- **jQuery 3.4.1** – JavaScript kütüphanesi
- **Modernizr 2.8.3** – Tarayıcı uyumluluk kontrolü
- **Font Awesome & Themify Icons** – İkon kütüphaneleri

---

## 📌 Özellikler
✅ Yemek tarifleri platformu  
✅ Blog sistemi  
✅ Galeri yönetimi  
✅ Yönetim paneli (tarif/blog/galeri yönetimi)  

---

## 📂 Sayfa Yapısı

| Sayfa / Modül      | Açıklama |
|--------------------|----------|
| **Ana Sayfa**      | Son tarifler, blog yazıları ve duyurular |
| **Tarifler**       | Tüm yemek tarifleri listesi |
| **Blog**           | Yemek & mutfak konulu yazılar |
| **Galeri**         | Yemek ve etkinlik fotoğrafları |
| **İletişim**       | İletişim formu ve iletişim bilgileri |
| **Kurumsal**       | Site hakkında bilgiler |
| **Yönetim Paneli** | Tarif, blog ve galeri içerik yönetimi |

---

## 🖼 Master Page Yapısı
- `AnaSayfa.Master` – Ana sayfa şablonu
- `AltSayfa.Master` – Alt sayfa şablonu
- `Admin.Master` – Yönetim paneli şablonu

---

## ⚙️ Kurulum
1.  Projeyi klonlayın:  
      git clone https://github.com/byrkemal/TarifVakti.git
  
2.  SQL Server veritabanını içe aktarın:
      dbTarifVakti.bak dosyasını SQL Server Management Studio (SSMS) ile Restore Database kullanarak yükleyin.

3.  Web.config dosyasındaki connection string kısmını kendi veritabanı bağlantı bilgilerinize göre güncelleyin.

4.  Visual Studio ile projeyi açın

5.  TarifVakti.sln dosyasına çift tıklayın veya File → Open → Project/Solution yoluyla açın.

6.  NuGet paketlerini yükleyin
      Tools → NuGet Package Manager → Restore NuGet Packages ile gerekli bağımlılıkları yükleyin.

7.  Uygulamayı çalıştırın
      F5 tuşuna basarak veya IIS Express üzerinden projeyi başlatın.

Ekran Görüntüleri :
![WhatsApp Image 2025-08-14 at 16 02 33](https://github.com/user-attachments/assets/58810c9a-498b-4450-bba2-a0c60eb8ef1a)
![WhatsApp Image 2025-08-14 at 16 03 11](https://github.com/user-attachments/assets/aa86f9bf-8804-4e5e-a449-3509aa675aac)
![WhatsApp Image 2025-08-14 at 16 03 46](https://github.com/user-attachments/assets/6c0144e6-c2ea-42df-ad2f-35b6a0f428f6)
![WhatsApp Image 2025-08-14 at 16 04 30](https://github.com/user-attachments/assets/0d005974-83c1-452d-81d9-00e8c4d2415d)
![WhatsApp Image 2025-08-14 at 16 04 45](https://github.com/user-attachments/assets/978c010d-6b19-4569-bd90-bc17f11a255c)





