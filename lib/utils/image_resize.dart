/*
import 'package:image/image.dart' as IMG;
import 'dart:typed_data';
import 'package:flutter/services.dart';

String imgurl = "https://www.fluttercampus.com/img/banner.png";
Uint8List bytes = (await NetworkAssetBundle(Uri.parse(imgurl)).load(imgurl)).buffer.asUint8List();

IMG.Image? img = IMG.decodeImage(bytes);
IMG.Image resized = IMG.copyResize(img!, width: 200, height: 200);
Uint8List resizedImg = Uint8List.fromList(IMG.encodePng(resized));*/
