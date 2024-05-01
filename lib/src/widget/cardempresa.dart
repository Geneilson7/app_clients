import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardEmpresa extends StatelessWidget {
  final VoidCallback onTap;

  const CardEmpresa({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 105,
        child: Card(
          elevation: 3,
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.04),
          color: const Color(0xFF1F41BB),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: const EdgeInsets.only(top: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Color(0xFFFFFFFF),
                      size: 60,
                    ),
                    const SizedBox(width: 16),

                    // Card
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mercadinho sitemas'.toUpperCase(),
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),
                          Text(
                            '33.623.378/0001-57',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),

                          Text(
                            'R\$ 29,90 mensais',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFFFFFFFF),
                            ),
                          ),

                          Row(
                            children: [
                              const Icon(
                                Icons.watch_later,
                                color: Color(0xFFFFFFFF),
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Licenciado até 01/01/2023 à 01/02/2023',
                                style: GoogleFonts.poppins(
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFFFFFFFF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}