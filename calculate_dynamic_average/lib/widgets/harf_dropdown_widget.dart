import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:calculate_dynamic_average/helper/data_helper.dart';
import 'package:flutter/material.dart';

class HarfDropdownWidget extends StatefulWidget {
  HarfDropdownWidget({super.key, required this.callBack});

  Function(double x) callBack;

  @override
  State<HarfDropdownWidget> createState() => _HarfDropdownWidgetState();
}

class _HarfDropdownWidgetState extends State<HarfDropdownWidget> {
  double secilenHarf = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Constants.edge,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Constants.mainColor[100]!.withValues(alpha: 0.3),
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButton<double>(
        value: secilenHarf,
        iconEnabledColor: Constants.mainColor,
        underline: SizedBox(),
        dropdownColor: Constants.mainColor,
        items: DataHelper.letterOfAllLessons(),
        onChanged: (value) {
          setState(() {
            secilenHarf = value!;
            widget.callBack(secilenHarf);
          });
        },
      ),
    );
  }
}
