import 'package:flutter/material.dart';
import 'package:shivam_flutter/constants/colors.dart';
import 'package:shivam_flutter/constants/text_styles.dart';
import 'package:shivam_flutter/models/display_model.dart';
import 'package:shivam_flutter/views/login_views/background.dart';
import 'package:shivam_flutter/views/login_views/login_view1.dart';
import 'package:shivam_flutter/widgets/cards/display_card.dart';
// import 'package:shivam_flutter/constants/text_styles.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final diaplayItems = [
    DiaplayModel(
        'Login Screen Example-1',
        'images/img_1.png',
        BackGroundView(
          child: Loginview1(
            onSubmit: () {},
          ),
        )),
    DiaplayModel(
        'Login Screen Example-1',
        'images/img_1.png',
        BackGroundView(
          child: Loginview1(
            onSubmit: () {},
          ),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColor.darkblue,
      body: GridView.builder(
        padding: const EdgeInsets.all(40),
        itemCount: diaplayItems.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 50,
          crossAxisSpacing: 50,
          childAspectRatio: .9,
          maxCrossAxisExtent: 400,
        ),
        itemBuilder: (context, index) {
          DiaplayModel item = diaplayItems[index];
          return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: ((context) => item.widget))),
            child: DisplayCard(
              radius: 20,
              backGroundColor: SColor.darkblue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      item.title,
                      style: STStyle.headline3
                          .copyWith(fontWeight: FontWeight.w100),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
