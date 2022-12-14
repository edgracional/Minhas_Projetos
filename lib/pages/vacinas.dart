import 'package:flutter/material.dart';
import 'package:minhas_vacinas/app/modules/dados/dados_page.dart';
import 'package:minhas_vacinas/models/vacin.dart';
import 'package:minhas_vacinas/pages/vacinas_cadastro.dart';
import 'package:minhas_vacinas/pages/vacinas_details.dart';
import 'package:minhas_vacinas/repositories/vacinas_reposit.dart';
import 'package:minhas_vacinas/widges/vacina_image_card.dart';
import 'package:minhas_vacinas/widges/vacinas_grid_view.dart';

class Vacinas extends StatefulWidget {
  const Vacinas({Key? key, required id}) : super(key: key);

  @override
  State<Vacinas> createState() => _VacinasState();

  static doc(id) {}
}

class _VacinasState extends State<Vacinas> {
  late final List<Vacin> vacinaList;

  @override
  void initState() {
    super.initState();
    vacinaList = VacinasReposit().vacina;
  }

  openDetails(Vacin vacin) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => VacinaDetailsPage(vacin: vacin)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VacinasGridView(
        vacin: List.from(
          vacinaList.map(
            (Vacin vacin) => VacinaImageCard(
              image: vacin.image,
              onTap: () => openDetails(vacin),
              vacin: (vacin),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddVacinaPage(
                id: null,
              ),
            ),
          );
        },
        backgroundColor: Colors.blueGrey,
        extendedPadding: const EdgeInsets.all(50),
        label: const Text(
          "Registrar Dose",
          style: TextStyle(
            letterSpacing: 0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DadosPage(),
              ),
            );
          },
          child: const Text('Dados Covid')),
    );
  }
}
