import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constants/app_color.dart';
import '../../../../../../core/constants/methods.dart';

List<Widget> header() => [
      Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding:
                const EdgeInsets.only(left: 16, top: 8, right: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: secondaryColor.withOpacity(0.2)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 35,
                ),
                horizontalSpace(8),
                Expanded(
                  child: Text(
                    "Kaber Anyar",
                    style: GoogleFonts.righteous(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search_rounded))
              ],
            ),
          ))
    ];
