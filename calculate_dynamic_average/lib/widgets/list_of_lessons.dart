import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:calculate_dynamic_average/helper/data_helper.dart';

import 'package:flutter/material.dart';

class ListOfLessons extends StatefulWidget {
  ListOfLessons({super.key, required this.whenDismiss});

  Function(int x) whenDismiss;

  @override
  State<ListOfLessons> createState() => _ListOfLessonsState();
}

class _ListOfLessonsState extends State<ListOfLessons> {
  @override
  Widget build(BuildContext context) {
    final allLessons = DataHelper.l1;
    return allLessons.length > 0
        ? ListView.builder(
          itemCount: allLessons.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                widget.whenDismiss(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    subtitle: Text(
                      'kredisi ${allLessons[index].letterValue} notu ${allLessons[index].letterValue}',
                    ),
                    title: Text(allLessons[index].lessonName),
                    leading: CircleAvatar(
                      radius: 33,
                      backgroundColor: Constants.mainColor,
                      child: Text(
                        ((allLessons[index].letterValue) *
                                (allLessons[index].creditValue))
                            .toStringAsFixed(0),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        )
        : Center(child: Text("There is no item", style: Constants.style));
  }
}
