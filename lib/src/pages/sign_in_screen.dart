import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/custom_cpfcnpj_field.dart';
import 'package:flutter_application_1/src/components/custom_text_field.dart';
import 'package:flutter_application_1/src/base/base_screen.dart';
import 'package:flutter_application_1/src/pages/sign_up_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool lembreMe = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 100)),

                    // Texto
                    Text.rich(
                      TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                        ),
                        children: [
                          TextSpan(
                            text: 'Entre aqui',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF1F41BB),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Padding(padding: EdgeInsets.only(bottom: 20)),
                    Text.rich(
                      TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                        ),
                        children: [
                          TextSpan(
                            text: 'Bem-vindo de volta, você \nfez falta!',
                            style: GoogleFonts.poppins(
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w600,
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
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // CPF / CNPJ
                    const CustomCpfCnpjField(
                      icon: Icons.person,
                      label: 'CPF / CNPJ',
                    ),

                    // Senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),

                    // Checkbox relembre-me e Botão esqueceu senha
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.6,
                          child: Checkbox(
                            value: lembreMe,
                            onChanged: (value) {
                              setState(() {
                                lembreMe = value ?? false;
                              });
                            },
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ),
                          ),
                        ),
                        Text(
                          'Relembre-me',
                          style: GoogleFonts.poppins(fontSize: 10),
                        ),

                        // Espaçamento
                        const Spacer(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Esqueceu sua senha?',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1F41BB),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Botão Entrar
                    SizedBox(
                      height: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF1F41BB).withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
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
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (c) {
                              return const BaseScreen();
                            }));
                          },
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: GoogleFonts.poppins(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const Padding(padding: EdgeInsets.only(top: 10)),

                    // Divisor
                    const Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 214, 214, 213),
                              thickness: 2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 214, 214, 213),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),

                    // Criar nova conta
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
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) {
                                return const SignUpScreen();
                              }),
                            );
                          },
                          child: Center(
                            child: Text(
                              'Criar nova conta',
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
        ),
      ),
    );
  }
}
