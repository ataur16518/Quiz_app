import 'package:flutter/material.dart';

import 'app_color.dart';
    final myButtonDecoration=BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: AppColor.mainColor, border: Border.all(
        color: AppColor.mainColor,width: 3.0,
    ),
  );
    const myInputDecoration = InputDecoration(
      border: OutlineInputBorder(),
      hintText: "Please enter your email address",
      labelText: 'Email address',
    );