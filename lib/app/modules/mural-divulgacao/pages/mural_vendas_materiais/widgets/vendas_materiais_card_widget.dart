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
      child: ListTile(
        isThreeLine: true,
        leading: Image.asset('assets/images/calculo.jpg',width: 120,height: 190,),
        onTap: onTap,
        title: Text(produto.toString(),style: TextStyle(fontSize: 22),),
        subtitle: Text(preco.toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      ),
    );
  }
}