import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home/home.dart';
import 'package:flutter_application_1/src/pages/page_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final _picker = ImagePicker();
  String urlImage = 'assets/images/person.png';
  final padding = const EdgeInsets.symmetric(horizontal: 15);

  @override
  Widget build(BuildContext context) {
    const name = 'Lions Software LTDA';
    const cpfcnpj = '33.423.378/0001-57';

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: ClipRRect(
          child: Material(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    buildHeader(
                      name: name,
                      cpfcnpj: cpfcnpj,
                      onClicked: () => chooseImage(context),
                      context: context,
                    ),
                    Container(
                      padding: padding,
                      child: Column(
                        children: [
                          buildMenuItem(
                            text: 'Calendário',
                            icon: Icons.calendar_month,
                            onClicked: () => selectedItem(context, 0),
                          ),
                          buildMenuItem(
                            text: 'Planos',
                            icon: Icons.workspace_premium,
                            onClicked: () => selectedItem(context, 1),
                          ),
                          buildMenuItem(
                            text: 'Terminais',
                            icon: Icons.account_balance_wallet_outlined,
                            onClicked: () => selectedItem(context, 2),
                          ),
                          buildMenuItem(
                            text: 'Dados cadastrais',
                            icon: Icons.people_alt_outlined,
                            onClicked: () => selectedItem(context, 3),
                          ),
                          buildMenuItem(
                            text: 'Suporte',
                            icon: Icons.phone_outlined,
                            onClicked: () => selectedItem(context, 4),
                          ),
                          const SizedBox(height: 20),
                          buildMenuItem(
                            text: 'Sair',
                            icon: Icons.logout,
                            onClicked: () => selectedItem(context, 5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void chooseImage(BuildContext context) async {
    final image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        urlImage = image.path;
      });
      // Implemente aqui a lógica de upload da imagem
    }
  }

  Widget buildHeader({
    required String name,
    required String cpfcnpj,
    required VoidCallback onClicked,
    required BuildContext context,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 50)),
          child: Row(
            children: [
              const SizedBox(width: 5),
              CircleAvatar(radius: 25, backgroundImage: AssetImage(urlImage)),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1B2D),
                    ),
                  ),
                  Text(
                    cpfcnpj,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF535763),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Color(0xFF535763);

    return Ink(
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ),
        onTap: onClicked,
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SignPageScreen(),
        ));
        break;
    }
  }
}
