import 'package:flutter/material.dart';
import '../widgets/section.dart';

class SectionScreen extends StatefulWidget {
  @override
  _SectionScreenState createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Section(
            imagePath: 'lib/images/bg1.jpeg',
            cardTitle: 'Gratis Materi Belajar \n Menjadi Seller Handal',
            desc: 'Nggak bisa jualan?\n Jangan khawatir, Tokorame akan membimbing kamu\n hingga menjadi seller langsung dari ahlinya',
            onNext: () => _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
          ),
          Section(
            imagePath: 'lib/images/bg2.jpeg',
            cardTitle: 'Ribuan Produk\n dengan Kualitas Terbaik',
            desc: 'Tokorame menyediakan ribuan produk dengan kualitas\n terbaik dari seller terpercaya',
            onNext: () => _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
          ),
          Section(
            imagePath: 'lib/images/bg3.jpeg',
            cardTitle: 'Toko Online Unik\n Unuk Kamu Jualan',
            desc: 'Subdomain unik dan toko online profesional\n siap pakai',
            onNext: () => print('Last Section'),
          ),
        ],
      ),
    );
  }
}
