// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, unused_import, sized_box_for_whitespace, sort_child_properties_last, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trangtraicua_demo/styles/app_colors.dart';
import 'package:trangtraicua_demo/ui/check/detailcheckbox/bloc/detailcheckbox_bloc.dart';
import 'package:trangtraicua_demo/ui/check/unit/ui/unit.dart';
import 'package:trangtraicua_demo/widgets/button/check_box.dart';
import 'package:trangtraicua_demo/widgets/button/import_image_button.dart';
import 'package:trangtraicua_demo/widgets/button/import_video_button.dart';
import 'package:trangtraicua_demo/widgets/button/primary_button.dart';
import 'package:trangtraicua_demo/widgets/button/secondary_button.dart';
import 'package:trangtraicua_demo/widgets/text/title_top_textbox.dart';
import 'package:trangtraicua_demo/widgets/textbox/dropdown_box.dart';
import 'package:trangtraicua_demo/widgets/text/title_top_dropdown_box.dart';
import 'package:trangtraicua_demo/widgets/textbox/input_box.dart';

class ChiTietKiemTraBox extends StatefulWidget {
  const ChiTietKiemTraBox({Key? key}) : super(key: key);

  @override
  _ChiTietKiemTraBoxState createState() => _ChiTietKiemTraBoxState();
}

class _ChiTietKiemTraBoxState extends State<ChiTietKiemTraBox> {
  final ChitietkiemtraboxBloc chiTietKiemtraBoxBloc = ChitietkiemtraboxBloc();

  String typecrab = 'Cua tiêu';
  String dropdownValue = 'Đang lột';
  String eatingStatus = 'Ăn 50%';
  bool crabDead = false;
  int numberOfDeadCrabs = 0;
  int selectedImages = 0;
  int maxImages = 10;

  Future<void> pickImageFromGallery() async {
    // Thực hiện logic chọn ảnh từ thư viện
  }

  Future<void> captureImageFromCamera() async {
    // Thực hiện logic chụp ảnh từ camera
  }

  void deleteImage() {
    // Thực hiện logic xóa ảnh
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChitietkiemtraboxBloc, ChitietkiemtraboxState>(
        bloc: chiTietKiemtraBoxBloc,
        listener: (context, state) {
          if (state is ChiTietKiemTraBoxClickBackState) {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Unit1()));
          }
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color.fromARGB(255, 173, 0, 6),
                  onPressed: () {
                    // chiTietKiemtraBoxBloc.add(CTKTBoxClickBackEvent());
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
              body: SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Center(
                        //child:
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TitleWithAsterisk(
                                title: 'Loại cua',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DropdownText(
                                value: typecrab,
                                items: ['Cua tiêu', '...'],
                                onChanged: (newValue) {
                                  setState(() {
                                    typecrab = newValue;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TitleWithAsterisk(
                                title: 'Hình dạng (Tình trạng chung)',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DropdownText(
                                value: dropdownValue,
                                items: ['Đang lột', '...'],
                                onChanged: (newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TitleWithAsterisk(
                                title: 'Tình trạng cua (Tình trạng chung)',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              DropdownText(
                                value: eatingStatus,
                                items: ['Ăn 50%', 'Ăn 30%', 'Ăn 100%'],
                                onChanged: (newValue) {
                                  setState(() {
                                    eatingStatus = newValue;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CustomCheckBox(
                                isChecked: crabDead,
                                text: 'Cua chết',
                                onChanged: (value) {
                                  setState(() {
                                    crabDead = value;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              if (crabDead)
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TitleWithAsterisk(
                                        title: 'Số lượng cua chết'),
                                    SizedBox(height: 10),
                                    InputBox(
                                      hintText: 'Nhập số lượng cua chết',
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {
                                        setState(() {
                                          numberOfDeadCrabs =
                                              int.tryParse(value) ?? 0;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              SizedBox(
                                height: 25,
                              ),
                              Text('Hình ảnh ($selectedImages/$maxImages)'),
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    GridView.count(
                                      shrinkWrap: true,
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      children: List.generate(3, (index) {
                                        return ImportImageButton(
                                          onPressed: pickImageFromGallery,
                                        );
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
                                    ImportVideoButton(
                                      onPressed: pickImageFromGallery,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 25),
                              PrimaryButton(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChiTietKiemTraBox()),
                                  );
                                },
                                text: 'LƯU & ĐI TIẾP HÀNG',
                              ),
                              SizedBox(height: 15),
                              SecondaryButton(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  text: 'LƯU & ĐI TIẾP CỘT'),
                              SizedBox(height: 15),
                              SecondaryButton(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  text: 'LƯU'),
                            ]),
                      ))));
        });
  }
}
