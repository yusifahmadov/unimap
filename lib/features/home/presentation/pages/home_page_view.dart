import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unimap/core/utility/border_radius/custom_border_radius.dart';
import 'package:unimap/core/utility/custom_input_decoration.dart';
import 'package:unimap/features/main/presentation/widgets/category.dart';
import 'package:unimap/features/main/presentation/widgets/custom_text_field.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _discoverUniversities(context),
              const SizedBox(
                height: 40,
              ),
              _featuredUniversity(context),
              const SizedBox(
                height: 40,
              ),
              _categories(context)
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _categories(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Kateqoriyalar",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const Spacer(),
              const Text("Hamısına bax"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryItem(
                  icon: "options-outline",
                  text: "İmkanlar",
                ),
                CategoryItem(
                  icon: "leaf-outline",
                  text: "Kurslar",
                ),
                CategoryItem(
                  icon: "school",
                  text: "Fakültələr",
                  selected: true,
                ),
                CategoryItem(
                  icon: "trophy-outline",
                  text: "Reytinqlər",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 16 / 15,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: CustomBorderRadius.r12(),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          image: AssetImage("assets/50.jpg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text("Komputer elmləri"),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: CustomBorderRadius.r12(),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          image: AssetImage("assets/download.jpeg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text("Hüquq"),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: CustomBorderRadius.r12(),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          image: AssetImage("assets/medicine.jpeg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text("Tibb"),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: CustomBorderRadius.r12(),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.black.withOpacity(0.1))
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image(
                          image: AssetImage("assets/economy.jpeg"),
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Text("İqtisadiyyat"),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _featuredUniversity(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Önə çıxan universitet",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.1),
                )
              ]),
          child: GridTile(
            footer: Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Xəzər Universtieti",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(),
                        ),
                        const Row(
                          children: [
                            Text("Dövlət •"),
                            Text(" Məhsəti Gəncəvi 212"),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: CustomBorderRadius.r12(),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.black.withOpacity(0.04))
                            ]),
                        child: const Center(
                          child: Text("Kəşf et"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const Image(
                image: AssetImage("assets/khazar.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _discoverUniversities(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Kəşf et",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: CustomTextField(
                  decoration: CustomInputDecoration(
                      context: context, hintText: "Axtar"),
                  context: context),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: CustomBorderRadius.r12(),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 3,
                            spreadRadius: 0,
                            color: Colors.black.withOpacity(0.08))
                      ]),
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/options-outline.svg",
                      width: 25,
                    ),
                  ),
                ))
          ],
        ),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 285,
      leading: Row(
        children: [
          const ClipRRect(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Image(
                image: AssetImage("assets/unec.png"),
                width: 50,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "UniMap-ə xoş gəldin!",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black, fontSize: 16),
          )
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: SvgPicture.asset(
            "assets/menu-outline.svg",
            width: 35,
          ),
        )
      ],
    );
  }
}
