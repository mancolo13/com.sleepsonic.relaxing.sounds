import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}
class _Tab1ScreenState extends State<Tab1Screen> {
  final channels = [
    {'name': 'Ocean Waves', 'val': 0.8, 'icon': Icons.waves},
    {'name': 'Forest Campfire', 'val': 0.5, 'icon': Icons.local_fire_department},
    {'name': 'Gentle Thunder', 'val': 0.3, 'icon': Icons.flash_on},
    {'name': 'Deep White Noise', 'val': 0.6, 'icon': Icons.air},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SleepSonic • Audio Mixer'), actions: [IconButton(icon: const Icon(Icons.volume_up, color: AppTheme.primary), onPressed: () => RoutingService.openPartnerLink())]),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [AppTheme.card, AppTheme.surface]), borderRadius: BorderRadius.circular(20)),
            child: Row(children: const [
              Icon(Icons.nightlight_round, size: 36, color: AppTheme.primary),
              SizedBox(width: 14),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Deep Sleep Ambience', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text('4 Active Audio Channels', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
              ]),
            ]),
          ),
          const SizedBox(height: 16),
          for (int i = 0; i < channels.length; i++) ...[
            Container(
              margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
              child: Column(children: [
                Row(children: [
                  Icon(channels[i]['icon'] as IconData, color: AppTheme.primary),
                  const SizedBox(width: 12),
                  Text(channels[i]['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ]),
                Slider(
                  value: channels[i]['val'] as double,
                  activeColor: AppTheme.primary,
                  onChanged: (val) => setState(() => channels[i]['val'] = val),
                ),
              ]),
            ),
          ],
        ],
      ),
    );
  }
}
