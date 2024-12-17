import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_7/constants.dart';
import 'package:modul_4_home_exercises/ui_7/widgets/line_chart.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int effectednNum;
  final Color iconColor;
  final VoidCallback press;
  const InfoCard({
    super.key,
    required this.title,
    required this.effectednNum,
    required this.iconColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return GestureDetector(
        onTap: press,
        child: Container(
          width: constrainsts.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.12),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/assets7/icons/running.svg",
                        height: 12,
                        width: 12,
                        color: iconColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(color: kTextColor),
                          children: [
                            TextSpan(
                              text: "$effectednNum \n",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            const TextSpan(
                              text: "People",
                              style: TextStyle(
                                fontSize: 12,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Expanded(
                      child: LineReportChart(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
