import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/response_pinjam.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index) {
          DataPinjam dataPinjam = state[index];
          return ListTile(
            title: Text("${state[index].book?.judul}"),
            subtitle: Text(
                "Peminjam : ${state[index].user?.nama}"
                    "\nTanggal Pinjam : ${dataPinjam.tanggalPinjam}"
                    "\nTanggal Kembali : ${dataPinjam.tanggalKembali}"
                    "\nStatus : ${dataPinjam.status}"),
          );
        },
        separatorBuilder: (context, index) => Divider(),
      )),
    );
  }
}
