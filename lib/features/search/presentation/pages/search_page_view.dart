import 'package:flutter/material.dart';
import 'package:unimap/core/utility/custom_input_decoration.dart';
import 'package:unimap/features/main/presentation/widgets/category.dart';
import 'package:unimap/features/main/presentation/widgets/custom_text_field.dart';

class SearchPageView extends StatefulWidget {
  const SearchPageView({super.key});

  @override
  State<SearchPageView> createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  bool isSearching = false;
  @override
  void initState() {
    isSearching = false;
    super.initState();
  }

  String searchText = "";
  final universities = [
    const ListTile(
      leading: Image(
        image: AssetImage("assets/khaazar_logo.png"),
        fit: BoxFit.fill,
        width: 50,
      ),
      title: Text("Xəzər Universiteti"),
      subtitle: Text(
        "Məhsəti Gəncəvi 212",
      ),
    ),
    const ListTile(
      leading: Image(
        image: AssetImage("assets/ada_logo.png"),
        fit: BoxFit.fill,
        width: 50,
      ),
      title: Text("ADA Universiteti"),
      subtitle: Text(
        "Əhmədbəy Ağaoğlu 242",
      ),
    ),
    const ListTile(
      leading: Image(
        image: AssetImage(
          "assets/bdu_logo.jpg",
        ),
        fit: BoxFit.fill,
        width: 50,
      ),
      title: Text("Bakı Dövlət Universiteti"),
      subtitle: Text(
        "Murtuza Muxtarov 194",
      ),
    ),
    const ListTile(
      leading: Image(
        image: AssetImage("assets/unec_logo.jpg"),
        fit: BoxFit.fill,
        width: 50,
      ),
      title: Text("Azərbaycan Dövlət İqtisad Universiteti"),
      subtitle: Text(
        "Hasan Bay Zardabi 105",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Axtar",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: Colors.black, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
                onChanged: (value) {
                  setState(() {
                    searchText = value;

                    if (value == "") {
                      isSearching = false;
                      return;
                    } else {
                      isSearching = true;
                    }
                  });
                },
                decoration: CustomInputDecoration(
                    context: context, hintText: "Məs. Xəzər Universiteti"),
                context: context),
            const SizedBox(
              height: 20,
            ),
            isSearching
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: universities
                        .where((element) =>
                            element.title.toString().contains(searchText))
                        .toList()
                        .length,
                    itemBuilder: (context, index) {
                      return universities
                          .where((element) => element.title
                              .toString()
                              .toLowerCase()
                              .contains(searchText.toLowerCase()))
                          .toList()[index];
                    })
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Filter",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(color: Colors.black, fontSize: 23),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Kateqoriyalar",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.black, fontSize: 15),
                          ),
                          const Spacer(),
                          const Icon(Icons.keyboard_arrow_up)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GridView(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 16 / 12,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 0),
                        children: const [
                          CategoryItem(
                              text: "İmkanlar", icon: "options-outline"),
                          CategoryItem(text: "Kurslar", icon: "leaf-outline"),
                          CategoryItem(
                              text: "Fakültələr", icon: "school-outline"),
                          CategoryItem(
                              text: "Reytinqlər", icon: "trophy-outline"),
                          CategoryItem(
                              text: "Müqayisə", icon: "funnel-outline"),
                          CategoryItem(
                              text: "Universitetlər", icon: "business-outline"),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Müəllimlər",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.black, fontSize: 15),
                              ),
                              const Spacer(),
                              const Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                          const Divider()
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Sırala",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Colors.black, fontSize: 15),
                              ),
                              const Spacer(),
                              const Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
