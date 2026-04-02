# Navigasi dan Route - Flutter

Aplikasi Flutter sederhana untuk tugas mata kuliah Pemrograman Mobile. Project ini dibuat untuk belajar cara kerja navigasi dan routing di Flutter.

## Screenshot

<p align="center">
  <img src="screenshots/home.png" width="200"/>
  &nbsp;&nbsp;
  <img src="screenshots/detail.png" width="200"/>
  &nbsp;&nbsp;
  <img src="screenshots/pdf.png" width="200"/>
</p>

<p align="center">
  <em>Halaman Utama &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Detail Buku &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PDF Reader</em>
</p>

## Tentang Project

Project ini awalnya berisi contoh-contoh percabangan dan perulangan (if/else, switch/case, while), tapi saya kembangkan lagi jadi aplikasi perpustakaan buku sederhana yang mendemonstrasikan cara kerja navigasi antar halaman di Flutter.

Fitur yang ada:
- Halaman utama dengan daftar buku
- Halaman detail buku
- PDF reader buat buka file buku
- Drawer menu navigasi ke halaman contoh if/else, switch/case, while/do

## Cara Kerja Navigasi

Ada dua cara navigasi yang dipakai di project ini:

**Named Route** (untuk drawer menu):
```dart
Navigator.pushNamed(context, '/if-else');
```

**MaterialPageRoute** (untuk halaman buku):
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
);
```

## Setup

### Requirement
- Flutter SDK
- Emulator / device fisik

### Jalankan Project

```bash
flutter pub get
flutter run
```

### File PDF

Taruh file PDF di folder `assets/pdf/` dengan nama berikut:
- `thinkpython2.pdf`
- `thelinuxcommandline.pdf`
- `progit.pdf`

## Library yang Dipakai

- `syncfusion_flutter_pdfviewer` — untuk menampilkan PDF

## Struktur Navigasi

```
Halaman Utama
├── (Drawer) → /if-else
├── (Drawer) → /switch-case
├── (Drawer) → /while-do
└── (Tap buku) → BookDetailPage
                      └── (Tombol Read) → PdfViewerPage
```

## Info

| | |
|---|---|
| **Nama** | Afrizal Fikri |
| **NIM** | L200230195 |
| **Mata Kuliah** | Pemrograman Mobile |
| **Tugas** | Tugas 2 Pertemuan 6 - Navigasi dan Route |

