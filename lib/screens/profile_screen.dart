import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),

                      const ProfileHeader(
                        name: 'Farrahdila Hidayatun Karim',
                        nim: '25.11.6341',
                      ),

                      const SizedBox(height: 24),

                      const ProfileInfo(
                        programStudi: 'S1 Informatika',
                        email: 'f.hidayatun@students.amikom.ac.id',
                        lokasi: 'Sleman, Daerah IstimewaYogyakarta, Indonesia',
                      ),

                      const SizedBox(height: 16),

                      const SocialMediaRow(),

                      const SizedBox(height: 16),

                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutScreen(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.info_outline),
                        label: const Text('Tentang Aplikasi'),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: ActionButtons(
                    onEdit: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Tombol Edit diklik')),
                      );
                    },
                    onShare: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Tombol Bagikan diklik')),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
