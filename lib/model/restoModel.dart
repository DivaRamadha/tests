import 'dart:convert';

class ModelResto{
  final int id;
  final String prodName;
  final String desc;
  final double price;
  final String imgUrl;

  ModelResto({this.id, this.prodName, this.desc, this.price, this.imgUrl});


  factory ModelResto.fromRawJson(String str) => ModelResto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelResto.fromJson(Map<String, dynamic> json) => ModelResto(
        prodName: json["namaProduk"],
        desc: json["desc"],
        price: json["harga"],
        imgUrl: json['imgUrl'],
       
      );

  Map<String, dynamic> toJson() => {
        "namaProduk": prodName,
        "desc": desc,
        "harga": price,
        "imgUrl": imgUrl,
       
      };
}

final List<ModelResto> listModel = [
  ModelResto(
    id: 1,
    prodName: 'Chopped Cheese',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1485963631004-f2f00b1d6606?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8Y2hvcHBlZCUyMGNoZWVzZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60'
  ),
  ModelResto(
    id: 2,
    prodName: 'Chicken Fingers',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1548340748-6d2b7d7da280?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpY2tlbiUyMGZpbmdlcnN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60'
  ),
  ModelResto(
    id: 3,
    prodName: 'Onion Rings',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1548077447-17749375af3a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8b25pb24lMjByaW5nc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60'
  ),
  ModelResto(
    id: 4,
    prodName: 'Waffle Fries',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1552526881-58f4a2def8a5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHdhZmZsZSUyMGZyaWVzfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60'
  ),
  ModelResto(
    id: 5,
    prodName: 'Falafel',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1542528180-a1208c5169a5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZmFsYWZlbHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60'
  ),
  ModelResto(
    id: 6,
    prodName: 'Meatballs',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1541754202-9eb0e8c13b6c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGZhbGFmZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60'
  ),
  
  ModelResto(
    id: 7,
    prodName: 'Meatba',
    desc: 'Five Pisced serve with marianara sauce',
    price: 4.55,
    imgUrl: 'https://images.unsplash.com/photo-1541754202-9eb0e8c13b6c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fGZhbGFmZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60'
  ),
];