class WebProgramming{
  String nama;
  String mentor;
  String thumbnail;
  List<String> videoMateri;
  List<String> judulVideoMateri;

  WebProgramming({
    required this.nama,
    required this.thumbnail,
    required this.mentor,
    required this.judulVideoMateri,
    required this.videoMateri
  });
}

var webProgrammingList = [
  WebProgramming(
    nama: 'HTML',
    mentor: 'Web Programming UNPAS',
    thumbnail: 'assets/images/html.jpg',
    judulVideoMateri: [
      'Pendahuluan HTML',
      'Hello World!',
      'Code Editor',
      'Tag pada HTML',
      'Tag Paragraf',
      'Heading',
      'Tag List',
      'Hyperlink',
      'Tag Image',
      'Membuat Tabel',
      'Table Merging',
      'Tag Form',
      'Tag Form Lanjutan'
    ],
    videoMateri: [
      'https://www.youtube.com/watch?v=NBZ9Ro6UKV8',
      'https://www.youtube.com/watch?v=1NicaVOCXHA',
      'https://www.youtube.com/watch?v=3sLSi9L5nWE',
      'https://www.youtube.com/watch?v=cUWBYzA6M-8',
      'https://www.youtube.com/watch?v=Dl_bIYBc9gM',
      'https://www.youtube.com/watch?v=SMetRBdIh-8',
      'https://www.youtube.com/watch?v=gLHEoeupIZs',
      'https://www.youtube.com/watch?v=QIlBOI-hTuA',
      'https://www.youtube.com/watch?v=yb_emYhY3Pc',
      'https://www.youtube.com/watch?v=7-QNafrXigs',
      'https://www.youtube.com/watch?v=qs8G2XWf7Yk',
      'https://www.youtube.com/watch?v=LQf_Jj7jbCI',
      'https://www.youtube.com/watch?v=_CNkLKU-LoE'
    ]
  ),

  WebProgramming(
      nama: 'CSS',
      mentor: 'Web Programming UNPAS',
      thumbnail: 'assets/images/css.jpg',
      judulVideoMateri: [
        'Pendahuluan CSS',
        'Anatomi CSS',
        'Penempatan CSS',
        'Font Styling',
        'Text Styling',
        'Background',
        'Selector',
        'Pseudo Class',
        'Inheritance',
        'Specificity',
      ],
      videoMateri: [
        'https://www.youtube.com/watch?v=CleFk3BZB3g',
        'https://www.youtube.com/watch?v=8lXDi2Mxp9c',
        'https://www.youtube.com/watch?v=bnnislprJro',
        'https://www.youtube.com/watch?v=nPHed3_oPvY',
        'https://www.youtube.com/watch?v=xih8giA7S3Q',
        'https://www.youtube.com/watch?v=zm-HPYS_ELU',
        'https://www.youtube.com/watch?v=0KLwWyQyMQo',
        'https://www.youtube.com/watch?v=G0gYWdIHOug',
        'https://www.youtube.com/watch?v=kY2FEA3y43E',
        'https://www.youtube.com/watch?v=yu74Y1ndd5w'
      ]
  ),

  WebProgramming(
      nama: 'Javascript',
      mentor: 'Web Programming UNPAS',
      thumbnail: 'assets/images/javascript.jpg',
      judulVideoMateri: [
        'Pendahuluan Javascript',
        'Apa itu Pemrograman?',
        'Bahasa Pemrograman',
        'Compiler VS Interpreter',
        'Kenapa Belajar JavaScript?',
        'Sejarah JavaScript',
        'Lingkungan Pengembangan Javascript',
        'Nilai dan Tipe Data',
        'Tipe Data Angka',
        'Operator Aritmatika, Penugasan dan Perbandingan',
        'Operator Logika, String, TYPEOF dan Kondisional',
        'Tipe Data String',
        'Tipe Data Boolean',
        'Variable',
        'Menulis Javascript',
        'POPUP BOX',
        'Control Flow',
        'Pengulangan While',
        'Tabel Penelusuran',
        'Pengulangan For',
        'IF ELSE',
        'Latihan Pengkondisian',
        'SWITCH',
        'Pengulangan dan Pengkondisian Bersarang',
        'Membuat Game SUWIT JAWA',
        'Intro Function',
        'Membuat Function',
        'Parameter dan Argument',
        'Refactoring',
        'Variable Scope',
        'Fungsi Rekursif',
        'Declaration dan Expression',
        'Array',
        'Manipulasi Array',
        'Slice dan Splice',
        'Foreach dan Map',
        'Filter dan FIND',
        'Program Pengelolaan Penumpang Angkot 1',
        'Program Pengelolaan Penumpang Angkot 2',
        'Intro Object',
        'Membuat Object',
        'This',
        'Latihan Object'
      ],
      videoMateri: [
        '','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''
      ]
  ),

  WebProgramming(
      nama: 'PHP',
      mentor: 'Web Programming UNPAS',
      thumbnail: 'assets/images/PHP.jpg',
      judulVideoMateri: [
        'Pendahuluan PHP',
        'Sejarah dan Karakteristik PHP',
        'Persiapan',
        'Sintaks PHP',
        'Struktur Kendali',
        'Function',
        'Array',
        'Associative Array',
        'GET dan POST',
        'Database dan MySQL',
        'PHP dan MySQL',
        'Insert dan Delete',
        'Update',
        'Searching',
        'Upload',
        'Registrasi',
        'Login',
        'Session',
        'Cookie',
        'Pagination',
        'Live Searching',
        'PDF Reporting',
        'Web Hosting dan Domain Gratis',
        'Web Hosting dan Domain Berbayar',
      ],
      videoMateri: [
        '','','','','','','','','','','','','','','','','','','','','','','',''
      ]
  ),

];