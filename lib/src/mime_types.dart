/// Copyright (c) 2021
/// by Anton Volokha, antonvolokha@gmail.com

library advanced_mime_type;

import 'package:advanced_mime_type/src/default_header_map.dart';
import 'package:advanced_mime_type/src/file_helper.dart';

String getMimeType(String path) {
  final helper = FileHelper(filePath: path);

  for (var header in defaultHeadersMap.keys) {
    if (helper.header.contains(header)) {
      return defaultHeadersMap[header];
    }
  }

  return null;
}
