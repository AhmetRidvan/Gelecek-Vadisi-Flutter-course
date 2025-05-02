import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:calculate_dynamic_average/helper/data_helper.dart';
import 'package:calculate_dynamic_average/model/lessonModel.dart';
import 'package:calculate_dynamic_average/views/show_average.dart';
import 'package:calculate_dynamic_average/widgets/credit_dropdown_widget.dart';
import 'package:calculate_dynamic_average/widgets/harf_dropdown_widget.dart';
import 'package:calculate_dynamic_average/widgets/list_of_lessons.dart';
import 'package:flutter/material.dart';

class CalculateAverage extends StatefulWidget {
  const CalculateAverage({super.key});

  @override
  State<CalculateAverage> createState() => _CalculateAverageState();
}

class _CalculateAverageState extends State<CalculateAverage> {
  final key = GlobalKey<FormState>();
  double secilenHarf = 4;
  double secilenKredi = 4;

  String secilenDersAdi = '';
  Widget buildTextFormField() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Giriş yapınız';
        } else {
          return null;
        }
      },
      onSaved: (newValue) {
        setState(() {
          secilenDersAdi = newValue!;
        });
      },
      decoration: InputDecoration(
        labelText: 'Matematik',
        labelStyle: Constants.style,

        border: OutlineInputBorder(
          borderRadius: Constants.borderRadius,
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Constants.mainColor.withValues(alpha: 0.2),
      ),
    );
  }

  Widget buildForm() {
    return Form(
      key: key,
      child: Column(
        children: [
          Padding(padding: Constants.edge2, child: buildTextFormField()),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HarfDropdownWidget(
                      callBack: (x) {
                        secilenHarf = x;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CreditDropdownWidget(
                      callBack: (x) {
                        secilenKredi = x;
                      },
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      var eklenecekDers = Lessonmodel(
                        lessonName: secilenDersAdi,
                        letterValue: secilenHarf,
                        creditValue: secilenKredi,
                      );
                      DataHelper.addItem(eklenecekDers);
                      setState(() {});
                    }
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: Constants.mainColor,
                  iconSize: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("ads");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: buildForm()),
              Expanded(
                flex: 1,
                child: ShowAverage(
                  average: DataHelper.findAverage(),
                  numberOfLessons: DataHelper.l1.length,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListOfLessons(
              whenDismiss: (x) {
                setState(() {
                  DataHelper.l1.removeAt(x);
                });
              },
            ),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Calculate average', style: Constants.style),
      ),
    );
  }
}
