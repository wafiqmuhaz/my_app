// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../models/stat.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import '../../../utils/utils.dart';

final List<Stat> stats = [
  // Stat(count: "43", text: "Clients"),
  Stat(count: "3+", text: "Projects"),
  Stat(count: "10", text: "Awards"),
  Stat(count: "1", text: "Years\nExperience"),
];

class PortfolioStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Container(
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: stats.map((stat) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  // Just use the helper here really
                  width: ScreenHelper.isMobile(context)
                      ? constraint.maxWidth / 2.0 - 20
                      : (constraint.maxWidth / 4.0 - 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Utilty.openUrl(
                            "https://wafiqmuhaz.showwcase.com/",
                            // "https://github.com/AgnelSelvan/AgnelSelvan.github.io/raw/main/assets/files/Agnel-Selvan.pdf",
                          );
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            stat.count,
                            style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 32.0,
                            ),
                          ),
                        ),
                      ),
                      // Text(
                      //   stat.count,
                      //   style: GoogleFonts.josefinSans(
                      //     fontWeight: FontWeight.w700,
                      //     fontSize: 32.0,
                      //   ),
                      // ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        stat.text,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: kCaptionColor,
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
