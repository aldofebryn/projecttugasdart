import 'package:project/project.dart' as project;

void main(List<String> arguments) {
  print('Hello world: ${project.calculate()}!');

  // Buat growable list untuk menyimpan nama mahasiswa
  List<String> daftarMahasiswa = <String>[];

  // Tambahkan nama-nama mahasiswa ke list (growable, jadi bisa ditambah)
  daftarMahasiswa.add('Aldoi');
  daftarMahasiswa.add('Budi');
  daftarMahasiswa.add('Citra');
  daftarMahasiswa.add('Dewi');
  daftarMahasiswa.add('Eko');

  // Tampilkan seluruh daftar nama
  print('Daftar Nama Mahasiswa:');
  for (int i = 0; i < daftarMahasiswa.length; i++) {
    print('${i + 1}. ${daftarMahasiswa[i]}');
  }

  // Tampilkan jumlah data
}
