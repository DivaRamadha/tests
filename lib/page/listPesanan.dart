import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto/provider/shopProv.dart';
import 'package:resto/style/gayateks.dart';
import 'package:resto/style/style.dart';

class Listpesanan extends StatefulWidget {
  @override
  _ListpesananState createState() => _ListpesananState();
}

class _ListpesananState extends State<Listpesanan> {
  @override
  Widget build(BuildContext context) {
    final belanjaan = Provider.of<ShopProv>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text('Belanjaan'),
      ),
        body: ListView.builder(
      itemCount: belanjaan.jumlahItem,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      belanjaan.listShopProv[i].prodName,
                      style: tittle,
                    ),
                    Text(
                      belanjaan.listShopProv[i].desc,
                      style: subtittle,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage(
                            belanjaan.listShopProv[i].imgUrl,
                          ))),
                    )
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        belanjaan.hapusDariList(belanjaan.listShopProv[i]);
                      });
                    })
              ],
            ),
          ),
        );
      },
    ));
  }
}
