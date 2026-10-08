import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab4Screen extends StatelessWidget {
  const Tab4Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sleep Quality Log'), actions: [IconButton(icon: const Icon(Icons.bed, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(20)),
            child: Column(children: const [
              Text('Sleep Score: 88 / 100', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.greenAccent)),
              SizedBox(height: 6),
              Text('Duration: 7h 45m • Deep Sleep: 2h 10m', style: TextStyle(color: AppTheme.textSecondary, fontSize: 13)),
            ]),
          ),
        ],
      ),
    );
  }
}
