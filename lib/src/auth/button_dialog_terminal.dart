// ignore_for_file: avoid_print, use_build_context_synchronously, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/ativa.dart';
// import 'package:flutter_application_1/src/home/home.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

class ButtonDialogMaquina extends StatelessWidget {
  // final int? productId;

  const ButtonDialogMaquina({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ações',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF404046),
                  ),
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color.fromARGB(255, 210, 207, 207),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => CadastroMaquina(
                        //       isEditMode: true,
                        //       productId: productId,
                        //     ),
                        //   ),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        elevation: 3,
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            Text(
                              'Alterar Cadastro'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF626262),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Ativar(
                              // productId: productId,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        elevation: 3,
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            Text(
                              'Ativar'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF626262),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: Text(
                                'Confirmação',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                              content: const Text(
                                  'Deseja realmente concluir a exclusão?'),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () async {
                                    // try {
                                    //   var url = Uri.parse(
                                    //       'https://camposmachine.com.br/api/beta/maquinas/cadastro');

                                    //   var response = await http.delete(url);

                                    //   print(url);
                                    //   print(response.body);

                                    //   if (response.statusCode == 200) {
                                    //     print('Produto excluído com sucesso!');
                                    //   } else {
                                    //     print(
                                    //         'Erro ao excluir o produto. Status code: ${response.statusCode}');
                                    //     print('Erro: ${response.reasonPhrase}');
                                    //   }
                                    // } catch (e) {
                                    //   print('Erro ao excluir o produto: $e');
                                    // }

                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => WillPopScope(
                                    //       onWillPop: () async {
                                    //         Navigator.pushReplacement(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 const Home(),
                                    //           ),
                                    //         );
                                    //         return false;
                                    //       },
                                    //       child: const Maquinas(),
                                    //     ),
                                    //   ),
                                    // );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    elevation: 3,
                                    backgroundColor: const Color(0xFFda2828),
                                  ),
                                  child: Text(
                                    'Sim',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    elevation: 3,
                                    backgroundColor: const Color(0xFF008000),
                                  ),
                                  child: Text(
                                    'Não',
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        elevation: 3,
                        backgroundColor: const Color(0xFFFFFFFF),
                      ),
                      child: SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            Text(
                              'Desativar'.toUpperCase(),
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF626262),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.clear),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
