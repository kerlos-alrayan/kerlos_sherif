import 'package:flutter/material.dart';
import 'package:kerlos_sherif/core/res/responsive.dart';
import 'package:kerlos_sherif/features/certificates/presentation/views/certificates_view_desk.dart';
import 'package:kerlos_sherif/features/certificates/presentation/views/certificates_view_mob.dart';

class CertificatesView extends StatelessWidget {
  const CertificatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: CertificatesViewMob(),
      tablet: CertificatesViewMob(),
      desktop: CertificatesViewDesk(),
    );
  }
}
