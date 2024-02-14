import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../assets/constants/colors.dart';
import '../../assets/constants/icons.dart';
import 'package:ibaza_second/repositories/catalog.dart';
import '../../models/catalog.dart';
class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);
  @override
  ProductScreenState createState() => ProductScreenState();
}


class ProductScreenState extends State<ProductScreen> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;
  late List<CatalogModel> catalogList;
  @override
  void initState() {
    super.initState();
    fetchCatalog();
  }
  Future<void> fetchCatalog() async {
    final repository = CatalogRepository();
    final catalog = await repository.getCatalog();
    setState(() {
      catalogList = catalog;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (catalogList == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Ushbu takliflarga e\'tibor qarating',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 0.58,
              ),
              itemCount: catalogList.length,
              itemBuilder: (BuildContext context, int index) {
                final product = catalogList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: 4,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPageIndex = page;
                          });
                        },
                        itemBuilder: (BuildContext context, int pageIndex) {
                          return Stack(
                            children: [
                              Image.asset(
                                'assets/images/image${index + 1}.png',
                                fit: BoxFit.cover,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    buildPageIndicator(),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          color: containerBackground,
                          height: 147,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: titleColor),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  product.definition,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: definitionGrey),
                                ),
                                if (product.oldPrice != null)
                                  Text(
                                    product.oldPrice!,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: oldPrice),
                                  ),
                                Text(
                                  product.price,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: price),
                                ),
                                if (product.oldPrice == null)
                                  const SizedBox(height: 15),
                                Row(
                                  children: [
                                    SvgPicture.asset(AppIcons.cart),
                                    const SizedBox(width: 25),
                                    SvgPicture.asset(AppIcons.heart),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildPageIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
              (index) => Container(
            width: 8,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index == _currentPageIndex ? Colors.yellow : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

