import 'package:flight_ticket_ui/common/CustomAppBar.dart';
import 'package:flight_ticket_ui/common/ListCart.dart';
import 'package:flight_ticket_ui/common/toggle_widget.dart';
import 'package:flight_ticket_ui/models/TicketModel.dart';
import 'package:flutter/material.dart';

class PlaneTicketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Ticket ticket = Ticket();
    ticket.id = "1";
    ticket.sourceStation = "KHI";
    ticket.sourceCity = "Karachi";
    ticket.departureTime = "15:00";
    ticket.destinationStation = "BHW";
    ticket.destinationCity = "Bahawalpur";
    ticket.arrivalTime = "07:00";
    ticket.terminal = "12";
    ticket.game = "F62";
    ticket.boardingTime = "14:30";

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Plane Ticket',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ToggleWidget(
              firstOption: 'Not Used',
              secondOption: 'Already Used',
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true, //bottom description
              children: <Widget>[
                TicketCardWidget(
                  ticket: ticket,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Usually a ListView (as well as GridView, PageView and CustomScrollView) tries to fill all the available space given by the parent element, even when the list items would require less space.
// With shrinkWrap: true, you can change this behavior so that the ListView only occupies the space it needs
