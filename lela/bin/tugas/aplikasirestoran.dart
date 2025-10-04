import 'dart:io';

void main() {
  bool jalan = true;

  while (jalan) {
    print("=== RESTORAN SEDERHANA ===");

    // Menu makanan
    print("Menu Makanan:");
    print("1. Nasi Goreng - 20000");
    print("2. Bakso - 18000");
    print("3. Ayam Bakar - 25000");

    stdout.write("Pilih makanan (1-3): ");
    int pilihMakanan = int.parse(stdin.readLineSync()!);
    String namaMakanan = "";
    int hargaMakanan = 0;

    if (pilihMakanan == 1) {
      namaMakanan = "Nasi Goreng";
      hargaMakanan = 20000;
    } else if (pilihMakanan == 2) {
      namaMakanan = "Bakso";
      hargaMakanan = 18000;
    } else if (pilihMakanan == 3) {
      namaMakanan = "Ayam Bakar";
      hargaMakanan = 25000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Menu minuman
    print("\nMenu Minuman:");
    print("1. Es Teh - 5000");
    print("2. Jus Mangga - 10000");
    print("3. Kopi - 8000");

    stdout.write("Pilih minuman (1-3): ");
    int pilihMinuman = int.parse(stdin.readLineSync()!);
    String namaMinuman = "";
    int hargaMinuman = 0;

    if (pilihMinuman == 1) {
      namaMinuman = "Es Teh";
      hargaMinuman = 5000;
    } else if (pilihMinuman == 2) {
      namaMinuman = "Jus Mangga";
      hargaMinuman = 10000;
    } else if (pilihMinuman == 3) {
      namaMinuman = "Kopi";
      hargaMinuman = 8000;
    } else {
      print("Pilihan tidak ada!");
      continue;
    }

    // Hitung total
    int total = hargaMakanan + hargaMinuman;
    print("\nPesanan Anda:");
    print("- $namaMakanan : Rp$hargaMakanan");
    print("- $namaMinuman : Rp$hargaMinuman");
    print("Total: Rp$total");

    // Pembayaran
    stdout.write("Masukkan uang pembayaran: Rp");
    int bayar = int.parse(stdin.readLineSync()!);

    if (bayar >= total) {
      int kembali = bayar - total;
      print("Pembayaran berhasil, kembalian Rp$kembali");
    } else {
      print("Uang tidak cukup, transaksi dibatalkan.");
    }

    // Lanjut atau keluar
    stdout.write("Mau pesan lagi? (y/n): ");
    String ulang = stdin.readLineSync()!;
    if (ulang.toLowerCase() != "y") {
      jalan = false;
      print("Terima kasih sudah datang ke restoran sederhana!");
    }
  }
}