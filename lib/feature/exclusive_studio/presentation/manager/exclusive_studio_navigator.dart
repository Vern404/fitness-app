import 'package:flutter/cupertino.dart';
import 'package:ifit/core/enums/router_path.dart';
import 'package:ifit/core/navigation/app_navigator.dart';
import 'package:ifit/presentation/pages/main/live_chat/manager/live_chat_navigator.dart';
import 'package:ifit/presentation/pages/main/studio_detail/studio_detail_navigator.dart';

class ExclusiveStudioNavigator with LiveChatRoute, StudioDetailRoute {
  ExclusiveStudioNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

mixin ExclusiveStudioRoute {
  Future<bool?> openExclusiveStudio() {
    return navigator.push<bool>(context, RouterUrl.exclusiveStudio.path, '');
  }

  AppNavigator get navigator;

  BuildContext get context;
}
