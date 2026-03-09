import 'dart:io';

abstract class BaseApiServices {
  Future<dynamic> fetchGetApiResponse(String url);

  Future<dynamic> postApiResponse(String url, dynamic data);

  /// method for uploading media (images, videos, etc.)
  Future<dynamic> postMediaApiResponse(
    String url,
    dynamic data, {
    File? singleFile, // ✅ For a single file (optional)
    List<File>? mediaFiles, // ✅ For multiple files (optional)
    String? mediaFieldName, // ✅ Optional field name for a single file
    List<String>? mediaFieldNames, // ✅ New: Field names for multiple files
    List<String>? allowedFileTypes, // ✅ Optional file type restrictions
  });

  /// Update data via a PUT API
  Future<dynamic> putApiResponse(String url, {dynamic data});

  /// Delete data via a DELETE API
  Future<dynamic> deleteApiResponse(String url, {dynamic data});
  Future<dynamic> patchApiResponse(String url, {dynamic data});
}


// Case 1: Single Image Upload
// var response = await NetworkApiService().postMediaApiResponse(
//   'https://example.com/api/upload',
//   {'description': 'Single image upload'},
//   singleFile: File('/path/to/image.jpg'),
//   mediaFieldName: 'image',
//   allowedFileTypes: ['jpg', 'jpeg', 'png'],
// );
// print(response);


// Case 2: Multiple Images Upload
// var response = await NetworkApiService().postMediaApiResponse(
//   'https://example.com/api/upload',
//   {'description': 'Multiple images upload'},
//   mediaFiles: [
//     File('/path/to/image1.jpg'),
//     File('/path/to/image2.jpg'),
//   ],
//   mediaField: 'images',
//   headers: {'Authorization': 'Bearer YOUR_TOKEN'},
//   allowedFileTypes: ['jpg', 'jpeg', 'png'],
// );
// print(response);



// Case 3: Mixed Files (Images and Videos)
// var response = await NetworkApiService().postMediaApiResponse(
//   'https://example.com/api/upload',
//   {'description': 'Mixed files upload'},
//   mediaFiles: [
//     File('/path/to/image.jpg'),
//     File('/path/to/video.mp4'),
//   ],
//   mediaField: 'files',
//   headers: {'Authorization': 'Bearer YOUR_TOKEN'},
//   allowedFileTypes: ['jpg', 'png', 'mp4'],
// );
// print(response);
