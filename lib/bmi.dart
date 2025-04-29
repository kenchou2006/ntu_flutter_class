import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第一頁')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: heightController,
              decoration: const InputDecoration(
                labelText: '身高 (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(
                labelText: '體重 (kg)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double height = double.parse(heightController.text);
                final double weight = double.parse(weightController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(height: height, weight: weight),
                  ),
                );
              },
              child: const Text('下一頁'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final double height;
  final double weight;

  const SecondPage({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    final double bmi = weight / ((height / 100) * (height / 100));

    return Scaffold(
      appBar: AppBar(title: const Text('第二頁')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('身高: $height cm', style: const TextStyle(fontSize: 20)),
            Text('體重: $weight kg', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Text('BMI: ${bmi.toStringAsFixed(2)}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(bmi: bmi),
                  ),
                );
              },
              child: const Text('下一頁'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final double bmi;

  const ThirdPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String bmiCategory;
    if (bmi < 18.5) {
      bmiCategory = '體重過輕';
    } else if (bmi < 24.9) {
      bmiCategory = '正常體重';
    } else if (bmi < 29.9) {
      bmiCategory = '體重過重';
    } else {
      bmiCategory = '肥胖';
    }

    return Scaffold(
      appBar: AppBar(title: const Text('第三頁')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('BMI: ${bmi.toStringAsFixed(2)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Text('BMI分類: $bmiCategory', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
