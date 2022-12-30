# Tugas 8 - Flutter
## Aghniya Zhafira - 2106654164

### 1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
Widget navigator berfungsi untuk menampilkan konten ke halaman atau layar baru. Perbedaan antara Navigator.push dan Navigator.pushReplacement adalah :
- Navigator.push : merupakan bagian dari navigator sederhana, dimana Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini
- Navigator.pushReplacement : merupakan navigator tanpa history dengan mencegah saat user menekan tombol back agar tidak kembali ke halaman sebelumnya. method pushReplacement akan mengganti route yang ada di stack navigasi dengan route yang baru

### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Widget yang digunakan yaitu :
- Container = berfungsi untuk membungkus atau sebagai tempat dari child – child dari berbagai tipe. Container selayaknya sebuah kotak kosong yang tidak memiliki batasan untuk menampung widget – widget didalamnya, dan container akan menyesuaikan size height dengan child yang terkandung di dalam container tersebut.
- Form =  berfungsi untuk mempermudah dalam proses pembuatan dan memberi keamanan lebih pada aplikasi flutter seperti validasi, dan aksi lainnya yang umum terdapat pada sebuah form
- Column = Widget ini berguna untuk menampilkan tampilan menyamping seperti kategori yang sering digunakan oleh programmer untuk membangun UI
- ListTile = Merupakan widget yang berfungsi untuk menampung text sebagai leading dan trailing
- Drawer = Drawer merupakan widget pada flutter yang digunakan untuk menampilkan menu yang tersembunyi pada sisi kanan atau kiri sebuah aplikasi.

### 3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed = Menjalankan event ketika widget ditekan
- onChange = Menjalankan fungsi secara langsung tanpa enter atau tombol
- onSaved = Event yang terjadi ketika widget disimpan

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Widget Navigator bekerja seperti tumpukan layar (stack), ia menggunakan prinsip LIFO (Last-In, First-Out). Saat mengganti halaman, navigator mengatur stack of route.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat drawer.dart yang akan digunakan oleh budgetData, budgetForm, dan main.dart. Untuk mengakses drawer dart, setiap file ditambahkan syntax drawer : const DrawerApp()

2. Membuat file form dengan ketentuan input seperti pada soal yang akan dimasukkan ke budgetData

3. Membuat class Budget di form_budget 
class Budget {
  late String judul;
  late int nominal;
  late String jenisBudget;
  late DateTime tanggal;

  Budget(
      {required this.judul, required this.nominal, required this.jenisBudget, required this.tanggal});
}

4. Membuat file globals.dart dan buat variabel global budgets yang menampung list dari Budget
library counter_7.globals;
import 'package:counter_7/budgetForm.dart';

List<Budget> budgets = [];

5. dengan menggunakan ListView.builder data yang ada di globals.budgets dapat ditampilkan di budgetData////&y^u.dart
