import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import '../../medias_controller.dart';

// ignore: must_be_immutable
class ChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  var controllerMedias = Modular.get<MediasController>();

  ChipWidget({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: selected ? Icon(Icons.check_circle) : Container(),
      ),
      label: Container(
        width: MediaQuery.of(context).size.width * 0.32,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style: TextStyle(
                color: selected ? AppColors.white : AppColors.lightLetter,
                fontSize: 15),
          ),
        ),
      ),
      selectedColor: AppColors.button,
      elevation: 1.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
      selected: selected,
      onSelected: (evt) {
        print(evt);
        controllerMedias.toggleOpcao(label);
      },
    );
  }
}
