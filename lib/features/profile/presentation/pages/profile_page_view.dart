import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unimap/core/utility/border_radius/custom_border_radius.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profil",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Image(
                image: AssetImage(
                  "assets/unec.png",
                ),
                width: 150,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Azerbaijan State University of Economics",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/location-outline.svg",
                  width: 25,
                ),
                const Text("Baku, Hasan Bay Zardabi 105"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: CustomBorderRadius.r12(),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.black.withOpacity(0.07))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Fakültə sayı",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          "5",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Tələbə sayı",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          "8721",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "İzləyici sayı",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          "4221",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Statistika",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            ListTile(
              title: Row(
                children: [
                  SvgPicture.asset(
                    "assets/thumbs-up-outline.svg",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Məmnun tələbə sayı"),
                ],
              ),
              trailing: const Text("7822"),
            ),
            ListTile(
              title: Row(
                children: [
                  SvgPicture.asset(
                    "assets/stats-chart-outline.svg",
                    width: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("QS Dünya Sıralaması"),
                ],
              ),
              trailing: const Text("560-700"),
            ),
          ],
        ),
      ),
    );
  }
}
