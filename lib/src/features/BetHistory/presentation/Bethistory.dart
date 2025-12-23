import 'package:bet/src/utils/abuse/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class BetHistoryPage extends StatelessWidget {
  const BetHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        // leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'История ставок',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          ],
        ),
        actions: const [
          Icon(Icons.filter_alt_outlined, color: Colors.grey),
          SizedBox(width: 12),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.tune, color: Colors.grey),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
          
Container(
  color: ColorName.white,
  child: Column(
    children: [
      
              /// Balance block
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Основной',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '0.19 TMTM',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D3C61),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Все счета',
                          style: TextStyle(
                            color: Color(0xFF4C7DA6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.keyboard_arrow_down,
                            color: Color(0xFF4C7DA6)),
                      ],
                    ),
                  ],
                ),
              ),
  
              const SizedBox(height: 5),
  
              /// Action card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF4F8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      _ActionItem(
                        icon: Icons.calendar_month,
                        label: 'За месяц',
                      ),
                      _ActionItem(
                        icon: Icons.sell_outlined,
                        label: 'Продажа',
                      ),
                      _ActionItem(
                        icon: Icons.add_circle,
                        label: 'Пополнить',
                        iconColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
  10.boxH
    ],
  ),
),
            const SizedBox(height: 60),

            /// Empty state illustration (placeholder)
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: const Color(0xFFE6EEF6),
                borderRadius: BorderRadius.circular(80),
              ),
              child: const Icon(
                Icons.event_note,
                size: 80,
                color: Color(0xFF6FA8DC),
              ),
            ),

            const SizedBox(height: 24),

            /// Empty text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'За выбранный период ставки отсутствуют.\n'
                'Делайте больше прогнозов и побеждайте!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// CTA button
            SizedBox(
              width: 200,
              height: 44,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4C8DCB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Сделать ставку',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// Action item widget
class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const _ActionItem({
    required this.icon,
    required this.label,
    this.iconColor = const Color(0xFF4C7DA6),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor,size: 20,),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF4C7DA6),
          ),
        ),
      ],
    );
  }
}
