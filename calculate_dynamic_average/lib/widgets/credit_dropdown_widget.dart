import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:calculate_dynamic_average/helper/data_helper.dart';
import 'package:flutter/material.dart';

class CreditDropdownWidget extends StatefulWidget {
  CreditDropdownWidget({super.key, required this.callBack});
  Function(double x) callBack;

  @override
  State<CreditDropdownWidget> createState() => _CreditDropdownWidgetState();
}

class _CreditDropdownWidgetState extends State<CreditDropdownWidget> {
  double secilenKredi = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: Constants.edge,
      decoration: BoxDecoration(
        color: Constants.mainColor[100]!.withValues(alpha: 0.3),
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenKredi,
        iconEnabledColor: Constants.mainColor,
        underline: SizedBox(),
        dropdownColor: Constants.mainColor,
        items: DataHelper.creditsOfAllLessons(),

        onChanged: (value) {
          setState(() {
            secilenKredi = value!;
            widget.callBack(secilenKredi);
          });
        },
      ),
    );
  }
}
