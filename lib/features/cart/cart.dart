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
  late List<CartItemModel> _cartItems;
  double _total = 0;
  double _shipping = 0;

  double get subtotal => _total;
  double get shipping => _shipping;
  double get total => _total + _shipping;

  void _calculateTotal() {
    double total = 0;
    for (var item in _cartItems) {
      total += item.product.price * item.quantity;
    }
    setState(() {
      _total = total;
    });
  }

  void onAddCart(int index) {
    setState(() {
      _cartItems[index] = _cartItems[index].copyWith(
        quantity: _cartItems[index].quantity + 1,
      );
    });
    _calculateTotal();
  }

  void onRemoveCart(int index) {
    if (_cartItems[index].quantity > 1) {
      setState(() {
        _cartItems[index] = _cartItems[index].copyWith(
          quantity: _cartItems[index].quantity - 1,
        );
      });
      _calculateTotal();
    }
  }

  @override
  void initState() {
    super.initState();
    _cartItems = List.from(cartMock);
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
                  image: _cartItems[index].product.image,
                  name: _cartItems[index].product.name,
                  price: _cartItems[index].product.price,
                  quantity: _cartItems[index].quantity,
                  onAddCart: () => onAddCart(index),
                  onRemoveCart: () => onRemoveCart(index),
                ),
                itemCount: _cartItems.length,
              ),
              const SizedBox(height: 20),

              //? Resumo do carrinho
              CartSummary(subtotal: _total, shipping: _shipping, total: total),
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
