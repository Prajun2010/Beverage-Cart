import 'dart:async';

import 'package:beverage_app/core/presentation/style/colors.dart';
import 'package:flutter/material.dart';

class IncrementorDecrementor extends StatefulWidget {
  final int quantity;
  final int stock;
  final void Function()? increment, decrement;
  const IncrementorDecrementor({
    Key? key,
    required this.quantity,
    this.decrement,
    this.increment,
    this.stock = 0,
  }) : super(key: key);

  @override
  State<IncrementorDecrementor> createState() => _IncrementorDecrementorState();
}

class _IncrementorDecrementorState extends State<IncrementorDecrementor> {
  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 31,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => widget.decrement!(),
            onLongPressStart: (details) {
              timer =
                  Timer.periodic(const Duration(milliseconds: 100), (timer) {
                widget.quantity >= 2 ? widget.decrement!() : timer.cancel();
              });
            },
            onLongPressEnd: (details) {
              timer?.cancel();
            },
            onLongPressCancel: () {
              timer?.cancel();
            },
            child: const CircleAvatar(
              maxRadius: 10,
              child: Icon(
                Icons.remove,
                size: 10,
              ),
            ),
          ),
          Text(widget.quantity.toString()),
          GestureDetector(
            onTap: widget.stock != 0 && widget.stock > widget.quantity
                ? () => widget.increment!()
                : () {},
            onLongPressStart: widget.stock != 0 &&
                    widget.stock > widget.quantity
                ? (details) {
                    timer = Timer.periodic(const Duration(milliseconds: 100),
                        (timer) {
                      if (widget.stock != 0 && widget.stock > widget.quantity) {
                        widget.increment!();
                      }
                    });
                  }
                : (details) {},
            onLongPressEnd: (details) {
              timer?.cancel();
            },
            onLongPressCancel: () {
              timer?.cancel();
            },
            child: CircleAvatar(
              backgroundColor:
                  widget.stock != 0 && widget.stock > widget.quantity
                      ? null
                      : AppColor.neutral,
              maxRadius: 10,
              child: const Icon(
                Icons.add,
                size: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
