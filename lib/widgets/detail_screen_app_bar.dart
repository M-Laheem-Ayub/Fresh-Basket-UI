import 'package:flutter/material.dart';

class DetailScreenAppBar extends StatefulWidget implements PreferredSizeWidget {
  DetailScreenAppBar({
    super.key,
    required this.index,
    required this.isFavorite,
    required this.setFavorite,
  });

  final int index;
  final bool isFavorite; // Make sure this is final
  final Function setFavorite;

  @override
  State<DetailScreenAppBar> createState() => _DetailScreenAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _DetailScreenAppBarState extends State<DetailScreenAppBar> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  void toggleFavorite() {
    widget.setFavorite(widget.index);
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xfff6b33e),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: toggleFavorite,
          icon: Icon(
            _isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.white,
            size: 28,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
