import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryWidget extends StatelessWidget {
  final Category? category;
  const CategoryWidget({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category!.title),
    );
  }
}
