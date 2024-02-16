import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:segit/app/data/model/ronda_model.dart';

void modalRonda(List<User> users, item, context) {
    Get.bottomSheet(
      Container(
        width: double.infinity,
        height: 500,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${item.hari}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: users.map((user) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(IconlyLight.user),
                          const Padding(padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0)),
                          Text(
                            '${user.nama}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider()
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }