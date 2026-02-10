import 'package:flutter/material.dart';
import 'package:petyz/features/profile/components/config_data.dart';
import 'package:petyz/features/profile/components/general_data.dart';
import 'package:petyz/features/profile/components/personal_data.dart';
import 'package:petyz/themes/text_theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil', style: AppTextStyles.text24Bold(context)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            const PersonalData(),
            const SizedBox(height: 20),
            GeneralData(),
            const SizedBox(height: 20),
            ConfigData(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


