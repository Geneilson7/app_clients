import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_bairro_field.dart';
import 'package:flutter_application_1/src/components/custom_cep_field.dart';
import 'package:flutter_application_1/src/components/custom_city_field.dart';
import 'package:flutter_application_1/src/components/custom_endereco_field.dart';
import 'package:flutter_application_1/src/pages/sign_indicacao_field.dart';
import 'package:google_fonts/google_fonts.dart';

class SignProxScreen extends StatelessWidget {
  const SignProxScreen({Key? key}) : super(key: key);

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
                        // Texto
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
                                text: 'Passo 2 de 2',
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

                  // Formulário
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Campos de Cidade e UF em uma Row
                        const Row(
                          children: [
                            Expanded(
                              flex:
                                  2,
                              child: CustomCityField(
                                label: 'Cidade',
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              flex:
                                  1,
                              child: CustomCityField(
                                label: 'UF',
                              ),
                            ),
                          ],
                        ),

                        const CustomBairroField(
                          label: 'Bairro',
                        ),

                        const CustomEnderField(
                          label: 'Endereço',
                        ),

                        const CustomCepField(
                          label: 'Cep',
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
                                    return const SignRegisterScreen();
                                  }),
                                );
                              },
                              child: Center(
                                child: Text(
                                  'Registrar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
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
                  const Padding(padding: EdgeInsets.only(bottom:70)),
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
