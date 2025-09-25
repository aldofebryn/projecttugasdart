import 'package:project/project.dart' as project;

void main(List<String> arguments) {
  print('Hello world: ${project.calculate()}!');

  // // Buat growable list untuk menyimpan nama mahasiswa
  // List<String> daftarMahasiswa = <String>[];

  // // Tambahkan nama-nama mahasiswa ke list (growable, jadi bisa ditambah)
  // daftarMahasiswa.add('Aldoi');
  // daftarMahasiswa.add('Budi');
  // daftarMahasiswa.add('Citra');
  // daftarMahasiswa.add('Dewi');
  // daftarMahasiswa.add('Eko');

  // // Tampilkan seluruh daftar nama
  // print('Daftar Nama Mahasiswa:');
  // for (int i = 0; i < daftarMahasiswa.length; i++) {
  //   print('${i + 1}. ${daftarMahasiswa[i]}');
  // }

  // // Tampilkan jumlah data

//membuat daftar union dan intersection
 
  // Set<String> setA = {'A', 'B', 'C'};
  // Set<String> setB = {'B', 'C', 'D'};

  // Set<String> union = setA.union(setB);
  // Set<String> intersection = setA.intersection(setB);

  // print('Union: $union');
  // print('Intersection: $intersection');

 
  // // Buat Map untuk menyimpan data barang
  // Map<String, Map<String, dynamic>> daftarBarang = {};

  // // Tambahkan minimal 3 barang secara manual
  // daftarBarang['BRG001'] = {'nama': 'Laptop', 'harga': 15000000.0};
  // daftarBarang['BRG002'] = {'nama': 'Mouse', 'harga': 150000.0};
  // daftarBarang['BRG003'] = {'nama': 'Keyboard', 'harga': 500000.0};
  // daftarBarang['BRG004'] = {'nama': 'Monitor', 'harga': 3000000.0};

  // // Tampilkan seluruh data barang
  // print('Daftar Barang:');
  // daftarBarang.forEach((kode, data) {
  //   print('$kode: ${data['nama']} - Rp ${data['harga'].toStringAsFixed(0)}');
  // });

  // // Tampilkan jumlah barang
  // print('\nJumlah barang: ${daftarBarang.length}');



  // Buat closure untuk kalkulator diskon bertingkat
  Function(double) diskonCalculator = buatDiskonCalculator();

  // Demo: Panggil closure beberapa kali dengan harga contoh
  double hargaAsli = 1000000.0; // Rp 1.000.000

  print('Harga asli: Rp ${hargaAsli.toStringAsFixed(0)}');
  print('Hasil diskon bertingkat (setiap pemanggilan +5%):\n');

  // Panggil pertama
  double hasil1 = diskonCalculator(hargaAsli);
  print('Pemanggilan 1: Rp ${hasil1.toStringAsFixed(0)}');

  // Panggil kedua
  double hasil2 = diskonCalculator(hargaAsli);
  print('Pemanggilan 2: Rp ${hasil2.toStringAsFixed(0)}');

  // Panggil ketiga
  double hasil3 = diskonCalculator(hargaAsli);
  print('Pemanggilan 3: Rp ${hasil3.toStringAsFixed(0)}');

  // Panggil keempat
  double hasil4 = diskonCalculator(hargaAsli);
  print('Pemanggilan 4: Rp ${hasil4.toStringAsFixed(0)}');
}

// Function yang return closure
Function(double) buatDiskonCalculator() {
  int diskonLevel = 0; // State internal yang di-capture oleh closure

  return (double harga) {
    diskonLevel++; // Tambah level setiap dipanggil
    double diskonPersen = diskonLevel * 5.0; // Diskon bertingkat: 5%, 10%, 15%, dst.
    double hargaSetelahDiskon = harga * (1 - diskonPersen / 100); // Hitung harga diskon

    // Print diskon untuk demo (opsional, bisa dihapus)
    print('  (Diskon ${diskonPersen.toStringAsFixed(0)}%)');

    return hargaSetelahDiskon;
  };
}


