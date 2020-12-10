// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category: Category.all});

  // TODO: Make a collection of cards (102)
//  List<Card> _buildGridCards(BuildContext context) {
//    List<Product> products = ProductsRepository.loadProducts(Category.all);
//    if (products == null || products.isEmpty) {
//      return const <Card>[];
//    }
//
//    final ThemeData theme = Theme.of(context);
//    final NumberFormat formatter = NumberFormat.simpleCurrency(
//        locale: Localizations.localeOf(context).toString());
//
//    return products.map((product) {
//      return Card(
//        elevation: 0.0,
//        clipBehavior: Clip.antiAlias,
//        //TODO: ADJUST cARD HEIGHTS
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            AspectRatio(
//              aspectRatio: 18 / 11,
//              child: Image.asset(
//                product.assetName,
//                package: product.assetPackage,
//                fit: BoxFit.fitWidth,
//              ),
//            ),
//            Expanded(
//              child: Padding(
//                padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    Text(
//                      product == null ? '' : product.name,
//                      style: theme.textTheme.button,
//                      softWrap: false,
//                      overflow: TextOverflow.ellipsis,
//                      maxLines: 1,
//                    ),
//                    SizedBox(
//                      height: 4.0,
//                    ),
//                    Text(
//                      product == null ? '' : formatter.format(product.price),
//                      style: theme.textTheme.caption,
//                    ),
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
//      );
//    }).toList();
//  }

  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
    // TODO: Return an AsymmetricView (104)
    // TODO: Pass Category variable to AsymmetricView (104)
    return AsymmetricView(
        products: ProductsRepository.loadProducts(category),
      );
//      Scaffold(
//      // TODO: Add app bar (102)
//      appBar: AppBar(
//        title: Text('SHRINE'),
//        centerTitle: true,
//        leading: IconButton(
//            icon: Icon(
//              Icons.menu,
//              semanticLabel: 'Menu',
//            ),
//            onPressed: () {}),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(
//              Icons.search,
//              semanticLabel: 'Search',
//            ),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(
//              Icons.tune,
//              semanticLabel: 'Filter',
//            ),
//            onPressed: () {},
//          ),
//        ],
//      ),
//      // TODO: Add a grid view (102)
//      body: AsymmetricView(
//        products: ProductsRepository.loadProducts(Category.all),
//      ),
//
////      GridView.count(
////        crossAxisCount: 2,
////        padding: EdgeInsets.all(16.0),
////        childAspectRatio: 8 / 9,
////        children: _buildGridCards(context),
////      ),
//      // TODO: Set resizeToAvoidBottomInset (101)
//      resizeToAvoidBottomInset: false,
//    );
  }
}
