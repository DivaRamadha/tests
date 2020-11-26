import 'package:flutter/material.dart';
import 'package:resto/model/restoModel.dart';
import 'package:resto/page/detailPage.dart';
import 'package:resto/style/gayateks.dart';

class ForyouScreen extends StatefulWidget {
  @override
  _ForyouScreenState createState() => _ForyouScreenState();
}

class _ForyouScreenState extends State<ForyouScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        children: <Widget>[
          ListView.builder(
              itemCount: listModel.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) {
                return _list(listModel[i]);
              })
        ],
      ),
    );
  }

  _list(ModelResto modelResto) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProduct(
                    modelResto: modelResto,
                  ),
                ),
              );
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        modelResto.prodName,
                        style: tittle,
                      ),
                      Text(
                        modelResto.desc,
                        style: subtittle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '\$' + modelResto.price.toString(),
                        style: subtittle,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(modelResto.imgUrl))),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider()
        ],
      ),
    );
  }
}
