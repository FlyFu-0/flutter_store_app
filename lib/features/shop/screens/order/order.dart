import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/features/shop/screens/order/widgets/orders_list.dart';
import 'package:t_store/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'My Orders',
            style: Theme.of(context).textTheme.headlineSmall,
          )),
    body: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: TOrderListItems(),
    ),
    );
  }
}