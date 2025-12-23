import 'package:flutter/material.dart';

class CouponGenerationPage extends StatelessWidget {
  const CouponGenerationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F9),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        centerTitle: true,
        title: const Text(
          'Генерация купона',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 16),

          /// Form Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: const [
                  _InputField(
                    label: 'Сумма ставки',
                    value: '20',
                  ),
                  SizedBox(height: 24),
                  _InputField(
                    label: 'Желаемый выигрыш',
                    value: '200',
                  ),
                  SizedBox(height: 24),
                  _DropdownField(
                    label: 'Выберите время до начала',
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          /// Bottom Button
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: null, // disabled
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFE5ECF2),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Собрать',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Text input imitation
class _InputField extends StatelessWidget {
  final String label;
  final String value;

  const _InputField({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        const Divider(height: 1),
      ],
    );
  }
}

/// Dropdown imitation
class _DropdownField extends StatelessWidget {
  final String label;

  const _DropdownField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            Expanded(
              child: Text(
                '',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.grey),
          ],
        ),
        const SizedBox(height: 6),
        const Divider(height: 1),
      ],
    );
  }
}
