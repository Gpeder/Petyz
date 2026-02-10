import 'package:petyz/models/products.dart';

class CartItemModel {
  final ProductModel product;
  final int quantity;

  const CartItemModel({
    required this.product,
    required this.quantity,
  });

  CartItemModel copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return CartItemModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}

final cartMock = <CartItemModel>[
  CartItemModel(
    product: productsMock[0],
    quantity: 1,
  ),
  CartItemModel(
    product: productsMock[2],
    quantity: 2,
  ),
  CartItemModel(
    product: productsMock[5],
    quantity: 1,
  ),
  CartItemModel(
    product: productsMock[7],
    quantity: 3,
  ),
  CartItemModel(
    product: productsMock[9],
    quantity: 2,
  ),
];
