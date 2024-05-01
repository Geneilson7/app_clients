import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Planos extends StatefulWidget {
  const Planos({super.key});

  @override
  State<Planos> createState() => _PlanosState();
}

// Definição inicial de cores e seleção
List<Color> buttonColors = [Colors.white, const Color(0xFF1F41BB), Colors.white];
List<Color> textColors = [const Color(0xFF626262), Colors.white, const Color(0xFF626262)];
List<bool> isButtonSelected = [false, false, false];

class _PlanosState extends State<Planos> {
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
          'Planos',
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 3.9,
                mainAxisSpacing: 10,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // Atualiza a cor dos botões, textos e controle de seleção
                      for (int j = 0; j < 3; j++) {
                        if (j == index) {
                          // O botão clicado fica azul, texto branco e é selecionado
                          buttonColors[j] = const Color(0xFF1F41BB);
                          textColors[j] = Colors.white;
                          isButtonSelected[j] = true;
                        } else {
                          // Os outros botões ficam cinza, texto branco e não são selecionados
                          buttonColors[j] = Colors.white;
                          textColors[j] = const Color(0xFF626262);
                          isButtonSelected[j] = false;
                        }
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[index],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    elevation: 3,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 105),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                index == 0
                                    ? 'Mensal'
                                    : (index == 1 ? 'Trimestral' : 'Anual'),
                                style: TextStyle(
                                  color: textColors[index],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                index == 0
                                    ? 'R\$ 29,90'
                                    : (index == 1 ? 'R\$ 89,70' : 'R\$ 299,90'),
                                style: TextStyle(
                                  color: textColors[index],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (isButtonSelected[index])
                          const SizedBox(
                            width: 40,
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 40)),
            SizedBox(
              height: 50,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF1F41BB).withOpacity(0.2),
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
                    // Lógica de cadastro de usuário
                  },
                  child: Center(
                    child: Text(
                      'Concluir',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 250,
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
    );
  }
}
