import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appcolors.dart';
import 'package:payflow/shared/themes/apptextstyles.dart';
import 'package:payflow/shared/widgets/set_label_button/set_label_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String tittle;
  final String subtittle;

  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secondaryLabel,
      required this.secondaryOnPressed,
      required this.tittle,
      required this.subtittle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.7),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text.rich(
                    TextSpan(
                        style: TextStyles.buttonBoldHeading,
                        text: tittle,
                        children: [
                          TextSpan(
                              style: TextStyles.buttonHeading,
                              text: '\n$subtittle')
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                Divider(
                  height: 1,
                  color: AppColors.stroke,
                ),
                SetLabelButton(
                    enablePrimaryColor: true,
                    primaryLabel: primaryLabel,
                    primaryOnPressed: primaryOnPressed,
                    secondaryLabel: secondaryLabel,
                    secondaryOnPressed: secondaryOnPressed)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
