import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NomorDarurat extends StatelessWidget {
  const NomorDarurat({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  // ignore: deprecated_member_use
                  await launch("tel:112");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor Darurat - 112",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(height: 10,),

          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  // ignore: deprecated_member_use
                  await launch("tel:110");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor Kepolisian - 110",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  // ignore: deprecated_member_use
                  await launch("tel:133");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor Pemadam Kebakaran - 113",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  // ignore: deprecated_member_use
                  await launch("tel:118");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor Ambulan - 118",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async { 
                  // ignore: deprecated_member_use
                  await launch("tel:115");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor SAR (Search And Rescue) - 115",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () async {
                  // ignore: deprecated_member_use
                  await launch("tel:123");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Nomor PLN - 123",
                  style: TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}
