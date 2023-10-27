import 'package:credit_card_app/gen/assets.gen.dart';
import 'package:credit_card_app/models/type_model.dart';
import 'package:flutter/material.dart';

class CardUtils {
  static getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static getCardTypeFrmNumber(String text) {
    List list = [
      '5859',
      '6273',
      '6392',
      '6103',
      '6395',
      '6104',
      '6037',
      '6279',
      '6219',
      '6392',
      '6038',
    ];

    if (list.contains(text)) {
      switch (text) {
        case '5859':
          return TypeModel.tejarat;
        case '6273':
          return TypeModel.ghavamin;
        case '6382':
          return TypeModel.keshavarzi;
        case '6103':
          return TypeModel.maskan;
        case '6395':
          return TypeModel.mehrIran;
        case '6104':
          return TypeModel.mellat;
        case '6037':
          return TypeModel.melli;
        case '6279':
          return TypeModel.saderat;
        case '6219':
          return TypeModel.saman;
        case '6392':
          return TypeModel.sepah;
        case '6038':
          return TypeModel.shahr;
      }
    } else {
      return TypeModel.invalid;
    }
  }

  static getCardColor(String type) {
    switch (type) {
      case TypeModel.tejarat:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF6363FF),
        );
      case TypeModel.ghavamin:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFAC2FFF),
        );
      case TypeModel.keshavarzi:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF01DB29),
        );
      case TypeModel.maskan:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFFF6600),
        );
      case TypeModel.mehrIran:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF37FF28),
        );
      case TypeModel.mellat:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFFF3333),
        );
      case TypeModel.melli:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFC7B600),
        );
      case TypeModel.saderat:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF0B0BFF),
        );
      case TypeModel.saman:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFF00D9FF),
        );
      case TypeModel.sepah:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFDB8001),
        );
      case TypeModel.shahr:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xFFE00000),
        );
      case TypeModel.invalid:
        return Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: const Color(0xff0B0B0F),
        );
    }
  }

  static getCardTypeName(String type) {
    switch (type) {
      case TypeModel.tejarat:
        return 'تجارت';
      case TypeModel.ghavamin:
        return 'اقتصاد نوین';
      case TypeModel.keshavarzi:
        return 'کشاورزی';
      case TypeModel.maskan:
        return 'مسکن';
      case TypeModel.mehrIran:
        return 'مهر ایران';
      case TypeModel.mellat:
        return 'ملت';
      case TypeModel.melli:
        return 'ملی';
      case TypeModel.saderat:
        return 'صادرات';
      case TypeModel.saman:
        return 'سامان';
      case TypeModel.sepah:
        return 'سپه';
      case TypeModel.shahr:
        return 'شهر';
      case TypeModel.invalid:
        return '';
    }
  }

  static getCardType(String type) {
    switch (type) {
      case TypeModel.tejarat:
        return Assets.logo.tejarat.path;

      case TypeModel.ghavamin:
        return Assets.logo.ghavamin.path;
      case TypeModel.keshavarzi:
        return Assets.logo.keshavarzi.path;
      case TypeModel.maskan:
        return Assets.logo.maskan.path;
      case TypeModel.mehrIran:
        return Assets.logo.mehrIran.path;
      case TypeModel.mellat:
        return Assets.logo.mellat.path;
      case TypeModel.melli:
        return Assets.logo.melli.path;
      case TypeModel.saderat:
        return Assets.logo.saderat.path;
      case TypeModel.saman:
        return Assets.logo.saman.path;
      case TypeModel.sepah:
        return Assets.logo.sepah.path;
      case TypeModel.shahr:
        return Assets.logo.shahr.path;
      case TypeModel.invalid:
        return Assets.icons.creditCard.path;
      default:
    }
  }
}
