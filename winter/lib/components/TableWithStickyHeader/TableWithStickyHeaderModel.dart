import 'package:flutter/material.dart';
import 'package:winter/winter.dart';

class TableColumn1 {
  final String name;
  final TableColumnWidth tableColumnWidth;
  final bool isNumberic;
  TableColumn1(
    this.name, {
    this.tableColumnWidth = const FlexColumnWidth(),
    this.isNumberic = false,
  });
}

class TableRow1 {
  final List<TableCell1> children;
  TableRow1(this.children);
}

class TableCell1 {
  final Widget child;
  TableCell1(this.child);
}

class TableWithStickyHeaderModel implements WinterModel {
  final List<TableColumn1> columns;
  final List<TableRow1> rows;
  final EdgeInsets tableCellPadding;
  final TableBorder tableBorder;
  final Color tableHeaderColor;

  TableWithStickyHeaderModel(
    this.columns,
    this.rows, {
    this.tableCellPadding = const EdgeInsets.symmetric(
      horizontal: 8,
      vertical: 5,
    ),
    this.tableHeaderColor = Colors.black12,
    this.tableBorder = const TableBorder(
      horizontalInside: BorderSide(color: Colors.black12),
    ),
  });
}
