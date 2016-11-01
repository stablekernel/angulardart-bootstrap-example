// Copyright (c) 2016, Erik Rahtjen. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    directives: const [BS_DIRECTIVES],
    templateUrl: 'app_component.html')
class AppComponent {
  List alerts = [
    {
      "type": "danger",
      "msg": "Oh snap! Change a few things up and try submitting again.",
      'dismissible': false
    },
    {
      "type": "success",
      "msg": "Well done! You successfully read this important alert message.",
      "dismissible": true
    }
  ];

  closeAlert(num i) {
    alerts.removeAt(i);
  }

  addAlert() {
    alerts.add({"msg": "Another alert!", 'dismissible': true, "type": "info"});
  }
}
