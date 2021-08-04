import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AvisosCard extends StatefulWidget {
  final String data;
  final String titulo;
  final String descricao;

  const AvisosCard(
      {Key? key,
      required this.data,
      required this.titulo,
      required this.descricao})
      : super(key: key);

  @override
  _AvisosCardState createState() {
    return _AvisosCardState();
  }
}

class _AvisosCardState extends State<AvisosCard> {
  bool bool_type = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              bool_type = !bool_type;
            });
          },
          style: ElevatedButton.styleFrom(primary: Colors.white),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            widget.data,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Text(
                      widget.titulo,
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(
                      bool_type ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: bool_type,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          widget.descricao,
                          style: AppTextStyles.lightBody,
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
