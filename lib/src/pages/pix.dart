import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Pix extends StatefulWidget {
  const Pix({super.key});

  @override
  State<Pix> createState() => _PixState();
}

class _PixState extends State<Pix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          iconSize: 18,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Pagamentos',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF404046),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(
              child: Card(
                color:  const Color(0xFFF1F4FF).withOpacity(0.9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: const BorderSide(color: Color(0xFF1F41BB), width: 2.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      QrImageView(
                        data: '00020101021226800014br.gov.bcb.pix2558pix.asaas.com/qr/cobv/12a9121c-6a09-47dd-a305-bc756f4721ef5204000053039865802BR5905LIONS6011Parauapebas61086851500062070503***6304DDD6',
                        version: QrVersions.auto,
                        size: 320,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Código Pix Copia e Cola',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF626262),
                        ),
                      ),
                      Text(
                        '00020101021226800014br.gov.bcb.pix2558pix.asaas.com/qr/cobv/12a9121c-6a09-47dd-a305-bc756f4721ef5204000053039865802BR5905LIONS6011Parauapebas61086851500062070503***6304DDD6',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF626262),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.file_copy,
                          color: Color(0xFF1F41BB),
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
