import 'package:flutter/material.dart';
import 'package:payment/Features/checkout/presentation/views/payment_details.dart';
import 'package:payment/Features/checkout/presentation/views/widgets/payment_info_item.dart';
import 'package:payment/Features/checkout/presentation/views/widgets/total_price_widget.dart';
import 'package:payment/core/widgets/custom_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 25,
          ),
          const PaymentItemInfo(
            title: 'Order Subtotal',
            value: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          const PaymentItemInfo(
            title: 'Discount',
            value: r'0$',
          ),
          const SizedBox(
            height: 3,
          ),
          const PaymentItemInfo(
            title: 'Shipping',
            value: r'8$',
          ),
          const Divider(
            thickness: 2,
            height: 34,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const PaymentDetailsView();
              }));
            },
            text: 'Complete Payment',
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
