import 'package:fitness/service/change_password.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../service/logout.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      //profile screen
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              //name email with card
              Card(
                child: Column(
                  children: [
                    //TODO: get name and email from the storage
                    ListTile(
                      title: const Text('Name: '),
                      subtitle: Text(
                          "${_allController.loginResponseModel.first_name} ${_allController.loginResponseModel.last_name}"),
                    ),
                    ListTile(
                      title: const Text('Email:'),
                      subtitle: Text(_allController.loginResponseModel.email),
                    ),
                    GestureDetector(
                      onTap: () {
                        _allController.setVisible =
                            !_allController.getVisible.value;
                      },
                      child: ListTile(
                        leading: const Icon(Icons.lock),
                        title: const Text("Change Password"),
                        trailing: _allController.visible.value
                            ? const Icon(Icons.keyboard_arrow_up)
                            : const Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    Obx(
                      () => _allController.visible.value
                          ? Column(
                              children: [
                                TextFormField(
                                  controller: _allController
                                      .currentPasswordController.value,
                                  decoration: const InputDecoration(
                                      labelText: "Current Password"),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFormField(
                                  controller: _allController
                                      .newPasswordController.value,
                                  decoration: const InputDecoration(
                                      labelText: "New Password"),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                TextFormField(
                                  controller: _allController
                                      .confirmPasswordController.value,
                                  decoration: const InputDecoration(
                                      labelText: "New Password Again"),
                                ),
                                const SizedBox(height: 16.0),
                                ElevatedButton(
                                  onPressed: () async {
                                    var c = _allController
                                        .currentPasswordController.value.text;
                                    var n = _allController
                                        .newPasswordController.value.text;
                                    var a = _allController
                                        .confirmPasswordController.value.text;
                                    // Şifre değiştirme işlemleri buradaa gerçekleştirilebilir
                                    dprint(
                                        "current password: $c, new password: $n, new password again: $a");

                                    //passwords is not empty and new passwords are same

                                    if (c.isNotEmpty &&
                                        n.isNotEmpty &&
                                        a.isNotEmpty &&
                                        n == a) {
                                      if (c != n) {
                                        await changePassword(c, n);
                                      } else {
                                        Get.snackbar(
                                          "Error",
                                          "New password can't be the same as the old password",
                                          snackPosition: SnackPosition.BOTTOM,
                                          backgroundColor: Colors.red,
                                          colorText: Colors.white,
                                        );
                                      }

                                      //clear textfields and toggle visibility
                                    } else {
                                      //show error
                                      Get.snackbar(
                                        "Error",
                                        "Passwords are not same or empty",
                                        snackPosition: SnackPosition.BOTTOM,
                                        backgroundColor: Colors.red,
                                        colorText: Colors.white,
                                      );
                                    }
                                  },
                                  child: const Text("Change Password"),
                                ),
                              ],
                            )
                          : const SizedBox(),
                    ),
                    //logout button
                    ListTile(
                      onTap: () {
                        dprint('logout');
                        //show dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Logout'),
                              content: const Text(
                                  'Are you sure you want to logout?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    //TODO: logout
                                    Navigator.of(context).pop();
                                    await logoutUserService();
                                  },
                                  child: const Text('Yes'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      leading: const Icon(Icons.logout, color: Colors.red),
                      title: const Text('Logout',
                          style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
