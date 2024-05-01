import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOpcionalField extends StatelessWidget {
  final String label;

  const CustomOpcionalField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF1F4FF).withOpacity(0.9),
          borderRadius: BorderRadius.circular(11),
        ),
        child: TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: const Color(0xFF626262)),
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF1F41BB), width: 2.0),
              borderRadius: BorderRadius.circular(11),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF1F41BB), width: 2.0),
              borderRadius: BorderRadius.circular(11),
            ),
          ),
        ),
      ),
    );
  }
}
