import 'package:flutter/widgets.dart';

class pageModel{
  String _title,_images;
  IconData _icons;

  pageModel(this._title, this._images, this._icons);

  IconData get icons => _icons;

  set icons(IconData value) {
    _icons = value;
  }

  get images => _images;

  set images(value) {
    _images = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }


}