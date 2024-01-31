import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petugas_perpustakaan_kelas_c/app/data/model/response_book.dart';

import '../../../routes/app_pages.dart';
import '../controllers/book_controller.dart';

class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BookView'),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: controller.obx((state) => ListView.separated(
            itemCount: state!.length,
            itemBuilder: (context, index) {
              DataBuku dataBuku = state[index];
              return ListTile(
                title: Text("${dataBuku.judul}"),
                subtitle: Text(
                    "Penulis ${dataBuku.penulis}\n${dataBuku.penerbit} - ${dataBuku.tahunTerbit}"),
              );
            },
            separatorBuilder: (context, index) => Divider(),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_BOOK),
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF0CBD63),
      ),
    );
  }
}
