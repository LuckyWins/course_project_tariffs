import 'package:flutter/material.dart';

// TODO: review
class RouteErrorScreen extends StatelessWidget {
  final String errorMsg;
  const RouteErrorScreen({required this.errorMsg, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Route Error'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [Text(errorMsg)],
          ),
        ),
      );
}

// class GoRouterRefreshStream extends ChangeNotifier {
//   GoRouterRefreshStream(Stream<dynamic> stream) {
//     notifyListeners();
//     _streamSubscription =
//         stream.asBroadcastStream().listen((dynamic _) => notifyListeners());
//   }
//   late final StreamSubscription<dynamic> _streamSubscription;

//   @override
//   void dispose() {
//     _streamSubscription.cancel();
//     super.dispose();
//   }
// }
