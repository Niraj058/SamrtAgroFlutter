import 'package:flutter/material.dart';
import 'package:flutter_app/ui/app/app_drawer.dart';

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Soil Details"),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
//          defaultColumnWidth:
//              FixedColumnWidth(MediaQuery.of(context).size.width / 3),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.none),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Peat soil Parametrs'))),
              TableCell(
                child: Center(child: Text('Units')),
              ),
              TableCell(child: Center(child: Text('Peat Studies'))),
              TableCell(child: Center(child: Text('Other Reserchs'))),
            ]),
            TableRow(children: [
              TableCell(
                child: Center(child: Text('Specific Gravity')),
                verticalAlignment: TableCellVerticalAlignment.bottom,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('--')),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(child: Text('1.49')),
              ),
              TableCell(
                child: Center(child: Text('1.4 - 1.7')),
                verticalAlignment: TableCellVerticalAlignment.top,
              ),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Water Content'))),
              TableCell(
                child: Center(child: Text('%')),
              ),
              TableCell(child: Center(child: Text('630'))),
              TableCell(child: Center(child: Text('450 - 1500'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Void Ratio'))),
              TableCell(
                child: Center(child: Text('--')),
              ),
              TableCell(child: Center(child: Text('10.4'))),
              TableCell(child: Center(child: Text('6.89 - 11.09'))),
            ]),
          TableRow(children: [
              TableCell(child: Center(child: Text('Acidity (pH)'))),
              TableCell(
                child: Center(child: Text('--')),
              ),
              TableCell(child: Center(child: Text('3.1'))),
              TableCell(child: Center(child: Text('3 - 7'))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('Organic Conain'))),
              TableCell(
                child: Center(child: Text('%')),
              ),
              TableCell(child: Center(child: Text('98'))),
              TableCell(child: Center(child: Text('62.5 - 98'))),
            ])
          ],
        ),
      ),
    );
  }
}
