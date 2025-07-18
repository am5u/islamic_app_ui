import 'package:flutter/material.dart';
import 'package:islamicapp_ui/core/constant/colors.dart';
import 'package:islamicapp_ui/core/constant/images_string.dart';

class QuranHeader extends StatefulWidget {
  final Function(String) onSearchChanged;

  const QuranHeader({super.key, required this.onSearchChanged});

  @override
  State<QuranHeader> createState() => _QuranHeaderState();
}

class _QuranHeaderState extends State<QuranHeader> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(TImages.headerLogo)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            controller: _searchController,
            cursorColor: TColors.primaryColor,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge!.apply(color: Colors.white),
            onChanged: (value) {
              widget.onSearchChanged(value);
            },
            decoration: InputDecoration(
              labelText: 'Sura Name',
              labelStyle: Theme.of(
                context,
              ).textTheme.bodyLarge!.apply(color: Colors.white),
              prefixIcon: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(TImages.quranIcon)),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: TColors.primaryColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
