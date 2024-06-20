import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  SettingsList(
      sections: [
        SettingsSection(
          title: const Text('Common'),
          tiles: <SettingsTile>[
            SettingsTile.navigation(
              leading: const Icon(Icons.language),
              title: const Text('Language'),
              value: const Text('English'),
            ),
            SettingsTile.switchTile(
              onToggle: (value) {/*ref.read(themeProvider).state = value?ThemeMode.system:ThemeMode.light;*/},
              initialValue: true,
              leading: const Icon(Icons.format_paint),
              title: const Text('Dark theme'),
            ),
            SettingsTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              value: const Text('On'),
              onPressed: (context) {},
            ),
          ],
        ),
      ],
    );
  }
}