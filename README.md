# Dokumentasi Aplikasi Attendy

## Deskripsi Proyek
Aplikasi **Attendy** adalah aplikasi berbasis web dan mobile yang dikembangkan menggunakan **CodeIgniter 4** untuk backend dan **Flutter** untuk frontend. Aplikasi ini dirancang untuk [deskripsikan tujuan dan fitur utama aplikasi].

## Fitur Utama
- Autentikasi pengguna menggunakan **JWT**.
- Fitur [daftar fitur lainnya, misalnya: pendaftaran, manajemen data, dll.].
- Lokalisasi menggunakan **Geolocator** pada aplikasi mobile.
- **Attendy Live** untuk memantau lokasi terkini.
- Mengakses dan mengunduh **payslip**.
- **Pengambilan jadwal cuti**.
- **To-do list** untuk manajemen tugas.
- **Call** melalui data pengguna.

## Arsitektur Proyek
- **Backend**: CodeIgniter 4
- **Frontend**: Flutter
- **Database**: [sebutkan database yang digunakan, misalnya MySQL, PostgreSQL, dll.]

## Prasyarat
Sebelum memulai, pastikan Anda memiliki:
- PHP 7.4 atau lebih tinggi.
- Composer untuk mengelola dependensi PHP.
- Flutter SDK.
- Database yang sesuai (seperti MySQL).

## Instalasi

### Backend (CodeIgniter 4)
1. Clone repositori ini:
    ```bash
   git clone [URL repositori Anda]
   cd attendy
2. Instal dependensi menggunakan Composer:
    ```bash
    composer install
3. Buat file .env dari file .env.example dan sesuaikan pengaturan database:
    ```bash
    cp .env.example .env
4. Jalankan migrasi database:
    ```bash
    php spark migrate
5. Jalankan server lokal:
    ```bash
    php spark serve
### Frontend (Flutter)
1. Buka direktori aplikasi Flutter:
    ```bash
    cd path/to/flutter/app
2. Instal dependensi:
    ```bash
    flutter pub get
3. Jalankan aplikasi Flutter:
    ```bash
    flutter run


Silakan sesuaikan bagian yang masih kosong dengan detail proyek Anda. Setelah selesai, Anda dapat menyimpan file ini sebagai `README.md` di repositori GitHub Anda!
