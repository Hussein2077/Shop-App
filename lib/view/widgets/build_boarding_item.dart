import 'package:flutter/material.dart';

import '../../model/on_boardin_model.dart';
Widget buildBoardingItem(BoardingModel model,BuildContext context) =>
    Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
  children: [
      Expanded(
        child: Image(
          image: AssetImage(model.image,),
          width: 300,
          height: 300,
        ),
      ),
      const SizedBox(
        height: 30.0,
      ),
      Text(
        model.title,
        style:Theme.of(context).textTheme.labelLarge!.copyWith(
          fontSize: 30,
        )
      ),
      const SizedBox(
        height: 15.0,
      ),
      Text(
        model.body,
          style:Theme.of(context).textTheme.bodyLarge
      ),
      const SizedBox(
        height: 30.0,
      ),
  ],
),
    );
