import 'package:flutter/material.dart';
import 'package:resto/model/pesanan.dart';
import 'package:resto/model/restoModel.dart';

class ShopProv with ChangeNotifier {
  List<ModelResto> _detail = new List<ModelResto>();
  double _totalHarga = 0;

  Pesanan _pesanan;
  Pesanan get pesanan => _pesanan;

  List<ModelResto> get listShopProv => _detail;
  int get jumlahItem => _detail.length;

  set setPesanan(Pesanan val) {
    _pesanan = val;
    notifyListeners();
  }

   void tambahList(ModelResto detail) {
    _detail.add(detail);
    _detail
        .sort((ModelResto a, ModelResto b) => a.id.compareTo(b.id));
    _tambahHarga(barang: detail, tambah: true);
    print('nambah');
    notifyListeners();
  }

  void _tambahHarga({ModelResto barang, bool tambah, int lol = 1}) {
    if (tambah) {
      _totalHarga = _totalHarga + (barang.price * lol);
    } else {
      _totalHarga = _totalHarga - (barang.price * lol);
    }
  }

  void hapusDariList(ModelResto detail) {
    final int index = _detail.indexOf(detail);
    _detail.removeAt(index);
    _tambahHarga(barang: detail, tambah: false);
    notifyListeners();
  }
}