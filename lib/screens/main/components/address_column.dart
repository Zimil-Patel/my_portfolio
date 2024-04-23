import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main/components/area_info_text.dart';

class AddressColumn extends StatelessWidget {
  const AddressColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AreaInfoText(
          title: 'Residence',
          text: 'Gujarat',
        ),
        AreaInfoText(
          title: 'City',
          text: 'Surat',
        ),
        AreaInfoText(
          title: 'Age',
          text: '20',
        ),
      ],
    );
  }
}
