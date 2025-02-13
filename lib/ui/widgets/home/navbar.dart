import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_widgets/ui/providers/home/home_provider.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:provider/provider.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Consumer<HomeProvider>(builder: (context, provider, _) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            SizedBox(
              child: SvgPicture.network(
                "https://storage.googleapis.com/cms-storage-bucket/ec64036b4eacc9f3fd73.svg",
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Login",
                        style: textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
