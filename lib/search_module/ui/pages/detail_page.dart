import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:search_module_test/search_module/model/user_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {super.key,
      required this.name,
      required this.email,
      required this.phone,
      required this.website,
      required this.balance,
      required this.address,
      required this.company});

  final String? name;
  final String? email;
  final String? phone;
  final String? website;
  final String? balance;
  final Address? address;
  final Company? company;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          name ?? '',
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.5,
            width: size.width * 0.9,
            child: const Image(
              image: NetworkImage(
                  'https://t3.ftcdn.net/jpg/03/58/90/78/360_F_358907879_Vdu96gF4XVhjCZxN2kCG0THTsSQi8IhT.jpg'),
              repeat: ImageRepeat.noRepeat,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.blueGrey[300],
            height: size.height * 0.3,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email:$email', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Numero de telefono: $phone',
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Sitio web: $website',
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Balance actual: $balance',
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Ciudad: ${address?.city}',
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Dirección:  ${address?.street}',
                        style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 10),
                    Text('Compañia: ${company?.name}',
                        style: const TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
