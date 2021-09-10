import 'package:flutter/material.dart';

class VendasCardWidget extends StatelessWidget {
  final String? produto;
  final String? preco;
  final void Function()? onTap;

  const VendasCardWidget (
    {Key? key,
    required this.produto,
    this.onTap,
    required this.preco});


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          padding: const EdgeInsets.all(0),
          child: Row(children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/calculo.jpg'),
                        ),
                  ),
                ),
              ),
             ),
             Spacer(
               flex: 1,
             ),
             Expanded(
               flex: 14,
               child: Container(
                 child: Padding(
                   padding: const EdgeInsets.only(top: 20, bottom: 10),
                   child: Column(
                     children: [
                       Text('$produto',
                       style: TextStyle(
                         fontSize: 22,
                         color: Colors.black),
                       ),
                       Text('$preco',
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.black),
                         ),
                     ],
                   ),
                 ),),)
          ],),),
      ),
    );
  }
}