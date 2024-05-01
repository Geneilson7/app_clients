import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_opcional_field.dart';
import 'package:flutter_application_1/src/pages/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Ativar extends StatefulWidget {
  const Ativar({Key? key}) : super(key: key);

  @override
  State<Ativar> createState() => _AtivarState();
}

class _AtivarState extends State<Ativar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF1F41BB),
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Digite a chave',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: const Color(0xFF1F41BB),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Para ativar o terminal abra o sistema em seu computador vá em Administrativo > Registrar e digite a chave no campo abaixo.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const CustomOpcionalField(
                      label: 'Chave ex: CDCE-CD-CG-I-CDFD',
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1F41BB),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (c) {
                            return const SignInScreen();
                          }));
                        },
                        child: Text(
                          'Gerar',
                          style: GoogleFonts.poppins(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          'Contra senha:',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1F41BB),
                          ),
                        ),
                        Text(
                          'CDCE-CD-CG-I-CDFD',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF626262),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.file_copy,
                            color: Color(0xFF1F41BB),
                            size: 25,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/logo.png',
              height: 120,
              width: 120,
            ),
          ),
        ],
      ),
    );
  }
}
