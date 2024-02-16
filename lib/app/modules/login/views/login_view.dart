import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:segit/app/utils/my_color.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/segit2.png',
                height: 150,
              ),
            ),
            const Text(
              'Hallo, ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const Text(
              'Selamat Datang di Aplikasi Segit, Silahkan Login disini ',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 25),
            TextField(
              controller: controller.txtUser,
              cursorColor: MyColor.kuning,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(fontSize: 13),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColor.biruMuda)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColor.kuning),
                ),
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 20,
                  color: MyColor.biruTua,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Obx(
              () => TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.isPasswordHidden.value,
                controller: controller.txtPassword,
                cursorColor: MyColor.kuning,
                textInputAction: TextInputAction.send,
                onSubmitted: (value) => controller.auth(),
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(fontSize: 13),
                    prefixIcon: const Icon(
                      Icons.lock_rounded,
                      color: MyColor.biruTua,
                      size: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: MyColor.biruMuda)),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: MyColor.kuning),
                    ),
                    suffix: InkWell(
                      child: Icon(
                        controller.isPasswordHidden.value
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        color: MyColor.biruTua,
                        size: 20,
                      ),
                      onTap: () {
                        controller.isPasswordHidden.value =
                            !controller.isPasswordHidden.value;
                      },
                    )),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.auth(),
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.biruMuda,
                  fixedSize: Size(Get.width, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: const Text(
                'Login',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
