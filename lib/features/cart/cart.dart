import 'package:flutter/material.dart';
import 'package:petyz/features/cart/components/cart_itemtile.dart';
import 'package:petyz/features/cart/components/sumary.dart';
import 'package:petyz/models/cart.dart';
import 'package:petyz/themes/color_theme.dart';
import 'package:petyz/themes/text_theme.dart';
import 'package:petyz/widgets/main_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double _total = 0;
  double _shipping = 100;

  double get subtotal => _total;
  double get shipping => _shipping;
  double get total => _total + _shipping;

  void _calculateTotal() {
    double total = 0;
    for (var item in cartMock) {
      total += item.product.price * item.quantity;
    }
    setState(() {
      _total = total;
    });
  }


  void _calculateShipping() {
    double shipping = 0;
    for (var item in cartMock) {
      shipping += item.product.price * item.quantity;
    }
    setState(() {
      _shipping = shipping;
    });
  }


  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Carrinho', style: AppTextStyles.text24Bold(context)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //? Itens do carrinho
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const Divider(
                  thickness: 0.8,
                  height: 32,
                  color: AppColors.border,
                ),
                itemBuilder: (context, index) => CartItemTile(
                  image: cartMock[index].product.image,
                  name: cartMock[index].product.name,
                  price: cartMock[index].product.price,
                  quantity: cartMock[index].quantity,
                ),
                itemCount: cartMock.length,
              ),
              const SizedBox(height: 20),

              //? Resumo do carrinho
              CartSummary(subtotal: _total, shipping: 100, total: total),
              const SizedBox(height: 20),

              //? Botão de finalizar pedido
              PrimaryButton(label: 'Finalizar Pedido', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
