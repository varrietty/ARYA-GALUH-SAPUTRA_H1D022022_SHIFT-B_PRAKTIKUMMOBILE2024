// Import library dart:math untuk operasi matematika
import 'dart:math';

// Kelas untuk representasi produk
class Product {
  // Atribut
  String name;
  double price;

  // Konstruktor
  Product(this.name, this.price);

  // Fungsi untuk menampilkan detail produk
  void displayProduct() {
    print('Product: $name, Price: \$${price.toStringAsFixed(2)}');
  }
}

// Fungsi untuk menghitung diskon produk
double calculateDiscount(Product product, double discountPercentage) {
  return product.price - (product.price * discountPercentage / 100);
}

// Fungsi async untuk memproses pembelian
Future<void> processPurchase(Product product, double discountPercentage) async {
  print('Memproses pembelian...');

  // Simulasi delay menggunakan Future.delayed
  await Future.delayed(Duration(seconds: 2));

  // Menghitung harga setelah diskon
  double discountedPrice = calculateDiscount(product, discountPercentage);
  print('Harga setelah diskon: \$${discountedPrice.toStringAsFixed(2)}');
}

void main() async {
  // Penggunaan tipe data
  String buyerName = 'Arya';
  int age = 21;
  bool isMember = true;

  // Menampilkan data pembeli
  print('Pembeli: $buyerName, Umur: $age');
  print('Keanggotaan: ${isMember ? "Anggota" : "Bukan anggota"}');

  // Membuat objek produk
  Product product = Product('Laptop', 15000.0);

  // Menggunakan struktur kontrol
  if (isMember) {
    print('Pembeli adalah anggota, mendapatkan diskon 10%.');
  } else {
    print('Pembeli bukan anggota, tidak mendapatkan diskon.');
  }

  // Menampilkan detail produk
  product.displayProduct();

  // Memproses pembelian dengan diskon
  try {
    await processPurchase(product, isMember ? 10 : 0);
    print('Pembelian berhasil diproses.');
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  // Menggunakan try-catch untuk eksepsi saat mengambil input diskon
try {
  String inputDiscount = 'abc'; // Misalnya ini input dari pengguna yang salah
  double discountPercentage = double.parse(inputDiscount); // Mencoba parsing angka dari input
  print('Diskon yang dimasukkan: $discountPercentage%');
  
  // Jika berhasil, lanjutkan perhitungan diskon
  Product product = Product('Smartphone', 5000.0);
  double discountedPrice = calculateDiscount(product, discountPercentage);
  print('Harga setelah diskon: \$${discountedPrice.toStringAsFixed(2)}');
} catch (e) {
  // Jika parsing gagal (misalnya input bukan angka), tampilkan pesan kesalahan
  print('Error: Diskon yang dimasukkan tidak valid. Silakan masukkan angka yang benar.');
}

// Menggunakan operasi matematika dari dart:math untuk simulasi angka diskon acak
double randomDiscount = Random().nextDouble() * 50; // Diskon acak antara 0-50%
print('Diskon acak yang diberikan: ${randomDiscount.toStringAsFixed(2)}%');
}