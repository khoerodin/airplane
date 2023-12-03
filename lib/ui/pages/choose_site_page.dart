import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgtes/custom_button.dart';
import 'package:airplane/ui/widgtes/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSitePage extends StatelessWidget {
  const ChooseSitePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Your',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Favourite Seat',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ],
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      Widget columnName(String name) {
        return SizedBox(
          width: 48,
          height: 48,
          child: Center(
            child: Text(
              name,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        );
      }

      Widget rowName() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            columnName('A'),
            columnName('B'),
            columnName(''),
            columnName('C'),
            columnName('D'),
          ],
        );
      }

      Widget seatRow({
        required int rowNumber,
        required String seatA,
        required String seatB,
        required String seatC,
        required String seatD,
      }) {
        return Container(
          margin: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItem(
                status: seatA,
              ),
              SeatItem(
                status: seatB,
              ),
              SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    rowNumber.toString(),
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SeatItem(
                status: seatC,
              ),
              SeatItem(
                status: seatD,
              ),
            ],
          ),
        );
      }

      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            rowName(),
            seatRow(
              rowNumber: 1,
              seatA: 'unavailable',
              seatB: 'available',
              seatC: 'unavailable',
              seatD: 'unavailable',
            ),
            seatRow(
              rowNumber: 2,
              seatA: 'available',
              seatB: 'available',
              seatC: 'available',
              seatD: 'unavailable',
            ),
            seatRow(
              rowNumber: 3,
              seatA: 'selected',
              seatB: 'selected',
              seatC: 'available',
              seatD: 'available',
            ),
            seatRow(
              rowNumber: 4,
              seatA: 'available',
              seatB: 'unavailable',
              seatC: 'available',
              seatD: 'available',
            ),
          ],
        ),
      );
    }

    Widget yourSeat() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Your seat',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ),
            Text(
              'A3, B3',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    Widget total() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Total',
                style: greyTextStyle.copyWith(
                  fontWeight: light,
                ),
              ),
            ),
            Text(
              'IDR 540.000',
              style: purpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CheckoutPage(),
            ),
          );
        },
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            const SizedBox(height: 20),
            title(),
            seatStatus(),
            selectSeat(),
            yourSeat(),
            total(),
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
