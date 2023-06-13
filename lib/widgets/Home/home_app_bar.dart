import 'package:flutter/material.dart';
import 'package:tcc_prefeitura/utils/styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: Icon(
                Icons.sort_rounded,
                color: text,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Color(0XFFF65959),
              ),
              Text(
                "Pinhais, Paraná",
                style: heading3,
              )
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );
  }
}
