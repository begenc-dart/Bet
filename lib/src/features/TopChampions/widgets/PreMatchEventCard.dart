import 'package:bet/src/core/components/app_text.dart';
import 'package:bet/src/features/MainPage/repository/dto/match_dto.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:bet/src/utils/abuse/extensions.dart';

class PreMatchEventCard extends StatelessWidget {
  final Match match;
  final VoidCallback? onTap;

  const PreMatchEventCard({super.key, required this.match, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          color: ColorName.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Important for usage in column
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.sports_soccer,
                        size: 20,
                        color: ColorName.text,
                      ),
                      8.boxW,
                      Expanded(
                        child: AppText.s14w400BdM(
                          match.cat?.name ?? "",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          color: ColorName.text,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ColorName.bg,
                      radius: 15,
                      child: Icon(Icons.ondemand_video_rounded, size: 17),
                    ),
                    5.boxW,
                    CircleAvatar(
                      backgroundColor: ColorName.bg,
                      radius: 15,
                      child: Icon(Icons.notifications_none_outlined, size: 17),
                    ),
                    5.boxW,
                    CircleAvatar(
                      backgroundColor: ColorName.bg,
                      radius: 15,
                      child: Icon(Icons.star_border, size: 17),
                    ),
                  ],
                ),
              ],
            ),
            15.boxH,
            Row(
              children: [
                Expanded(
                  child: Text(
                    match.team1 ?? "",
                    textDirection: TextDirection.rtl,
                    maxLines: 2,
                    style: TextStyle(
                      color: ColorName.text,
                      fontSize: 16,
                      fontWeight: FontWeight.bold, // Added bold
                    ),
                  ),
                ),
                5.boxW,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorName.emeraldGreen,
                      // TODO: Use team logos if available, else placeholder icon
                      child: Icon(Icons.person, color: ColorName.white),
                    ),
                    7.boxW,
                    AppText.s16w400BdL(
                      "VS", // Changed from 0:0 to VS as per screenshot request
                      color: ColorName.text,
                      fontWeight: FontWeight.bold,
                    ),
                    7.boxW,
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorName.emeraldGreen,
                      child: Icon(Icons.person, color: ColorName.white),
                    ),
                  ],
                ),
                5.boxW,
                Expanded(
                  child: AppText.s16w400BdL(
                    match.team2 ?? "",
                    maxLines: 2,
                    color: ColorName.text,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            5.boxH,
            Center(
              child: AppText.s12w400BdS(
                "20.01.26 20:30", // Placeholder date as per screenshot, or use match data
                color: ColorName.text,
              ),
            ),
            AppText.s14w400BdM(
              "1x2",
              fontWeight: FontWeight.w500,
              color: ColorName.text,
              textAlign: TextAlign.left,
            ),
            8.boxH,
            Row(
              children: [
                if (match.options != null)
                  for (int i = 0; i < match.options!.length; i++)
                    Expanded(
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: ColorName.bg,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AppText.s12w400BdS(
                                match.options![i].optionName ?? "",
                                maxLines: 2,
                                color: ColorName.text,
                              ),
                            ),
                            AppText.s12w500LbM(
                              match.options![i].investAmount ?? "",
                              color: ColorName
                                  .text, // Changed to dark text style per screenshot
                            ),
                          ],
                        ),
                      ),
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
