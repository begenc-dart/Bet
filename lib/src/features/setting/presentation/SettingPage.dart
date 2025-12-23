import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool currencyWarning = true; // Variable for the switch

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки',style: TextStyle(color: ColorName.text),),
        centerTitle: true,
        actions: [
          Icon(Icons.shield), // The icon in the top right corner
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            _buildSection(
              title: 'Управление счётом',
              items: [
                _buildListTile('Пополнить счет'),
                _buildListTile('Вывести со счета'),
              ],
            ),
            // Дополнительно section
            _buildSection(
              title: 'Безопасность',
              items: [
                _buildListTile('Пин-код и биометрия'),
                _buildListTile('Аутентификатор'),
                _buildListTile('Настройки безопасности',subtitle: "Не подключен"),
                _buildListTile('История авторизаций',subtitle: "Профиль плохо за защищен"),
              ],
            ),
            // О приложении section
            _buildSection(
              title: 'О приложении',
              items: [
                _buildListTile('Поделиться приложением'),
                _buildListTile('Поделиться приложением по QR'),
                _buildListTile('Знакомство с приложением'),
                _buildListTile('Информация о приложении'),
                _buildListTile('Версия приложения', subtitle: '1xBet v.150(25900)'),
                _buildListTile('Очистить кэш', subtitle: '133.3 МБ'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Method to build a section with a title and a list of items
  Widget _buildSection({required String title, required List<Widget> items}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: ColorName.text2,
          ),
        ),
        SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              ...items
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  // Method to build a list tile with optional subtitle
  Widget _buildListTile(String title, {String? subtitle}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: ColorName.bg,
        child: Icon(Icons.share,color: ColorName.green,),
      ),
      title: Text(title,style: TextStyle(fontSize: 14),),
      subtitle: subtitle != null ? Text(subtitle,style: TextStyle(fontSize: 12),) : null,
      trailing: Icon(Icons.chevron_right),
    );
  }

  // Method to build a switch tile
  Widget _buildSwitchTile(String title, bool value) {
    return SwitchListTile(
      title: Text(title),
      activeColor: ColorName.green,
      value: value,
      onChanged: (newValue) {
        setState(() {
          currencyWarning = newValue;
        });
      },
    );
  }
}