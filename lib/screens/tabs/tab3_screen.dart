import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    final r = [
      'Screen dimming 30 min before bed',
      '5-Minute 4-7-8 Breathing relaxation',
      'Sleep soundscape continuous loop',
      'Smart wake-up alarm set for 07:00 AM'
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Bedtime Routines'), actions: [IconButton(icon: const Icon(Icons.check, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final item in r) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Row(children: [
                const Icon(Icons.check_circle_outline, color: AppTheme.primary),
                const SizedBox(width: 14),
                Expanded(child: Text(item, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14))),
              ]),
            ),
          ],
        ],
      ),
    );
  }
}
