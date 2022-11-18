import 'package:flutter/cupertino.dart';
import 'package:kp/model/butroll.dart';

int SelectedDiameter = 0;
var diameterinput;
const double _kItemExtent = 22.0;
const List<String> _fruitNames = <String>[
  "17",
  "18",
  "19",
  "20",
  "21",
  "22",
  "23",
  "24",
  "25",
  "26",
  "27",
  "28",
  "29",
  "30",
  "31",
  "32",
  "33",
  "34",
  "35",
  "36",
  "37",
  "38",
  "39",
  "40",
  "41",
  "42",
  "43",
  "44",
  "45",
  "46"
];

class PickerDiameter extends StatefulWidget {
  const PickerDiameter({super.key});

  @override
  State<PickerDiameter> createState() => _PickerDiameterState();
}

class _PickerDiameterState extends State<PickerDiameter> {
  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoPicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    diameterinput = (SelectedDiameter + 17);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Select Diameter: '),
          CupertinoButton(
            padding: EdgeInsets.zero,
            // Display a CupertinoPicker with list of fruits.
            onPressed: () => _showDialog(
              CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: _kItemExtent,
                // This is called when selected item is changed.
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    SelectedDiameter = selectedItem;
                  });
                },
                children:
                    List<Widget>.generate(_fruitNames.length, (int index) {
                  return Center(
                    child: Text(
                      _fruitNames[index],
                    ),
                  );
                }),
              ),
            ),
            // This displays the selected fruit name.
            child: Text(
              _fruitNames[SelectedDiameter],
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
