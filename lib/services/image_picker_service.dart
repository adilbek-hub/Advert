import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final storage = FirebaseStorage.instance;
  final ImagePicker _picker = ImagePicker();

  Future<List<XFile>?> pickImages() async {
    final images = await _picker.pickMultiImage(imageQuality: 5);
    return images;
  }
}
