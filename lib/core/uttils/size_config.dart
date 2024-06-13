import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'
    show BuildContext, MediaQuery, SizedBox, SliverToBoxAdapter;

extension SizeConfig on BuildContext {
  double get blockSizeHorizontal {
    final _mediaQueryData = MediaQuery.of(this);
    return (_mediaQueryData.size.width / 100);
  }

  double get blockSizeVertical {
    final _mediaQueryData = MediaQuery.of(this);
    return (_mediaQueryData.size.height / 100);
  }

  double get safeBlockHorizontal {
    final _mq = MediaQuery.of(this);
    final _safePadding = _mq.padding.left + _mq.padding.right;
    return ((_mq.size.height - _safePadding) / 100);
  }

  double get safeBlockVertical {
    final _mq = MediaQuery.of(this);
    final _safePadding = _mq.padding.top + _mq.padding.bottom;
    return ((_mq.size.width - _safePadding) / 100);
  }

  SizedBox get columnSpacer => SizedBox(height: blockSizeVertical * 2);
  SizedBox get rowSpacer => SizedBox(width: blockSizeHorizontal * 2);

  SliverToBoxAdapter get sliverSpacer =>
      SliverToBoxAdapter(child: SizedBox(height: blockSizeVertical * 2));

  double get safePaddingTop => MediaQuery.of(this).padding.top;
}

Widget gap6() {
  return SizedBox(
    height: 6,
  );
}

Widget gap12() {
  return SizedBox(
    height: 12,
  );
}

Widget gap20() {
  return SizedBox(
    height: 20,
  );
}

Widget gapCustom(double height) {
  return SizedBox(
    height: height,
  );
}

Widget gapWidthCustom(double width) {
  return SizedBox(
    width: width,
  );
}

Widget gapWidthColumn({double width = 20}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width),
    child: Column(
      children: [],
    ),
  );
}
