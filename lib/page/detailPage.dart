import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resto/model/pesanan.dart';
import 'package:resto/model/restoModel.dart';
import 'package:resto/page/listPesanan.dart';
import 'package:resto/provider/shopProv.dart';
import 'package:resto/style/gayateks.dart';
import 'package:resto/style/style.dart';

class DetailProduct extends StatefulWidget {
  final ModelResto modelResto;

  const DetailProduct({Key key, this.modelResto}) : super(key: key);
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  ModelResto mo;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mo = widget.modelResto;
  }

  void tambahBarang(BuildContext context, ModelResto detail) async {
    final belanjaan = Provider.of<ShopProv>(context, listen: false);

    
    belanjaan.tambahList(detail);
    
  }
  
  @override
  Widget build(BuildContext context) {
    final belanjaan = Provider.of<ShopProv>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                mo.imgUrl))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(99),
                              color: Colors.white),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.arrow_back,
                            color: secondaryColor,
                            size: 18,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Listpesanan(
                  ),
                ),
              );
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: Colors.white),
                            padding: EdgeInsets.all(12),
                            child: Text(belanjaan.jumlahItem.toString())),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  mo.prodName,
                  style: tittleBesar,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14
                ),
                alignment: Alignment.centerLeft,
                child: Text(mo.desc,
                style: subtittle,
                )),
                SizedBox(
                  height: 8,
                ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: <Widget>[
                    Text(
                      '40-50 min',
                      style: subtittle,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '4.8',
                      style: subtittle,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 14,
                    ),
                    Text(
                      '(500+)',
                      style: subtittle2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
             Container(
               padding: EdgeInsets.symmetric(
                  horizontal: 14
                ),
                alignment: Alignment.centerLeft,
               child: Text('\$' + mo.price.toString(),
               style: tittle,
               )),
              
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: primaryColor,
                  child: Text('Add To Chart',
                  style: tittlePutih,
                  ),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: (){
                    setState(() {
                      tambahBarang(context, mo);
                    });
                  }),
              ),
                SizedBox(
                  height: 14,
                )
            ],
          ),
        ),
      ),
    );
  }
}
