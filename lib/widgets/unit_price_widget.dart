import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';

class UnitPriceWidget extends StatefulWidget {
  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();


}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: 'Unité: '),
            TextSpan(
                text: 'Balance ',
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: '(max. 20)', style: TextStyle(fontSize: 12)),
          ])),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(right: 20, left: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(0.2))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.amount < 20
                    ? () {
                        setState(() {
                          widget.amount++;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: const Icon(Icons.add_circle_outline,
                    size: 50, color: Colors.green),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                    child: Text.rich(TextSpan(
                        text: widget.amount.toString(),
                        style: const TextStyle(fontSize: 40))),
                  ),
                ),
              ),
              GestureDetector(
                onTap: widget.amount > 0
                    ? () {
                        setState(() {
                          widget.amount--;
                          widget.cost = widget.price * widget.amount;
                        });
                      }
                    : null,
                child: const Icon(
                  Icons.remove_circle_outline,
                  size: 50,
                  color: AppColors.Vin_Rouge_Color,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(TextSpan(children: [
                const TextSpan(text: 'Prix : '),
                TextSpan(
                    text: '\$${widget.price}',
                    style: const TextStyle(fontWeight: FontWeight.bold))
              ])),
              Text(
                '\$${widget.cost}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
