import 'package:flutter/material.dart';
import 'package:unimap/core/utility/padding/custom_padding.dart';
import 'package:unimap/features/main/presentation/pages/main_page_view.dart';
import 'package:unimap/features/main/presentation/widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: CustomPadding.p20(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(116),
                  color: const Color(0xffF0FEFE),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15, color: Colors.black.withOpacity(0.1))
                  ]),
              child: const ClipOval(
                child: Image(
                  image: AssetImage(
                    "assets/unimap_logo.png",
                  ),
                  fit: BoxFit.contain,
                  width: 250,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "UniMap",
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.black, fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Kəşf et, müqayisə et və qərarını ver",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
            const Spacer(),
            CustomTextButton(
              onPressed: () async {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const MainPageView()),
                    (route) => false);
              },
              text: "Başlayaq",
              maxSize: true,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
