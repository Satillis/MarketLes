import 'package:flutter/material.dart';
import 'package:market/pages/productList.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.numb});

  final int numb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Text(product_name[numb],
            softWrap: true),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(children: <Widget>[
              Expanded(
                  flex: 3, child: Image.network('${images_product[numb]}')),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 240),
                    child: Row(
                      children: <Widget>[
                        const Text(
                          'Цена: ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '${product_price[numb]}',
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ListView(children: <Widget>[
                  Text(
                    '${product_info[numb]}',
                    softWrap: true,
                  ),
                ]),
              ),
            ]),
          ),
        ));
  }
}