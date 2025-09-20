void main() {
  // Data karyawan
  String nama = "Suradit";
  int jamKerja = 40;
  double upahPerJam = 50000;
  bool statusTetap = true; // true = tetap, false = kontrak

  // Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Menghitung pajak berdasarkan status
  double pajak;
  if (statusTetap) {
    pajak = 0.10 * gajiKotor;
  } else {
    pajak = 0.05 * gajiKotor;
  }

  // Gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil
  print("=== Slip Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp $gajiKotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gajiBersih");
}
