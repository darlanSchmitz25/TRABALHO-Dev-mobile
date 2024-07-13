import 'package:flutter/material.dart';
import 'package:imake/components/build_text_field.dart';
import 'package:imake/components/custom_app_bar.dart';
import 'package:imake/components/widgets.dart';
import 'package:imake/routes/pages.dart';
import 'package:imake/utils/font_sizes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Login',
        showBackArrow: false,
      ),
      backgroundColor: Colors.white, // Define o fundo do Scaffold como branco
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildText(
            'E-mail',
            const Color.fromARGB(255, 0, 0, 0),
            textMedium,
            FontWeight.bold,
            TextAlign.left,
            TextOverflow.clip,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: BuildTextField(
                hint: "E-mail",
                controller: email,
                inputType: TextInputType.emailAddress,
                fillColor: const Color.fromARGB(255, 76, 130, 175),
                onChange: (value) {}),
          ),
          const SizedBox(height: 20),
          buildText('Senha', const Color.fromARGB(255, 0, 0, 0), textMedium, FontWeight.bold,
              TextAlign.left, TextOverflow.clip),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: BuildTextField(
                hint: "Senha",
                controller: senha,
                inputType: TextInputType.visiblePassword,
                obscureText: true, // Torna o texto invisível
                fillColor: const Color.fromARGB(255, 76, 130, 175),
                onChange: (value) {}),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenSize.width * 0.5,
            height: screenSize.height * 0.05,
            child: MaterialButton(
              onPressed: () {
                if (email.text != "" && senha.text != "") {
                  Navigator.pushNamed(context, Pages.home);
                }
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Sem arredondamento
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 2,
                ),
              ),
              color: Colors.white, // Fundo do botão branco
              child: const Text(
                'Entrar',
                style: TextStyle(color: Color.fromARGB(255, 1, 2, 76)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
