/// Copyright (c) 2021
/// by Anton Volokha, antonvolokha@gmail.com
///
library advanced_mime_type;

import 'dart:io';

class FileHelper {
  final RandomAccessFile _file;

  String _header;

  FileHelper({
    String filePath,
  })  : assert(filePath != null),
        _file = File(filePath).openSync(mode: FileMode.read);

  /// Read first 44 bytes where located information about header
  String _getHeader() {
    if (_header == null) {
      _header = String.fromCharCodes(_file.readSync(24)).toLowerCase();
    }

    return _header;
  }

  String get header => _getHeader();
}
