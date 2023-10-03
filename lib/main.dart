import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

void main() {
runApp(
const MyApp()
); }

class MyApp extends StatelessWidget {
const MyApp({super.key});
// Este Widget le da inicio a la aplicacion.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
     title: '',
     home: Divice(),

   );
  }
}


class Divice extends StatefulWidget {
  const Divice({super.key});

  @override
  State<Divice> createState() => _DiviceState();
}

class _DiviceState extends State<Divice> {
  //Esta funcion me permite obtener informacion sobre el telefono que se logue en mi App
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo? androidInfo;
  Future<AndroidDeviceInfo> getInfo() async {
    return await deviceInfo.androidInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: ()async {
            DeviceInfoPlugin deviceInfoPlugin =
                                DeviceInfoPlugin();
                            AndroidDeviceInfo androidDeviceInfo =
                                await deviceInfoPlugin.androidInfo;
                            print(androidDeviceInfo.brand);
                            print(androidDeviceInfo.device);
                            print(androidDeviceInfo.model);
                            print(androidDeviceInfo.product);
                            print(androidDeviceInfo.hardware);
                            print(androidDeviceInfo.manufacturer);
                            print(androidDeviceInfo.version.release.toString());
                            print(
                                androidDeviceInfo.isPhysicalDevice.toString());
                            print(androidDeviceInfo.version.sdkInt.toString());
          },
          child: const Text('Boton'),
        ),
      ),
    );
  }
}