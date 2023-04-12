import 'dart:io';

import 'package:file_manager/file_manager.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileManage extends StatefulWidget {
  const FileManage({Key? key}) : super(key: key);

  @override
  _FileManageState createState() => _FileManageState();
}

class _FileManageState extends State<FileManage> {

  String init='/storage/emulated/0/';
  void goto(String to){
      _getFilesFor(to).then((value){
        _files=value;
        setState(() {});
      });
  }
  Future<List<FileSystemEntity>> _getFiles() async {
    // Request permission to access the device's storage
    try {
      var status = await Permission.storage.request();
      if (status.isDenied) {
        throw Exception('Permission denied');
      }
    } catch (e) {
      // handle the exception here
      print(e.toString());
    }

    // Get the device's external storage directory
   Directory? storageDir = await getExternalStorageDirectory();
    Directory? apptempDir = await getTemporaryDirectory();
    String storagePath = storageDir!.path;
    print(storageDir.path);

    // Get a list of all files in the storage directory
    List<FileSystemEntity> files = Directory('/storage/emulated/0/').listSync();

    return files;
  }
  Future<List<FileSystemEntity>> _getFilesFor(String to) async {
    // Request permission to access the device's storage
    try {
      var status = await Permission.storage.request();
      if (status.isDenied) {
        throw Exception('Permission denied');
      }
    } catch (e) {
      // handle the exception here
      print(e.toString());
    }

       List<FileSystemEntity> files = Directory(to).listSync();

       return files;

  }

  List<FileSystemEntity> _files = [];
  @override
  void initState() {
    super.initState();
    _getFilesFor(init).then((files) {
      setState(() {
        _files = files;
      });
    });
  }
FileManagerController controller=FileManagerController();
  @override
  Widget build(BuildContext context) {
    print(_files.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('File Manager'),
        leading: IconButton(
            onPressed: (){
              goto(init);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),

      body: FileManager(
        controller: controller,
        builder:(context, snapshot) => ListView.builder(
          itemCount: _files.length,
          itemBuilder: (BuildContext context, int index) {
            FileSystemEntity file = _files[index];
            return InkWell(
              onTap: () async {
             if( await Directory(_files[index].path).exists()) {
               goto(_files[index].path);
             }
              },
              child: ListTile(
                leading: Icon(Icons.insert_drive_file),
                title: Text(file.path.split('/').last),
                subtitle: Text(file.path),
              ),
            );
          },
        ),
      ),
    );
  }
}
