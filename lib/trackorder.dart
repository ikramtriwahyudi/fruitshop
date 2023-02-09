import 'package:flutter/material.dart';
import 'package:fruitmarket/home.dart';
import 'package:order_tracker/order_tracker.dart';

class Trackorder extends StatefulWidget {
  const Trackorder({super.key});

  @override
  State<Trackorder> createState() => _TrackorderState();
}

List<TextDto> orderList = [
  TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
  TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
  TextDto("Your item has been picked up by courier partner.",
      "Tue, 29th Mar '22 - 5:00pm"),
];

List<TextDto> shippedList = [
  TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
  TextDto("Your item has been received in the nearest hub to you.", null),
];

List<TextDto> outOfDeliveryList = [
  TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
];

List<TextDto> deliveredList = [
  TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
];

class _TrackorderState extends State<Trackorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Order Status Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            OrderTracker(
              status: Status.delivered,
              activeColor: Colors.green,
              inActiveColor: Colors.grey[300],
              orderTitleAndDateList: orderList,
              shippedTitleAndDateList: shippedList,
              outOfDeliveryTitleAndDateList: outOfDeliveryList,
              deliveredTitleAndDateList: deliveredList,
            ),
            const SizedBox(height: 60),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minWidth: 345,
              height: 45,
              color: const Color(0xff82CD47),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ),
                );
              },
              child: const Text(
                "Back to home",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
