# Tugas 7 - Flutter
## Aghniya Zhafira - 2106654164

## Menjawab Pertanyaan
### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
- Stateless widget adalah widget statis dimana seluruh konfigurasi yang dimuat didalamnya telah diinisiasi sejak awal. Dapat dikatakan bahwa stateless widget merupakan widget yang tidak dapat dan tidak akan dirubah. Pada stateless widget tidak dapat menggunakan fungsi setState() karena nantinya akan menimbulkan error. 
- Stateful widget berlaku sebaliknya dimana sifatnya adalah dinamis, sehingga widget ini dapat diperbaharui kapanpun dibutuhkan berdasarkan user actions atau ketika terjadinya perubahan data.

## 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- Scaffold – Mengimplementasikan material desain dasar untuk visual struktur layout 
- AppBar – Membuat bar di bagian atas screen. 
- Text - Untuk menuliskan sesuatu di screen. 
- Container – untuk menampung widget. 
- Center – untuk memfokuskan widget yang ada jadi ditengah screen. 
- FloatingActionButton - Membuat sebuah tombol.

## 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() berperan untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut. Pada program ini setState() akan mempengaruhi perubahan untuk _counter

## 4.  Jelaskan perbedaan antara const dengan final
final dan const merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable.
- __const__ mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai
- __final__ tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Membuat variable baru yaitu _TeksMuncul
2. Membuat fungsi _decrementCounter  dalam class _MyHomePageState
3. Mendefinikan fungsi _decrementCounter. Jadi tiap fungsi ini dipanggil akan decrement _counter 
4. Membuat fungsi _checkState untuk cek value dari _counter. Untuk update variable message dan warnanya.
5. Menambahkan tombol baru yaitu FloatingActionButton pada children dengan extend container dan mengatur posisinya dengan crossAxisAlignment: CrossAxisAlignment.end.
6. Mengatur action yang terjadi saat tombolnya dipencet pada onPressed dengan memanggil fungsi _incrementCounter / _decrementCounter
7. add-commit-push ke repositori di github


# Tugas 9 - Flutter
## Aghniya Zhafira - 2106654164

1.  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Kita dapat mengambil data json tanpa membuat model terlebih dahulu dengan membuat dynamic map dari json. Cara mengakses dynamic map tersebut dengan cara mengakses key dan value seperti cara kerja dictionary dengan python. 

2.  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
- ListTile: row yang menampung teks sebagai leading dan trailing
- Checkbox: widget yang berfungsi untuk membuat checkbox
- TextButton: widget yang berfungsi untuk membuat button
- FutureBuilder: widget yang berfungsi untuk menampilkan data yang diambil dari API


3. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
- Pertama, membuat app flutter
- Menyiapkan data json (pastikan seluruh tipe data telah sesuai)
- Membuat model.dart pada folder lib. untuk tugas kali ini model yang dibuat adalah mywatchlist. Kelas ini nantinya akan menjadi object untuk mempermudah kita memparsing data dari file json
- Membuat fungsi yang nantinya akan mengambil data dari file json
- Menampilkan data yang telah kita dapatkan kepada user dengan widget future builder dengan membuat class statefulwidget

4.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- 


