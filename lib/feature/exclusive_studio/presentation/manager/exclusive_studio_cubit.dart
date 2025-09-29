import 'dart:async';

import 'package:cometchat_chat_uikit/cometchat_chat_uikit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:ifit/core/alert/app_snack_bar.dart';
import 'package:ifit/core/utils/assets.dart';
import 'package:ifit/domain/repositories/database/remote_database_repository.dart';
import 'package:ifit/feature/exclusive_studio/domain/exclusive_studio_entity.dart';
import 'package:ifit/feature/exclusive_studio/presentation/manager/exclusive_studio_navigator.dart';
import 'package:ifit/feature/exclusive_studio/presentation/manager/exclusive_studio_state.dart';
import 'package:ifit/feature/exclusive_studio/presentation/widget/exclusive_studio_invitation.dart';
import 'package:ifit/feature/exclusive_studio/presentation/widget/leave_exclusive_studio_sheet.dart';
import 'package:ifit/presentation/pages/main/live_chat/live_chat_initial_params.dart';
import 'package:ifit/presentation/pages/main/studio_detail/studio_detail_initial_params.dart';
import 'package:ifit/presentation/sheets/success_sheet.dart';

class ExclusiveStudioCubit extends Cubit<ExclusiveStudioState> {
  final ExclusiveStudioNavigator navigator;
  final AppSnackBar snackBar;
  RemoteDatabaseRepository remoteDatabaseRepository;

  ExclusiveStudioCubit({
    required this.navigator,
    required this.snackBar,
    required this.remoteDatabaseRepository,
  }) : super(ExclusiveStudioState.initial());

  BuildContext get context => navigator.context;

  onInit() {
    getStudioList();
  }

  viewStudioDetail(ExclusiveStudioDetailsEntity? data) {
    navigator.openStudioDetail(
      StudioDetailInitialParams(id: data?.id ?? '', hideNextButton: true),
    );
  }

  startChat(String id) async {
    try {
      await _fetchCometChatUser(id).then((value) {
        navigator.openLiveChat(LiveChatInitialParams(user: value));
      });
    } catch (error) {
      snackBar.show(snackBarType: SnackBarType.error, error.toString());
    }
  }

  Future<User> _fetchCometChatUser(String uid) async {
    final completer = Completer<User>();
    CometChat.getUser(
      uid,
      onSuccess: (user) => completer.complete(user),
      onError: (error) => completer.completeError(error),
    );
    return completer.future;
  }

  Future<void> getStudioList() async {
    try {
      emit(state.copyWith(loading: true));
      final data = await remoteDatabaseRepository.getExclusiveStudioList();
      emit(state.copyWith(exclusiveStudioList: data));
    } catch (e) {
      snackBar.show(e.toString());
      emit(state.copyWith(loading: false));
    } finally {
      emit(state.copyWith(loading: false));
    }
  }

  Future<void> _requestLeaveStudio(String studioId) async {
    try {
      emit(state.copyWith(loading: true));
      await remoteDatabaseRepository.requestLeaveStudio(studioId: studioId);
    } catch (e) {
      snackBar.show(e.toString());
      emit(state.copyWith(loading: false));
    } finally {
      refresh();
    }
  }

  void showStudioInvitation(String id, String studioName) {
    navigator.navigator.showBottomSheet(
      context,
      ExclusiveStudioInvitationSheet(
        onAccept: () => acceptStudio(id, studioName),
        onReject: () => _rejectStudio(id),
        studioName: studioName,
      ),
    );
  }

  void showLeaveStudioRequest(String id) {
    navigator.navigator.showBottomSheet(
      context,
      LeaveExclusiveStudioSheet(onTap: () => _requestLeaveStudio(id)),
    );
  }

  Future<void> acceptStudio(String studioId, String studioName) async {
    try {
      emit(state.copyWith(loading: true));
      await remoteDatabaseRepository.acceptExclusiveStudio(studioId: studioId);
    } catch (e) {
      snackBar.show(e.toString());
      emit(state.copyWith(loading: false));
    } finally {
      refresh();
      navigator.navigator.showBottomSheet(
        context,
        SuccessSheet(
          title: 'Welcome on board!',
          subTitle:
              'You\'ve successfully joined $studioName. '
              'You\'re now linked to this studio and can start '
              'managing your schedule and accepting class assignments.',
          image: Assets.filledPartySuccess,
        ),
      );
    }
  }

  Future<void> _rejectStudio(String studioId) async {
    try {
      emit(state.copyWith(loading: true));
      await remoteDatabaseRepository.rejectExclusiveStudio(studioId: studioId);
    } catch (e) {
      snackBar.show(e.toString());
      emit(state.copyWith(loading: false));
    } finally {
      refresh();
    }
  }

  Future<void> refresh() async {
    navigator.navigator.pop(context, true);
    getStudioList();
    emit(state.copyWith(loading: false));
  }
}
