import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  final List<Category> categories = [
    Category(
      name: 'Corte de Cabelo',
      services: [
        Service(name: 'Corte Masculino', price: 'R\$ 30', duration: '30 min'),
        Service(name: 'Corte Infantil', price: 'R\$ 20', duration: '20 min'),
      ],
    ),
    Category(
      name: 'Barba',
      services: [
        Service(name: 'Aparar Barba', price: 'R\$ 15', duration: '15 min'),
        Service(name: 'Barba Completa', price: 'R\$ 25', duration: '30 min'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categories
          .map((category) => ExpansionTile(
                title: Text(category.name),
                children: category.services
                    .map((service) => ListTile(
                          title: Text(service.name),
                          subtitle:
                              Text('${service.price} - ${service.duration}'),
                          trailing: ElevatedButton(
                            onPressed: () {},
                            child: Text('Reservar'),
                          ),
                        ))
                    .toList(),
              ))
          .toList(),
    );
  }
}

class Category {
  final String name;
  final List<Service> services;

  Category({required this.name, required this.services});
}

class Service {
  final String name;
  final String price;
  final String duration;

  Service({required this.name, required this.price, required this.duration});
}
