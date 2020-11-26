import 'dart:convert';

class Pesanan {
  Pesanan(
      {this.namaProduk,
      this.desc,
      this.harga,
      this.imgUrl});

  String namaProduk;
  String desc;
  String imgUrl;
  double harga;

  factory Pesanan.fromRawJson(String str) => Pesanan.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pesanan.fromJson(Map<String, dynamic> json) => Pesanan(
        namaProduk: json["namaProduk"],
        desc: json["desc"],
        harga: json["harga"],
        imgUrl: json['imgUrl'],
       
      );

  Map<String, dynamic> toJson() => {
        "namaProduk": namaProduk,
        "desc": desc,
        "harga": harga,
        "imgUrl": imgUrl,
       
      };
}
