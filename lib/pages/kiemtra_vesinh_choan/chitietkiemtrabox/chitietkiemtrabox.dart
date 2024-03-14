// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, unused_import, sized_box_for_whitespace, sort_child_properties_last, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';

class ChiTietKiemTraBox extends StatefulWidget {
  const ChiTietKiemTraBox({Key? key}) : super(key: key);

  @override
  _ChiTietKiemTraBoxState createState() => _ChiTietKiemTraBoxState();
}

class _ChiTietKiemTraBoxState extends State<ChiTietKiemTraBox> {
  String dropdownValue = 'Đang lột';
  String eatingStatus = 'Ăn 50%';
  bool crabDead = false;
  int numberOfDeadCrabs = 0;
  int selectedImages = 0;
  int maxImages = 10;

  // Hàm để chọn ảnh từ thư viện
  Future<void> pickImageFromGallery() async {
    // Thực hiện logic chọn ảnh từ thư viện ở đây
  }

  // Hàm để chụp ảnh từ camera
  Future<void> captureImageFromCamera() async {
    // Thực hiện logic chụp ảnh từ camera ở đây
  }

  // Hàm để xóa ảnh
  void deleteImage() {
    // Thực hiện logic xóa ảnh ở đây
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Color.fromARGB(255, 173, 0, 6),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text(
            "U1A - H01 - C01",
            style: TextStyle(
                color: Color.fromARGB(255, 173, 0, 6),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Hình dạng (Tình trạng chung)*'),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                isExpanded: true,
                                icon: Icon(Icons.keyboard_arrow_down_rounded),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Đang lột',
                                  '...'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text('Tình trạng cua (Tình trạng chung)*'),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: eatingStatus,
                                isExpanded: true,
                                icon: Icon(Icons.keyboard_arrow_down_rounded),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    eatingStatus = newValue!;
                                  });
                                },
                                items: <String>[
                                  'Ăn 50%',
                                  'Ăn 30%',
                                  'Ăn 100%'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: crabDead,
                          onChanged: (bool? value) {
                            setState(() {
                              crabDead = value!;
                            });
                          },
                        ),
                        Text(
                          'Cua chết',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    if (crabDead)
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Nhập số lượng cua chết',
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.allow(RegExp(
                                r'^[0-9]+')), //cua chet khong duoc la chu, cua chet ko duoc vuot qua so luong cua dang co
                          ],
                          onChanged: (value) {
                            setState(() {
                              numberOfDeadCrabs = int.tryParse(value) ?? 0;
                            });
                          },
                        ),
                      ),
                    SizedBox(
                      height: 25,
                    ),
                    Text('Hình ảnh ($selectedImages/$maxImages)'),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            children: List.generate(3, (index) {
                              return DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(5),
                                  strokeWidth: 1,
                                  color: Colors.grey,
                                  dashPattern: const [
                                    6,
                                    3
                                  ], // Pattern của đường nét, có thể tùy chỉnh
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                          child: ElevatedButton(
                                              onPressed: pickImageFromGallery,
                                              child: Icon(Icons
                                                  .add_photo_alternate_outlined),
                                              style: ButtonStyle(
                                                  minimumSize:
                                                      MaterialStateProperty
                                                          .resolveWith<Size>(
                                                    (states) => Size(
                                                        double.infinity,
                                                        double.infinity),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.white),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  )))))));
                            }),
                          ),
                          SizedBox(height: 25),
                          Text('Video clip'),
                          Text(
                            'Chấp nhận: MOV, MP4 và tối đa 500MB',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          Container(
                            height: 300, // Đặt chiều cao tùy ý
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(5),
                              strokeWidth: 1,
                              color: Colors.grey,
                              dashPattern: const [
                                6,
                                3
                              ], // Pattern của đường nét, có thể tùy chỉnh
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: pickImageFromGallery,
                                    child: Icon(Icons.play_circle),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStateProperty
                                            .resolveWith<Size>(
                                          (states) => Size(
                                              double.infinity, double.infinity),
                                        ),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    TextButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(
                            fontWeight: FontWeight.bold, // In đậm
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 173, 0,
                                6)), // Màu nền của nút Kiểm tra & vệ sinh|1 là blue
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        fixedSize: MaterialStateProperty.all(Size(250, 40)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            // Bo tròn viền nút
                          ),
                        ), // Màu chữ của nút Kiểm tra & vệ sinh|1 là trắng
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChiTietKiemTraBox()),
                        );
                      },
                      child: Text('LƯU & ĐI TIẾP HÀNG'),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(
                            fontWeight: FontWeight.bold, // In đậm
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors
                            .white), // Màu nền của nút Chuyển Hộp là trắng
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 173, 0, 6)),
                        fixedSize: MaterialStateProperty.all(Size(
                            250, 40)), // Màu chữ của nút Chuyển Hộp là blue
                        side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Color.fromARGB(255, 173, 0, 6))),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5), // Bo tròn viền nút
                          ),
                        ), // Viền của nút Chuyển Hộp là blue
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('LƯU & ĐI TIẾP CỘT'),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                            TextStyle(
                              fontWeight: FontWeight.bold, // In đậm
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors
                                  .white), // Màu nền của nút Chuyển Hộp là trắng
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 173, 0, 6)),
                          fixedSize: MaterialStateProperty.all(Size(
                              250, 40)), // Màu chữ của nút Chuyển Hộp là blue
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(
                                  color: Color.fromARGB(255, 173, 0, 6))),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // Bo tròn viền nút
                            ),
                          ), // Viền của nút Chuyển Hộp là blue
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('LƯU')),
                  ]),
            ))));
  }
}
