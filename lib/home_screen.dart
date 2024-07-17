import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart' show PlatformException;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Uint8List? _imageBytes; // Utiliza Uint8List para manejar imágenes en Flutter web
  final picker = ImagePicker();

  Future<void> getImage() async {
    try {
      final pickedFile = await picker.pickImage(source: ImageSource.camera);

      setState(() {
        if (pickedFile != null) {
          // Lee los bytes del archivo seleccionado
          pickedFile.readAsBytes().then((value) {
            setState(() {
              _imageBytes = Uint8List.fromList(value);
            });
          });
        } else {
          print('No image selected.');
        }
      });
    } on PlatformException catch (e) {
      print('Error selecting image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error selecting image. Please try again later.')),
      );
    } catch (e) {
      print('Error selecting image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error selecting image. Please try again later.')),
      );
    }
  }

  Future<void> uploadImage() async {
    if (_imageBytes == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No image selected.'))
      );
      return;
    }

    try {
      final storageRef = FirebaseStorage.instance.ref().child('images/${DateTime.now().toIso8601String()}');
      final uploadTask = storageRef.putData(_imageBytes!); // Sube los bytes de la imagen

      await uploadTask.whenComplete(() => {}); // Espera a que se complete la carga
      final downloadUrl = await storageRef.getDownloadURL(); // Obtiene la URL de descarga
      print('Uploaded image URL: $downloadUrl');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Image uploaded successfully.'))
      );
    } catch (e) {
      print('Failed to upload image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to upload image. Please try again later.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Firebase Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _imageBytes == null
              ? Text('No image selected.')
              : Image.memory(
                  _imageBytes!,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: getImage,
              child: Text('Take Photo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: uploadImage,
              child: Text('Upload Photo'),
            ),
          ],
        ),
      ),
    );
  }
}
