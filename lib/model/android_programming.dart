class AndroidProgramming{
  String nama;
  String mentor;
  String thumbnail;
  List<String> videoMateri;
  List<String> judulVideoMateri;

  AndroidProgramming({
    required this.nama,
    required this.thumbnail,
    required this.mentor,
    required this.judulVideoMateri,
    required this.videoMateri
  });
}

var androidProgrammingList = [

  AndroidProgramming(
      nama: 'Kotlin Dasar',
      mentor: 'Sekolah Koding',
      thumbnail: 'assets/images/Kotlin.png',
      judulVideoMateri: [
        'Pendahuluan Kotlin',
        'Setup JDK dan Intellej IDEA',
        'Hello World',
        'Perbedaan Val dan var',
        'Aturan Nama Variable',
        'Deklarasi Tipe Data',
        'String',
        'Number',
        'Convert Tipe Data',
        'Mengenal Karakter',
        'Array',
        'Metode Array',
        'Fungsi Main',
        'Komentar',
        'Tipe Data Boolean',
        'Kondisi If dan Else',
        'Else If dan Syarat Tambahan',
        'Latihan Pengkondisian',
        'Operator Tidak Sama Dengan',
        'Operator dan Beberapa Syarat',
        'When Untuk Banyak Kondisi',
        'Mengenal Pengulangan While',
        'Perulangan Do While',
        'For Loop',
        'Latihan Menghitung Tambang',
        'Latihan Deteksi Asal Negara'
      ],
      videoMateri: [
        '','','','','','','','','','','','','','','','','','','','','','','','','','',
      ]
  ),

  AndroidProgramming(
      nama: 'Androis Pemula',
      mentor: 'Sekolah Koding',
      thumbnail: 'assets/images/android.png',
      judulVideoMateri: [
        'Pendahuluan Android',
        'Install dan Project Pertama',
        'Menjalankan Virtual Device',
        'Menjalankan di Device Langsung',
        'Overview Project Android',
        'Menambahkan Button dan Action',
        'Mengenal Linear Layout',
        'Extract Nilai String',
        'Mengambil Text Berdasarkan Input',
        'Memasukkan Gambar',
        'Mengubah Gambar Jadi Dinamis',
        'Mengganti Syntetic Kotlin dengan Data Binding'
      ],
      videoMateri: [
        'https://www.youtube.com/watch?v=fD4G7kOebHA',
        'https://www.youtube.com/watch?v=IzgRIw0BrDY',
        'https://www.youtube.com/watch?v=Eq00JpYw2IA',
        'https://www.youtube.com/watch?v=oEw2J4yMSx0',
        'https://www.youtube.com/watch?v=lxTJJCAwGvQ',
        'https://www.youtube.com/watch?v=76w0LeQvank',
        'https://www.youtube.com/watch?v=SI012u-hlGI',
        'https://www.youtube.com/watch?v=2pQGRUFjE1s',
        'https://www.youtube.com/watch?v=MT7f6x1NeWg',
        'https://www.youtube.com/watch?v=NrF3a0XFjck',
        'https://www.youtube.com/watch?v=ZNDrMc_fYuo',
        'https://www.youtube.com/watch?v=5_0xVjM5z9E'
      ]
  ),



];