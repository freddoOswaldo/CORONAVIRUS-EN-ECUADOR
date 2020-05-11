import 'package:covid19_model/src/utils/colors.dart';
import 'package:covid19_model/src/utils/custom_icons.dart';
import 'package:covid19_model/src/widgets/appBar.dart';
import 'package:covid19_model/src/widgets/information_card.dart';
import 'package:covid19_model/src/widgets/recomendation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          tap: () => Navigator.pushNamed(context, 'detail'),
          iconButton: IconButton(
              icon: Icon(CustomIcon.menu, size: 17.5), onPressed: () {}),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recomendaciones",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                _buildRecomendation(),
                SizedBox(height: 30),
                _buildHelp(context),
                SizedBox(height: 20),
                _buildStatistics(),
              ],
            ),
          ),
        ));
  }

  Row _buildRecomendation() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RecommendationCard(
              img: 'assets/img/hand_wash.svg',
              text: 'Lava tus manos al llegar'),
          RecommendationCard(
              img: 'assets/img/use_mask.svg', text: 'Usa mascarilla al salir'),
          RecommendationCard(
              img: 'assets/img/desinfectante.svg',
              text: 'Limpie con desinfectante'),
        ],
      );

  Container _buildHelp(BuildContext context) => Container(
        height: 150,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .4,
                top: 20,
                right: 20,
              ),
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF6c60be),
                    Color(0xFF341b8d),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Llama al 717 para \nAyuda Medica!\n",
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                        text: "si aparece algún sintoma",
                        style: GoogleFonts.poppins().copyWith(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 12)),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 40,
              bottom: 10,
              height: 140,
              child: SvgPicture.asset("assets/img/formar.svg"),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: SvgPicture.asset("assets/img/virus.svg"),
            ),
          ],
        ),
      );

  _buildStatistics() => Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: InformationCard(
                    title: 'Casos Confirmados',
                    icon: CustomIcon.virus,
                    iconColor: Color(0xFFFF8C00),
                    value: 1345,
                    tap: () {}),
              ),
              SizedBox(width: 20),
              Expanded(
                child: InformationCard(
                    title: 'Total de Recuperados',
                    icon: CustomIcon.asistencia_sanitaria_y_medica,
                    value: 1345,
                    iconColor: Color(0xFFFF2D55),
                    tap: () {}),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: InformationCard(
                    title: 'Total de Muertos',
                    icon: CustomIcon.lapida_sepulcral,
                    iconColor: Color(0xFF5856D6),
                    value: 1345,
                    tap: () {}),
              ),
              SizedBox(width: 20),
              Expanded(
                child: InformationCard(
                    title: 'Nuevos Casos',
                    icon: CustomIcon.increase,
                    iconColor: Color(0xFF50E3C5),
                    value: 1345,
                    tap: () {}),
              ),
            ],
          )
        ],
      );


}
