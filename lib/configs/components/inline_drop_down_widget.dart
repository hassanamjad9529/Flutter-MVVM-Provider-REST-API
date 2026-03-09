import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testt/configs/color/color.dart';

class InlineDropdown<T> extends StatefulWidget {
  final String hintText;
  final String? leadingSVG;
  final IconData? leadingIcon;
  final List<T> items;
  final T? selectedItem;
  final Function(T?) onChanged;
  final String Function(T) itemLabelBuilder;
  final double height;
  final double borderRadius;
  final Color? backgroundColor;
  final Color iconColor;
  final Color textColor;
  final double expandedHeight;

  const InlineDropdown({
    super.key,
    required this.hintText,
    this.leadingSVG,
    this.leadingIcon,
    required this.items,
    this.selectedItem,
    required this.onChanged,
    required this.itemLabelBuilder,
    this.height = 50.0,
    this.borderRadius = 15.0,
    this.backgroundColor,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
    this.expandedHeight = 200.0,
  });

  @override
  State<InlineDropdown<T>> createState() => _InlineDropdownState<T>();
}

class _InlineDropdownState<T> extends State<InlineDropdown<T>> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: toggleExpansion,
          child: Container(
            height: widget.height,
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? AppColors.greyColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (widget.leadingSVG != null) ...[
                      SvgPicture.asset(widget.leadingSVG ?? ''),
                    ],
                    if (widget.leadingIcon != null) ...[
                      Icon(
                        widget.leadingIcon,
                        color: widget.iconColor,
                      ),
                    ],
                    const SizedBox(width: 10),
                    Text(
                      widget.selectedItem != null
                          ? widget.itemLabelBuilder(widget.selectedItem!)
                          : widget.hintText,
                      style: TextStyle(
                        color: widget.textColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: widget.iconColor,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded)
          Container(
            height: widget.expandedHeight,
            margin: const EdgeInsets.only(top: 5.0),
            decoration: BoxDecoration(
              color: widget.backgroundColor ?? AppColors.greyColor,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              children: widget.items
                  .map(
                    (item) => InkWell(
                      onTap: () {
                        widget.onChanged(item);
                        setState(() {
                          isExpanded = false;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Text(
                          widget.itemLabelBuilder(item),
                          style: TextStyle(color: widget.textColor),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
