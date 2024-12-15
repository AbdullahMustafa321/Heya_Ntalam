import 'package:flutter/material.dart';
import 'package:heya_ntalam/features/home/presentation/views/widgets/sessions_list_view_body.dart';

import '../../data/models/category_model.dart';

class SessionsListView extends StatelessWidget {
  const SessionsListView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SessionsListViewBody(categoryModel: categoryModel,),
    );
  }
}
