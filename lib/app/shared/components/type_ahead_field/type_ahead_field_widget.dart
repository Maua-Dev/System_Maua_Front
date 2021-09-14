import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class TypeAheadFieldWidget extends StatelessWidget {
  final String? titulo;
  final List<String> list;
  final String? value;
  final void Function(String value)? onChanged;
  final void Function()? onSuggestionSelected;
  const TypeAheadFieldWidget({
    Key? key,
    this.titulo,
    required this.list,
    this.value,
    this.onChanged,
    this.onSuggestionSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: value);
    return TypeAheadField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          labelText: titulo,
          labelStyle: TextStyle(
            fontSize: 22,
          ),
          suffixIcon:
              IconButton(onPressed: controller.clear, icon: Icon(Icons.close)),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          border: OutlineInputBorder(),
        ),
      ),
      suggestionsCallback: (pattern) {
        return list
            .where((value) =>
                value.toLowerCase().startsWith(pattern.toLowerCase()))
            .take(10);
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion,
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
        if (onSuggestionSelected != null) {
          onSuggestionSelected!();
        }
      },
    );
  }
}
