import 'package:flutter/material.dart';
import 'package:sena_community_app/helpers/constants/constants.dart';

class HeaderWidget extends StatefulWidget {
  final double _height;
  final bool _showicon;
  final IconData _icon;
  
  const HeaderWidget(this._height, this._icon, this._showicon,{Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState(_height, _icon, _showicon);
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late double _height;
  late bool _showicon;
  late IconData _icon;

  _HeaderWidgetState(this._height, this._icon, this._showicon);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: [
          ClipPath(
            child: Container(
              decoration:  BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      kSecendoryColor.withOpacity(0.4),
                      kPrimaryColor.withOpacity(0.4),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper: ShapeClipper(
                [
                  Offset(_width / 5, _height),
                  Offset(_width / 10 * 5, _height - 60),
                  Offset(_width / 5 * 4, _height + 20),
                  Offset(_width, _height - 18)
                ]
            ),
          ),
          ClipPath(
            child: Container(
              decoration:  BoxDecoration(
                gradient:  LinearGradient(
                    colors: [
                      kSecendoryColor.withOpacity(0.4),
                      kPrimaryColor.withOpacity(0.4),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper:  ShapeClipper(
                [
                  Offset(_width / 3, _height + 20),
                  Offset(_width / 10 * 8, _height - 60),
                  Offset(_width / 5 * 4, _height - 60),
                  Offset(_width, _height - 20)
                ]
            ),
          ),
          ClipPath(
            child: Container(
              decoration:  BoxDecoration(
                gradient:  LinearGradient(
                    colors: [
                      
                      kSecendoryColor,
                      kPrimaryColor,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper:  ShapeClipper(
                [
                  Offset(_width / 5, _height),
                  Offset(_width / 2, _height - 40),
                  Offset(_width / 5 * 4, _height - 80),
                  Offset(_width, _height - 20)
                ]
            ),
          ),
          Visibility(
            visible: _showicon,
            child: Container(
              height: _height - 40,
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    top: 20.0,
                    right: 5.0,
                    bottom: 20.0,
                  ),
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    //border: Border.all(width: 5, color: Colors.white),
                  ),
                  child: Icon(
                    _icon,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  List<Offset> _offsets = [];
  ShapeClipper(this._offsets);
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height-20);

    // path.quadraticBezierTo(size._width/5, size.height, size._width/2, size.height-40);
    // path.quadraticBezierTo(size._width/5*4, size.height-80, size._width, size.height-20);

    path.quadraticBezierTo(_offsets[0].dx, _offsets[0].dy, _offsets[1].dx,_offsets[1].dy);
    path.quadraticBezierTo(_offsets[2].dx, _offsets[2].dy, _offsets[3].dx,_offsets[3].dy);

    // path.lineTo(size._width, size.height-20);
    path.lineTo(size.width, 0.0);
    path.close();


    return path;
  }

    @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}