import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeSFProTextBlack900 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeSFProTextGray600 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 13.fSize,
      );
  static get bodyMediumCatamaranBluegray900 =>
      theme.textTheme.bodyMedium!.catamaran.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumGray80002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80002,
      );
  static get bodySmallSFProDisplayGreenA700 =>
      theme.textTheme.bodySmall!.sFProDisplay.copyWith(
        color: appTheme.greenA700,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeRoboto =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeWhiteA70001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA70001,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
      );
  static get labelLargeGreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green600,
      );
  static get labelLargeGreen60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green60001,
      );
  static get labelLargeSFProTextOnPrimary =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextWhiteA70001 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.6),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeSFCompactDisplay =>
      theme.textTheme.titleLarge!.sFCompactDisplay.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumCatamaran =>
      theme.textTheme.titleMedium!.catamaran.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansBlack900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGray80001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray80001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansGreenA700 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.greenA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDMSansWhiteA70001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProDisplayBlack900 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumSFProDisplayGray700 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumSFProDisplayRedA200 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.redA200,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA70001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA70001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get catamaran {
    return copyWith(
      fontFamily: 'Catamaran',
    );
  }

  TextStyle get sFCompactDisplay {
    return copyWith(
      fontFamily: 'SF Compact Display',
    );
  }
}
