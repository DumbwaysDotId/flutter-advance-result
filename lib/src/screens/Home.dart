import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(child: Text('eqweq312')),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Consumer<ProductProvider>(
              builder: (context, value, child) => ListView.builder(
                    itemCount: value.product.length,
                    itemBuilder: (context, index) {
                      var name = value.product[index].name;
                      var price = value.product[index].price;
                      var qty = value.product[index].qty;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name.toString(),
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text('(' + qty.toString() + ')'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Rp.' + price.toString()),
                                      ],
                                    )
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print('323423423');
                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        'Add to Cart',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    },
                  )),
        ),
      ],
    ));
  }
}
