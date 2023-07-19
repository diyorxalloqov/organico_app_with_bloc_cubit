// ignore_for_file: must_be_immutable
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:organico_with_bloc_cubit/models/productsModel.dart';
import 'package:organico_with_bloc_cubit/service/productService.dart';

part 'product_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProductsInitialState extends ProductsState {
  const ProductsInitialState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProductsLoadingState extends ProductsState {
  const ProductsLoadingState();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ProductsErrorState extends ProductsState {
  String errorMessage;

  ProductsErrorState(this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}

class ProductsCompleteState extends ProductsState {
  ProductsModel products;
  ProductsCompleteState(this.products);

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
