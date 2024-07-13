import 'package:flutter/material.dart';
import 'package:imake/components/custom_app_bar.dart';

class PaginaSobre extends StatelessWidget {
  const PaginaSobre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'INFORMAÇÕES',
      ),
      backgroundColor: Colors.white, // Define o fundo da página como branco
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(20),
          color: Colors.grey[200], // Define o fundo do card como cinza claro
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'SOBRE:',
                  style: TextStyle(
                    fontSize: 18,
                     
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Desenvolvido por: Darlan Adriano Schmitz. Como atividade avaliativa do componente curricular de Desenvolvimento Mobile do curso de Pós Graduação: Desenvolvimento Web e Mobile - UNOESC.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
