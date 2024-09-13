import 'package:flutter/material.dart';

import '../../../../../../core/utils/color_extenstion.dart';
import '../../../../../../core/utils/styles.dart';
import 'custom_elevated_button.dart';

class UpPartOfAccountViewBody extends StatelessWidget {
  const UpPartOfAccountViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Will Newman',
                          style: Styles.TextStyle24,
                        ),
                        Text(
                          'Constantly travelling and keeping up to date with business related books.',
                          style: Styles.TextStyle12.copyWith(
                              color: TColor.subTitle),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  SizedBox(
                    width: constraints.maxWidth * 0.25,
                    height: constraints.maxWidth * 0.25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/brooke-cagle-Nm70URdtf3c-unsplash.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.near_me_sharp,
                    color: TColor.subTitle,
                    size: constraints.maxWidth * 0.04,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      ' Newcastle - Australia',
                      style: Styles.TextStyle11.copyWith(
                        color: TColor.subTitle,
                        fontSize: constraints.maxWidth * 0.03,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CustomElevatedButtonStyled(
                    title: 'EditProfile',
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                ],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '21',
                        style:
                            Styles.TextStyle30.copyWith(color: TColor.subTitle),
                      ),
                      Text(
                        'Books',
                        style:
                            Styles.TextStyle12.copyWith(color: TColor.subTitle),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: constraints.maxWidth * 0.1,
                  ),
                  Column(
                    children: [
                      Text(
                        '5',
                        style:
                            Styles.TextStyle30.copyWith(color: TColor.subTitle),
                      ),
                      Text(
                        'Reviews',
                        style:
                            Styles.TextStyle12.copyWith(color: TColor.subTitle),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
