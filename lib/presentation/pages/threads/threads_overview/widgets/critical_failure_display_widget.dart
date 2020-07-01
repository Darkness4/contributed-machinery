import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ThreadFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
              insufficientPermissions: (_) => 'Insufficient permissions',
              unexpected: (e) =>
                  'Unexpected error.\n${e.error}\nPlease, contact support.',
              orElse: () => 'Unexpected error.\nPlease, contact support.',
            ),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              print('Sending email...');
            },
            textColor: Theme.of(context).accentColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
