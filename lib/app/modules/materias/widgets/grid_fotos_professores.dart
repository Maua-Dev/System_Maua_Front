import 'package:flutter/material.dart';

class GridFotosProfessores extends StatelessWidget {
  final List<String>? listaFotos;
  const GridFotosProfessores({Key? key, this.listaFotos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listaFotos != null
        ? Container(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listaFotos!.length,
              itemBuilder: (context, index) => CircleAvatar(
                  radius: MediaQuery.of(context).size.height < 600 ? 20 : 23.0,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ClipOval(
                      child: Image.network(
                        listaFotos![index],
                      ),
                    ),
                  )),
            ),
          )
        : SizedBox.shrink();
  }
}
