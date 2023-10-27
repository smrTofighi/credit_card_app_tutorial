import 'package:awesome_card/awesome_card.dart';
import 'package:credit_card_app/controllers/card_controller.dart';
import 'package:credit_card_app/core/utils/card_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditCardWidget extends StatelessWidget {
  CreditCardWidget({
    super.key,
    required this.cardNumber,
    required this.cardName,
    required this.cardExpiry,
    required this.cardType,
    required this.cvv2,
  });

  final CardController cardController = Get.find<CardController>();
  final String cardNumber;
  final String cardName;
  final String cvv2;
  final String cardExpiry;

  final String cardType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CreditCard(
          cardNumber: cardNumber,
          cardExpiry: cardExpiry,
          cardHolderName: cardName,
          cvv: cvv2,
          bankName: CardUtils.getCardTypeName(cardType),
          //cardType: CardType.masterCard, // Optional if you want to override Card Type
          showBackSide: false,
          frontBackground: CardUtils.getCardColor(cardType),
          backBackground: CardBackgrounds.white,
          showShadow: true,
          height: 200,
          
          cardType: CardType.other,
        ),
        Positioned(
          bottom: 35,
          right: 30,
          child: ImageIcon(
            Image.asset(
              CardUtils.getCardType(cardType),
            ).image,
            size: 50,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
