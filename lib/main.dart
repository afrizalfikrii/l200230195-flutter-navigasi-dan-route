import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(const MyApp());
}

class Book {
  final String title;
  final String author;
  final String description;
  final String pdfAsset;
  final IconData icon;
  final Color themeColor;
  final String category;

  const Book({
    required this.title,
    required this.author,
    required this.description,
    required this.pdfAsset,
    required this.icon,
    required this.themeColor,
    required this.category,
  });
}

// Data Buku dengan Warna Solid yang Elegan (Tidak Alay)
final List<Book> bookList = [
  const Book(
    title: 'Think Python',
    author: 'Allen B. Downey',
    description:
        'Buku pengantar pemrograman Python yang cocok untuk pemula. Membahas konsep dasar programming menggunakan bahasa Python dengan pendekatan yang mudah dipahami.',
    pdfAsset: 'assets/pdf/thinkpython2.pdf',
    icon: Icons.integration_instructions_outlined,
    themeColor: Color(0xFF2B5B84), // Muted Deep Blue
    category: 'Programming',
  ),
  const Book(
    title: 'Linux Command Line',
    author: 'William Shotts',
    description:
        'Panduan lengkap untuk menguasai command line Linux. Buku ini membahas shell scripting, file management, dan berbagai tools penting di Linux.',
    pdfAsset: 'assets/pdf/thelinuxcommandline.pdf',
    icon: Icons.terminal_rounded,
    themeColor: Color(0xFF2C2C2E), // Dark Charcoal
    category: 'Operating System',
  ),
  const Book(
    title: 'Pro Git',
    author: 'Scott Chacon & Ben Straub',
    description:
        'Buku referensi utama untuk Git version control. Membahas dari dasar hingga fitur-fitur lanjutan seperti branching, merging, dan workflow kolaborasi.',
    pdfAsset: 'assets/pdf/progit.pdf',
    icon: Icons.merge_type_rounded,
    themeColor: Color(0xFFD6563F), // Soft Terracotta
    category: 'Version Control',
  ),
  const Book(
    title: 'Clean Code',
    author: 'Robert C. Martin',
    description:
        'Panduan menulis kode yang bersih, mudah dibaca, dan mudah dipelihara. Buku ini sangat populer di kalangan software developer profesional.',
    pdfAsset: 'assets/pdf/cleancode.pdf',
    icon: Icons.auto_fix_high_rounded,
    themeColor: Color(0xFF3D6B4F),
    category: 'Best Practice',
  ),
  const Book(
    title: 'The Pragmatic Programmer',
    author: 'Andrew Hunt & David Thomas',
    description:
        'Buku klasik yang membahas cara berpikir dan bekerja layaknya programmer profesional. Penuh dengan tips praktis dan filosofi pengembangan software.',
    pdfAsset: 'assets/pdf/pragmaticprogrammer.pdf',
    icon: Icons.lightbulb_outline_rounded,
    themeColor: Color(0xFF7A5230),
    category: 'Career',
  ),
  const Book(
    title: 'Introduction to Algorithms',
    author: 'Cormen, Leiserson, Rivest & Stein',
    description:
        'Buku referensi utama algoritma dan struktur data yang digunakan di kampus-kampus terkemuka dunia. Membahas topik dari sorting hingga graph algorithms.',
    pdfAsset: 'assets/pdf/introalgorithms.pdf',
    icon: Icons.account_tree_outlined,
    themeColor: Color(0xFF1A3A5C),
    category: 'Algorithm',
  ),
  const Book(
    title: 'Design Patterns',
    author: 'Gang of Four',
    description:
        'Buku pola desain software yang menjadi standar industri. Memperkenalkan 23 design pattern yang sering dipakai dalam pengembangan software berorientasi objek.',
    pdfAsset: 'assets/pdf/designpatterns.pdf',
    icon: Icons.dashboard_customize_outlined,
    themeColor: Color(0xFF5B3A6E),
    category: 'Architecture',
  ),
  const Book(
    title: 'Eloquent JavaScript',
    author: 'Marijn Haverbeke',
    description:
        'Pengantar modern untuk bahasa JavaScript dan pemrograman web. Membahas dasar bahasa, DOM, Node.js, dan berbagai konsep penting lainnya secara mendalam.',
    pdfAsset: 'assets/pdf/eloquentjavascript.pdf',
    icon: Icons.javascript_rounded,
    themeColor: Color(0xFF8A6A00),
    category: 'Web Development',
  ),
  const Book(
    title: 'Operating Systems: Three Easy Pieces',
    author: 'Remzi & Andrea Arpaci-Dusseau',
    description:
        'Buku teks sistem operasi yang membahas tiga konsep utama: virtualisasi, concurrency, dan persistence. Ditulis dengan gaya yang mudah dipahami.',
    pdfAsset: 'assets/pdf/ostep.pdf',
    icon: Icons.memory_rounded,
    themeColor: Color(0xFF2E4A3E),
    category: 'Operating System',
  ),
  const Book(
    title: 'Computer Networking: A Top-Down Approach',
    author: 'Kurose & Ross',
    description:
        'Buku jaringan komputer paling banyak digunakan di perguruan tinggi. Membahas protokol jaringan dari lapisan aplikasi hingga lapisan fisik.',
    pdfAsset: 'assets/pdf/computernetworking.pdf',
    icon: Icons.lan_outlined,
    themeColor: Color(0xFF1E4D7B),
    category: 'Networking',
  ),
];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimalist Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF9F9FB),
        primaryColor: const Color(0xFF1E1E1E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E1E1E),
          primary: const Color(0xFF1E1E1E),
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Library.'),
        '/if-else': (context) => const IfElsePage(),
        '/switch-case': (context) => const SwitchCasePage(),
        '/while-do': (context) => const WhileDoPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(context),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFFF9F9FB),
            elevation: 0,
            scrolledUnderElevation: 0.5,
            iconTheme: const IconThemeData(color: Colors.black87),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Colors.black87,
                  letterSpacing: -0.5,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _MinimalistBookCard(book: bookList[index]);
                },
                childCount: bookList.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.auto_stories_rounded, color: Colors.black87, size: 36),
                  SizedBox(height: 16),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 1, color: Colors.black12),
            const SizedBox(height: 16),
            _buildDrawerItem(context, Icons.explore_outlined, 'Discover', () => Navigator.pop(context)),
            const Padding(
               padding: EdgeInsets.only(left: 24, top: 32, bottom: 12),
               child: Text(
                 'EXAMPLES',
                 style: TextStyle(
                   fontSize: 12,
                   fontWeight: FontWeight.w700,
                   color: Colors.black45,
                   letterSpacing: 1.5,
                 ),
               ),
            ),
            _buildDrawerItem(context, Icons.code_rounded, 'If / Else', () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/if-else');
            }),
            _buildDrawerItem(context, Icons.account_tree_outlined, 'Switch / Case', () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/switch-case');
            }),
            _buildDrawerItem(context, Icons.all_inclusive_rounded, 'While / Do', () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/while-do');
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87, size: 22),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black87),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      onTap: onTap,
    );
  }
}

