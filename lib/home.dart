import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planning> datas = [
    Planning("Anglais", "description English", "maison", "10/12/2024"),
    Planning("Anglais1", "description English1", "maison1", "04/10/2023"),
    Planning("Anglais2", "description English2", "maison2", "10/07/2026"),
    Planning("Anglais3", "description English3", "maison3", "06/05/2024"),
    Planning("Elements1", "description English2", "maison2", "14/02/2025"),
    Planning("Elements2", "description English3", "maison3", "20/08/2024"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (appBar: AppBar(
        title: Text("Page d'Accueil"),
        elevation: 10,
        backgroundColor: Colors.cyan,
        ),
        body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, int index) {
            return PlanningWidget(planning: datas[index]);
          }
        ),
    );
  }
}
