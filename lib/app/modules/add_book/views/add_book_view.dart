import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
        backgroundColor: Color(0xFF0CBD63),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Center(
          child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: controller.judulController,
                    decoration: InputDecoration(
                      labelText: "Judul",
                      hintText: "Masukkan Judul",
                      prefixIcon: Icon(Icons.title),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Judul buku tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.penulisController,
                    decoration: InputDecoration(
                      labelText: "Penulis",
                      hintText: "Masukkan Penulis",
                      prefixIcon: Icon(Icons.create),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Penulis tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.penerbitController,
                    decoration: InputDecoration(
                      labelText: "Penerbit",
                      hintText: "Masukkan Penerbit",
                      prefixIcon: Icon(Icons.send),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Penerbit tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: controller.tahunterbitController,
                    decoration: InputDecoration(
                      labelText: "Tahun Terbit",
                      hintText: "Masukkan Tahun Terbit",
                      prefixIcon: Icon(Icons.event),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0CBD63)),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length < 2) {
                        return "Tahun terbit tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 32),
                  Obx(() =>
                  controller.loading.value ? CircularProgressIndicator()
                      : ElevatedButton(
                    onPressed: () {
                      controller.add();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0CBD63),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0, // Increase horizontal padding
                        vertical: 12.0,
                      ),
                    ),
                    child: Text("Kirim",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                      ),
                    ),
                  ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
