import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_opcional_field.dart';
import 'package:flutter_application_1/src/pages/sign_in_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignRegisterScreen extends StatefulWidget {
  const SignRegisterScreen({Key? key}) : super(key: key);

  @override
  State<SignRegisterScreen> createState() => _SignRegisterScreenState();
}

class _SignRegisterScreenState extends State<SignRegisterScreen> {
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
                  crossAxisAlignment:
                      CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Parabéns 🎉✨',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: const Color(0xFF1F41BB),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Cadastro concluído aproveite e desfrute de\n nossos serviços',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 50),
                    const CustomOpcionalField(
                      label: 'Indicação (Opcional)',
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
                          'Continuar',
                          style: GoogleFonts.poppins(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
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
