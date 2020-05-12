import 'package:covid19_model/src/utils/colors.dart';
import 'package:covid19_model/src/utils/custom_icons.dart';
import 'package:covid19_model/src/widgets/appBar.dart';
import 'package:covid19_model/src/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(tap: () {}, iconButton: null),
        body: Container(
            child: SingleChildScrollView(
                          child: Column(
                children: <Widget>[
                  Container(
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Column(
                      children: <Widget>[
                        _buildHeaderCard('Contagiados'),
                        SizedBox(height: 25),
                        _buildBodyCard(context),
                        SizedBox(height: 15),
                        CustomBarChart(),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            _buildMetrics('Ultima semana', 3.5),
                            _buildMetrics('Indice de Recuperados', 20.0)
                          ],
                        ),
                        SizedBox(height: 20),
                        _buildHeaderCard('Mapa del Ecuador'),
                    Image(image: AssetImage("assets/img/country.png"),height: 250,)
                      ],
                    ),
                  )
                ],
              ),
            )));
  }

  Row _buildHeaderCard(String title) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: textMediumColor.withOpacity(0.6),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          Icon(CustomIcon.more, color: textMediumColor.withOpacity(0.6), size: 15)
        ],
      );

  Column _buildBodyCard(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "547",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .copyWith(color: primaryColor),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "5.9% ",
                style: TextStyle(color: primaryColor),
              ),
              Icon(
                CustomIcon.increase,
                color: primaryColor,
                size: 14,
              )
            ],
          ),
          Text(
            "Datos de ministerio de salud",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: textMediumColor,
              fontSize: 16,
            ),
          ),
        ],
      );

  RichText _buildMetrics(String title, double value) => RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$value% \n",
              style: TextStyle(
                  fontSize: 25,
                  color: primaryColor,
                  fontWeight: FontWeight.w500),
            ),
            // TextSpan(),
            TextSpan(
              text: title,
              style: TextStyle(color: textMediumColor, fontSize: 12),
            ),
          ],
        ),
      );
}
