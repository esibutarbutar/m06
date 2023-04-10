import 'package:flutter/material.dart';

class CitaCitaDetails extends StatelessWidget {
  final String selectedCita;

  CitaCitaDetails(this.selectedCita);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rincian Cita-Cita'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anda memilih cita-cita: $selectedCita'),
            Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5rk0PHGp4EgzCX7cktGaTaZsRM0Na8V_GGA&usqp=CAU'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pengertian Development',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Text(
                    'Development adalah istilah dalam bahasa Inggris yang jika diartikan ke dalam bahasa Indonesia berarti ‘pembangunan’ atau ‘pengembangan’. Dapat dikatakan bahwa arti development adalah setiap kegiatan yang terstruktur dan terukur, serta dilakukan demi meningkatkan kemajuan organisasi atau perusahaan. Aktivitas ini dapat berupa inovasi dari sisi produk hingga sumber daya manusia.'),
                Text('Jenis-jenis Development',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                Text('1. Business Development',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Text(
                    'BD atau Business Development adalah bidang pekerjaan yang berhubungan dengan pengembangan perusahaan melalui penciptaan relasi jangka panjang dengan pelanggan, pasar, hingga relasi bisnis.')
              ],
            ),
            // Column(
            //   children: [
            //     Text('Jenis-jenis Development',
            //         style:
            //             TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            //     Text('1. Business Development',
            //         style:
            //             TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            //     Text(
            //         'BD atau Business Development adalah bidang pekerjaan yang berhubungan dengan pengembangan perusahaan melalui penciptaan relasi jangka panjang dengan pelanggan, pasar, hingga relasi bisnis.')
            //   ],
            // )
          ],
        ),
        // child: Text(
        //   'Anda memilih cita-cita: $selectedCita',
        //   style: TextStyle(fontSize: 20),
        // ),
      ),
    );
  }
}
