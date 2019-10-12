import 'package:flutter/widgets.dart';

/// SafeSize is a custom widget of [Padding], which wraps child inside
/// a Padding.
///
/// If has no padding, just return the child to avoid unnecessary deep level
class SafeSize extends StatelessWidget {
  /// Width (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact width of this widget
  final String width;

  /// Height (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact height of this widget
  final String height;

  /// child
  final Widget child;

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  SafeSize({
    Key key,
    this.width,
    this.height,
    @required this.child,
  })  : assert(width != null && width.isNotEmpty,
            'Width must be `wrap`, `full` or a fixed value like `250`'),
        assert(height != null && height.isNotEmpty,
            'Height must be `wrap`, `full` or a fixed value like `250`'),
        /*assert((width == 'full' && height == 'full'),
            'Width and height cannot be both full'),*/
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    BoxConstraints constraints;
    final infinity = double.infinity;

    print('SafeSize: w=$width, h=$height');
    if (width == 'full') {
      if (height == 'full') {
        /*current = SafeConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: current,
        );*/
      } else if (height == 'wrap') {
//        constraints = BoxConstraints.tightFor(height: 50);
        current = UnconstrainedBox(
          child: current,
          alignment: AlignmentDirectional.topStart,
          constrainedAxis: Axis.horizontal,
        );
      } else {
        /*double dHeight = double.parse(height);
        current = SizedBox(
          width: infinity,
          height: dHeight,
          child: current,
        );*/
        print('Temporarily not handle: SafeSize: w=$width, h=$height');
      }
    } else if (width == 'wrap') {
      if (height == 'full') {
        current = UnconstrainedBox(
          child: current,
          alignment: AlignmentDirectional.topStart,
          constrainedAxis: Axis.vertical,
        );
      } else if (height == 'wrap') {
        // Already assign child to current, and do nothing
        // current = child;
      } else {
        /*double dHeight = double.parse(height);
        constraints = BoxConstraints.tightFor(height: dHeight);*/
        print('Temporarily not handle: SafeSize: w=$width, h=$height');
      }
    } else {
      // fixed width
      double dWidth = double.parse(width);
      if (height == 'full') {
        constraints = BoxConstraints.tightFor(width: dWidth, height: infinity);
      } else if (height == 'wrap') {
        constraints = BoxConstraints.tightFor(width: dWidth);
      } else {
        double dHeight = double.parse(height);
        constraints = BoxConstraints.tightFor(width: dWidth, height: dHeight);
      }
    }

    print('SafeSize: w=$width, h=$height => constraints=$constraints');
//    return SafeConstrainedBox(constraints: constraints, child: current);
    return LayoutBuilder(builder: (context, pConstraints) {
      print('parent constraints=$pConstraints');
      print('width: tightWidth=${pConstraints.hasTightWidth}, '
          'boundedWidth=${pConstraints.hasBoundedWidth}, '
          'infiniteWidth=${pConstraints.hasInfiniteWidth}, '
          'maxWidth=${pConstraints.maxWidth}, '
          'minWidth=${pConstraints.minWidth}, '
          '');
      print('height: hasHeight=${pConstraints.hasTightHeight}, '
          'boundedHeight=${pConstraints.hasBoundedHeight}, '
          'infiniteHeight=${pConstraints.hasInfiniteHeight}, '
          'maxHeight=${pConstraints.maxHeight}, '
          'minHeight=${pConstraints.minHeight}, '
          '');

      return current;
    });
  }
}
