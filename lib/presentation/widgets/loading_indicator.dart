import 'package:flutter/cupertino.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? color;

  const LoadingIndicator({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RepaintBoundary(
        child: CupertinoActivityIndicator(
          color: color,
        ),
      );
}
