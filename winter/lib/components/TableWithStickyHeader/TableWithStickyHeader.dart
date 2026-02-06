import 'package:flutter/material.dart';
import 'package:winter/winter.dart';
import "TableWithStickyHeaderModel.dart";

class TableWithStickyHeader extends StatelessWidget implements WinterView {
  //late final TableWithStickyHeaderController c;
  final WinterLanguageFactory _lf;
  final TableWithStickyHeaderModel _model;
  TableWithStickyHeader(this._lf, this._model);
  @override
  Widget build(BuildContext context) {
    //    return LayoutBuilder(builder: (context, constraints) {
    //      return Desktop(c);
    //    });

    return Column(
      spacing: 13,
      children: [
        Container(
          color: _model.tableHeaderColor,
          child: Table(
            columnWidths: Map.fromEntries(
              _model.columns.indexed.map(
                (a) => MapEntry(a.$1, a.$2.tableColumnWidth),
              ),
            ),
            children: [
              TableRow(
                children: _model.columns
                    .map(
                      (a) => TableCell(
                        child: Padding(
                          padding: _model.tableCellPadding,
                          child: Text(
                            a.name,
                            textAlign: a.isNumberic
                                ? TextAlign.end
                                : TextAlign.start,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Table(
              border: _model.tableBorder,
              columnWidths: Map.fromEntries(
                _model.columns.indexed.map(
                  (a) => MapEntry(a.$1, a.$2.tableColumnWidth),
                ),
              ),
              children: [
                ..._model.rows.map(
                  (a) => TableRow(
                    children: [
                      ..._model.columns.indexed.map(
                        (c) => TableCell(
                          child: Padding(
                            padding: _model.tableCellPadding,
                            child: Align(
                              child: a.children[c.$1].child,
                              alignment: c.$2.isNumberic
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
