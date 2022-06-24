import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/functions/upload_image.dart';

import '../../../helpers/functions/modal_bottom_sheet_menu.dart';

class SignUpDesign extends StatefulWidget {
  const SignUpDesign({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<SignUpDesign> createState() => _SignUpDesignState();
}

class _SignUpDesignState extends State<SignUpDesign> {
  File? imageFile;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      width: widget.size.width,
      color: Colors.blue[50],
      child: Column(
        children: [
          Container(
            height: widget.size.height * 0.4,
            width: widget.size.width,
            decoration: BoxDecoration(
              color: Colors.green[300]!,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: InkWell(
                      onTap: () async {
                        File? file =
                            await modalBottomSheetMenu(context: context);
                        print('picked file: $file');
                        setState(() {
                          imageFile = file;
                        });
                        // if(file != null){
                        //   final downloadUrl = await uploadImageMobile(file: file);
                        //   print('download url: $downloadUrl');
                        // }
                      },
                      child: imageFile != null
                          ? Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(width: 5, color: Colors.white),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 20,
                                    offset: Offset(5, 5),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  imageFile!,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            )
                          : Stack(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 5, color: Colors.white),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 20,
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.grey.shade300,
                                    size: 80.0,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.grey.shade700,
                                    size: 25.0,
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
