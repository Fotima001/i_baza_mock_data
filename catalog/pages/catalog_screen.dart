import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:ibaza_second/catalog/pages/product_screen.dart';

import '../../assets/constants/colors.dart';
import '../../assets/constants/icons.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({
    Key? key,
  }) : super(key: key);

  @override
  CatalogPageState createState() => CatalogPageState();
}

class CatalogPageState extends State<CatalogPage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Katalog',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        toolbarHeight: 116,
        title: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(
                      builder: (context) {
                        return GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: SvgPicture.asset(AppIcons.catalog),
                        );
                      },
                    ),
                    const Gap(8),
                    const Text(
                      'Katalog',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(15),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: surveyColour,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: SvgPicture.asset(AppIcons.search, height: 20, width: 20),
                      onPressed: ()  {
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        cursorColor: null,
                        decoration: InputDecoration(
                          hintText: 'Izlash ',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Gap(22),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: const ProductScreen()
    );
  }
}
