import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/button_dialog_terminal.dart';
import 'package:flutter_application_1/src/home/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Terminais extends StatefulWidget {
  const Terminais({super.key});

  @override
  State<Terminais> createState() => _TerminaisState();
}

// Definição inicial de cores e seleção
List<Color> buttonColors = [Colors.grey, const Color(0xFF1F41BB), Colors.grey];
List<Color> textColors = [Colors.white, Colors.white, Colors.white];
List<bool> isButtonSelected = [false, false, false];

class _TerminaisState extends State<Terminais> {
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
          'Terminais',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF404046),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 0,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            tileColor: const Color(0xFF1F41BB),
                            leading: const Icon(
                              Icons.desktop_windows_outlined,
                              color: Color(0xFFFFFFFF),
                              size: 50,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3 contratados'.toString().toUpperCase(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1 disponível'.toString().toUpperCase(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Card(
                        color: const Color(0xFFFFFFFF),
                        elevation: 0,
                        child: Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                tileColor: const Color(0xFFFFFFFF),
                                leading: const Icon(
                                  Icons.check_circle,
                                  color: Color(0xFF1F41BB),
                                  size: 50,
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'meu computador'.toString().toUpperCase(),
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'mac: D1-3D-6B-4F-28-10:'
                                          .toString()
                                          .toUpperCase(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF404046)),
                                    ),
                                    Text(
                                      'Ativação online'
                                          .toString()
                                          .toUpperCase(),
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xFF404046)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                // setState(() {
                                //   selectedMaquinas =
                                //       int.tryParse(maquina['id']);
                                // });
                                showDialog(
                                  context: context,
                                  builder: (_) {
                                    return const ButtonDialogMaquina(
                                        // productId: selectedMaquinas,
                                        );
                                  },
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.more_vert,
                                color: Color(0xFFD8DEF3),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
