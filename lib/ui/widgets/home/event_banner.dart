import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class EventBanner extends StatefulWidget {
  const EventBanner({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  State<EventBanner> createState() => _EventBannerState();
}

class _EventBannerState extends State<EventBanner> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        Uri uri = Uri.parse(widget.url);

        canLaunchUrl(uri).then((canLaunch) {
          if (canLaunch) {
            launchUrl(uri);
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.primary,
              AppColors.secondary,
            ],
          ),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: textTheme.titleSmall,
          ),
        ),
      ),
    );
  }
}
