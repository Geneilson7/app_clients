import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/drawer.dart';
import 'package:flutter_application_1/src/pages/pagamentos.dart';
import 'package:flutter_application_1/src/pages/planos.dart';
import 'package:flutter_application_1/src/pages/teminais.dart';
import 'package:flutter_application_1/src/widget/buttonhome.dart';
import 'package:flutter_application_1/src/widget/cardempresa.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/src/home/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar
      appBar: const MyAppBar(),

      // Drawer
      drawer: const MyDrawer(),

      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text(
                  'Bem-vindo, Lions Software Ltda 👋',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF404046),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Empresas',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF404046),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CardEmpresa(
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonFaturas(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Pagamentos(),
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonPlanos(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Planos(),
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonTerminals(onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Terminais(),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