class _MinimalistBookCard extends StatelessWidget {
  final Book book;

  const _MinimalistBookCard({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black.withAlpha(15), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(5),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cover Icon
                Hero(
                  tag: 'cover_${book.title}',
                  child: Container(
                    width: 72,
                    height: 96,
                    decoration: BoxDecoration(
                      color: book.themeColor.withAlpha(20),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(book.icon, size: 36, color: book.themeColor),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Text Content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book.category.toUpperCase(),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: book.themeColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        book.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        book.author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                // Arrow
                Padding(
                  padding: const EdgeInsets.only(top: 36),
                  child: Icon(Icons.chevron_right_rounded, color: Colors.black.withAlpha(40)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
           icon: const Icon(Icons.arrow_back_rounded, color: Colors.black87),
           onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Center Header
            Center(
              child: Column(
                children: [
                  Hero(
                    tag: 'cover_${book.title}',
                    child: Container(
                      width: 120,
                      height: 160,
                      decoration: BoxDecoration(
                        color: book.themeColor.withAlpha(20),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                         child: Icon(book.icon, size: 64, color: book.themeColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    book.category.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: book.themeColor,
                      letterSpacing: 1.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    book.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.black87,
                      height: 1.2,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    book.author,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            // Description
            const Text(
              'About this book',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              book.description,
              style: const TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 64),
            // Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => PdfViewerPage(book: book)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: book.themeColor,
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Read Content',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class PdfViewerPage extends StatelessWidget {
  final Book book;

  const PdfViewerPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      appBar: AppBar(
        title: Text(
          book.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.black12, height: 1.0),
        ),
      ),
      body: SfPdfViewer.asset(book.pdfAsset),
    );
  }
}

// -------------------------------------------------------------
// COMPONENT PAGES (PRESERVED EXAMPLES)
// -------------------------------------------------------------

class IfElsePage extends StatefulWidget {
  const IfElsePage({super.key});
  @override
  State<IfElsePage> createState() => _IfElsePageState();
}

class _IfElsePageState extends State<IfElsePage> {
  int nilai = 0;
  String hasil = "";

  void cekNilai() {
    setState(() {
      if (nilai >= 0 && nilai <= 20) {
        hasil = "Nilai E \n Anda tidak lulus";
      } else if (nilai >= 20 && nilai <= 35) {
        hasil = "Nilai D \n Anda tidak lulus";
      } else if (nilai >= 35 && nilai <= 45) {
        hasil = "Nilai C \n Anda lulus dengan nilai minimal";
      } else if (nilai >= 45 && nilai <= 60) {
        hasil = "Nilai BC \n Anda lulus";
      } else if (nilai >= 60 && nilai <= 70) {
        hasil = "Nilai B \n Anda lulus";
      } else if (nilai >= 70 && nilai <= 80) {
        hasil = "Nilai AB \n Anda lulus";
      } else if (nilai >= 80 && nilai <= 100) {
        hasil = "Nilai A \n Anda lulus";
      } else {
        hasil = "Nilai tidak valid";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("If / Else", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.black12, height: 1.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Masukkan Nilai (0-100)",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => nilai = int.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 52,
              child: ElevatedButton(
                onPressed: cekNilai,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E1E1E),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text("Cek Hasil", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Hasil: \n$hasil",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchCasePage extends StatefulWidget {
  const SwitchCasePage({super.key});
  @override
  State<SwitchCasePage> createState() => _SwitchCasePageState();
}

class _SwitchCasePageState extends State<SwitchCasePage> {
  int hari = 1;
  String namaHari = "";

  void cekHari() {
    setState(() {
      switch (hari) {
        case 1:
          namaHari = "Senin";
          break;
        case 2:
          namaHari = "Selasa";
          break;
        case 3:
          namaHari = "Rabu";
          break;
        case 4:
          namaHari = "Kamis";
          break;
        case 5:
          namaHari = "Jumat";
          break;
        case 6:
          namaHari = "Sabtu";
          break;
        case 7:
          namaHari = "Minggu";
          break;
        default:
          namaHari = "Hari tidak valid";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch / Case", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.black12, height: 1.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Masukkan Angka Hari (1-7)",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => hari = int.tryParse(value) ?? 0,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 52,
              child: ElevatedButton(
                onPressed: cekHari,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E1E1E),
                   elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text("Cek Hari", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 32),
            Container(
               padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Nama Hari: \n$namaHari",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhileDoPage extends StatefulWidget {
  const WhileDoPage({super.key});
  @override
  State<WhileDoPage> createState() => _WhileDoPageState();
}

class _WhileDoPageState extends State<WhileDoPage> {
  List<int> angka = [];
  int minVal = 1;
  int maxVal = 10;
  int stepVal = 1;

  void jalankanLoop() {
    setState(() {
      angka.clear();
      int i = minVal;
      if (stepVal <= 0) {
        return;
      }
      while (i <= maxVal) {
        angka.add(i);
        i += stepVal;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("While / Do", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.black12, height: 1.0),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Min",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => minVal = int.tryParse(value) ?? 0,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Max",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => maxVal = int.tryParse(value) ?? 0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: "Step",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) => stepVal = int.tryParse(value) ?? 1,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 52,
              child: ElevatedButton(
                onPressed: jalankanLoop,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E1E1E),
                   elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text("Jalankan Loop", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
            const SizedBox(height: 32),
            if (angka.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Hasil Perulangan:",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: angka
                          .map((n) => Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F0F0),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(n.toString(), style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
