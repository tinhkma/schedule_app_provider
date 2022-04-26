import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';

BoxDecoration boxDecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(dp10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: dp5,
          blurRadius: dp7,
          offset: Offset(dp0, dp3),
        )
      ]
  );
}