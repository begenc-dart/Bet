import 'package:bet/src/core/network/states/status.dart';
import 'package:bet/src/features/CuponPage/controller/cupon_controller.dart';
import 'package:bet/src/features/Kuton/presentation/Kuton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gen/gen.dart';
import 'package:get_it/get_it.dart';

class CouponPage extends StatefulWidget {
  @override
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  var controller = GetIt.instance<CuponController>();
  @override
  void initState() {
    // TODO: implement initState
   controller.fetchCupon();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Купон')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Your coupon status
            _buildCouponStatus(),

            // Add options below
            Observer(builder: (context){
              if (controller.status == Status.error) {
                return Container();
              }
              else if(controller.status == Status.loading){
                return Container();
              }
              return _buildActionButton(
              'Пополнить счет',
              'Ваш баланс: ${controller.ticket!.supports!.total} USD',
              Icons.add,
              Colors.green,
              Colors.white,
              () {},
            );
            }),
            _buildActionButton(
              'Поиск событий',
              'Индивидуально для Вас',
              Icons.search,
              ColorName.circleColor,
              ColorName.text,
              () {},
            ),
            _buildActionButton(
              'Экспресс дня',
              'Лучшие предложения дня',
              Icons.star,
              ColorName.circleColor,
              ColorName.text,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpressDayPage()),
                );
              },
            ),
            _buildActionButton(
              'Генерация купона',
              'Сгенерируйте свой купон',
              Icons.shuffle,
              ColorName.circleColor,
              ColorName.text,
              () {},
            ),
            _buildActionButton(
              'Загрузить купон',
              'Загрузите имеющийся купон',
              Icons.upload_file,
              ColorName.circleColor,
              ColorName.text,
              () {},
            ),
          ],
        ),
      ),
    );
  }

  // Coupon status section
  Widget _buildCouponStatus() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Ваш купон ставок пуст',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Добавьте событие в купон или выберите одну из опций',
          style: TextStyle(fontSize: 14, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
      ],
    );
  }

  // Action button method
  Widget _buildActionButton(
    String title,
    String subtitle,
    IconData icon,
    Color circleColor,
    Color iconColor,
    VoidCallback onTap,
  ) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: circleColor, // Adjust as needed
          child: Icon(icon, color: iconColor),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
