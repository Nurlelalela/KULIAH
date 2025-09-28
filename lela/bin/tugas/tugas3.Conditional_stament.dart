import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  stdout.write("Masukkan skor Anda (0 - 100): ");
  String? input = stdin.readLineSync();

  // Cek jika input null atau tidak bisa dikonversi menjadi angka
  if (input == null || int.tryParse(input) == null) {
    print("Error: Input harus berupa angka!");
    return;
  }

  int skor = int.parse(input);

  // Validasi rentang nilai
  if (skor < 0 || skor > 100) {
    print("Error: Skor harus berada dalam rentang 0 - 100!");
    return;
  }

  // Tentukan grade berdasarkan skor (menggunakan if-else)
  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Tampilkan hasil
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");
}
