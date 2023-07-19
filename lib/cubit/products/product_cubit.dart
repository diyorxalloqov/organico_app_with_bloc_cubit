part of 'product_state.dart';

class ProductCubit extends Cubit<ProductsState> {
  ProductCubit() : super(const ProductsInitialState()) {
    getProducts();
  }

  ProductService productService = ProductService();

  // logica

  Future<void> getProducts() async {
    emit(const ProductsLoadingState());
    dynamic response = await productService.getProducts();
    if (response is ProductsModel) {
      emit(ProductsCompleteState(response));
    } else {
      emit(ProductsErrorState(response));
    }
  }
}
