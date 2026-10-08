import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sleep Timer Dial'), actions: [IconButton(icon: const Icon(Icons.alarm, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Spacer(),
          Container(
            width: 200, height: 200,
            decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.card, border: Border.all(color: AppTheme.primary, width: 4)),
            child: const Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text('45:00', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              Text('MINUTES', style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold, fontSize: 12)),
            ])),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () => RoutingService.openPartnerLink(),
            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primary, foregroundColor: Colors.black, minimumSize: const Size(double.infinity, 54)),
            child: const Text('Start Fade-out Timer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
        ]),
      ),
    );
  }
}
