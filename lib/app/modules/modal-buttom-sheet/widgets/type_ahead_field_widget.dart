import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:system_maua_front/app/modules/modal-buttom-sheet/models/generic_fields_model.dart';

class TypeAheadFieldWidget extends StatelessWidget {
  final String? titulo;
  final List<GenericFieldsModel> list;
  final int flex;
  final String? value;
  final void Function(String value)? onChanged;
  final void Function(int value)? onSuggestionSelected;
  const TypeAheadFieldWidget(
      {Key? key,
      this.titulo,
      this.value,
      required this.list,
      this.onChanged,
      required this.flex,
      this.onSuggestionSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController(text: value);
    return Expanded(
      flex: flex,
      child: TypeAheadField<GenericFieldsModel>(
        textFieldConfiguration: TextFieldConfiguration(
          controller: textController,
          onChanged: onChanged,
          style: TextStyle(
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: titulo,
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            suffixIcon: IconButton(
                onPressed: textController.clear, icon: Icon(Icons.close)),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            border: OutlineInputBorder(),
          ),
        ),
        suggestionsCallback: (pattern) {
          return list
              .where((value) =>
                  value.caption.toLowerCase().startsWith(pattern.toLowerCase()))
              .take(10);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(
              suggestion.caption,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          );
        },
        hideOnLoading: true,
        hideOnEmpty: true,
        hideOnError: true,
        onSuggestionSelected: (suggestion) {
          if (onSuggestionSelected != null && suggestion.id != null) {
            onSuggestionSelected!(suggestion.id!);
          }
        },
      ),
    );
  }
}
