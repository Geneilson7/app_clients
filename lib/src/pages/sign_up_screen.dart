import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_contact_field.dart';
import 'package:flutter_application_1/src/components/custom_cpfcnpj_field.dart';
import 'package:flutter_application_1/src/components/custom_email_field.dart';
import 'package:flutter_application_1/src/components/custom_name_field.dart';
import 'package:flutter_application_1/src/components/custom_text_field.dart';
import 'package:flutter_application_1/src/pages/sign_in_screen.dart';
import 'package:flutter_application_1/src/pages/sign_prox_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //Texto
                        Text.rich(
                          TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                            ),
                            children: [
                              TextSpan(
                                text: 'Criar uma conta',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF1F41BB),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 10)),
                        Text.rich(
                          TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Crie uma conta para poder explorar todos os\n recurso existentes',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF000000),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 20)),
                        Text.rich(
                          TextSpan(
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Passo 1 de 2',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF8F8F8F),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  // Formulario
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomCpfCnpjField(
                          icon: Icons.business,
                          label: 'CPF / CNPJ',
                        ),
                        const CustomNameField(
                          label: 'Nome / Razão',
                        ),
                        const CustomEmailField(
                          label: 'E-mail',
                        ),
                        const CustomContactField(
                          label: 'Whatsapp / Contato',
                        ),
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Senha',
                        ),
                        SizedBox(
                          height: 50,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xFF1F41BB).withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF1F41BB),
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (d) {
                                    return const SignProxScreen();
                                  }),
                                );
                              },
                              child: Center(
                                child: Text(
                                  'Próximo',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 20)),
                        SizedBox(
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromRGBO(0, 0, 0, 0.25)
                                      .withOpacity(0.2),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xFF494949),
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
                              child: Center(
                                child: Text(
                                  'Já tenho uma conta',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
            ],
          ),
        ),
      ),
    );
  }
}
