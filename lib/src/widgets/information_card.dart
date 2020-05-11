import 'package:covid19_model/src/utils/colors.dart';
import 'package:covid19_model/src/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationCard extends StatelessWidget {
  final String title;
  final int value;
  final Color iconColor;
  final Function tap;
  final IconData icon;

  const InformationCard({
    this.title,
    this.value,
    this.iconColor,
    this.tap,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: tap,
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: iconColor.withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(icon,size: 18,color: iconColor,)
                      ),
                      SizedBox(width: 7),
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey,fontSize: 12),
                      )
              ],
            ),
            Container(
              height: 100,
              child: Row(         
                children: <Widget>[
                   Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(color: textColor),
                              children: [
                                TextSpan(
                                  text: "$value \n",
                                  style:
                                      Theme.of(context).textTheme.headline6.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                ),
                                TextSpan(
                                  text: "Personas",
                                  style: TextStyle(
                                    fontSize: 11,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: CustomLineChart())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
