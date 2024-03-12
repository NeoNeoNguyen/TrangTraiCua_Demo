import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void fetchProductDetailsFromImage() {
    // Gọi API hoặc xử lý logic để lấy thông tin sản phẩm từ hình ảnh
    emit(ProductLoaded(product: [
      Product(
        name: 'UTA - HO1 - CO1',
        importDate: '05/08/2023',
        weight: '0,005kg',
      ),
      Product(
        name: 'UTA - HO2 - CO1',
        importDate: '05/08/2023',
        weight: '0,006kg',
      ),
    ])); // Dữ liệu sản phẩm từ hình ảnh
  }
}

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> product;

  ProductLoaded({required this.product});
}

class Product {
  final String name;
  final String importDate;
  final String weight;

  Product({required this.name, required this.importDate, required this.weight});
}
