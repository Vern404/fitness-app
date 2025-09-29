import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ifit/core/enums/exclusive_invite_status.dart';
import 'package:ifit/core/theme/light_theme.dart';
import 'package:ifit/core/utils/assets.dart';
import 'package:ifit/core/utils/constants.dart';
import 'package:ifit/core/utils/style.dart';
import 'package:ifit/feature/exclusive_studio/domain/exclusive_studio_entity.dart';
import 'package:ifit/feature/exclusive_studio/presentation/manager/exclusive_studio_cubit.dart';
import 'package:ifit/feature/exclusive_studio/presentation/manager/exclusive_studio_state.dart';
import 'package:ifit/presentation/widgets/common_app_bar.dart';
import 'package:ifit/presentation/widgets/images/app_network_image_viewer.dart';
import 'package:ifit/presentation/widgets/no_data_found.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExclusiveStudioPage extends StatefulWidget {
  const ExclusiveStudioPage({required this.cubit, super.key});

  final ExclusiveStudioCubit cubit;

  @override
  State<ExclusiveStudioPage> createState() => _ExclusiveStudioPageState();
}

class _ExclusiveStudioPageState extends State<ExclusiveStudioPage> {
  ExclusiveStudioCubit get cubit => widget.cubit;

  @override
  void initState() {
    super.initState();
    cubit.navigator.context = context;
    cubit.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'My Studio',
        onBack: () => cubit.navigator.navigator.pop(context, true),
      ),
      body: BlocBuilder<ExclusiveStudioCubit, ExclusiveStudioState>(
        bloc: cubit,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(kScreenPadding),
            child: Skeletonizer(
              enabled: state.loading,
              child: (state.exclusiveStudioList?.items ?? []).isEmpty
                  ? Center(child: NoDataFound(text: 'No Studio Added'))
                  : ListView.builder(
                      itemCount:
                          (state.exclusiveStudioList?.items ?? []).length,
                      itemBuilder: (context, index) {
                        return _buildStudioCard(
                          state.exclusiveStudioList!.items![index],
                        );
                      },
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStudioCard(ExclusiveStudioEntity data) {
    final status = ExclusiveInviteStatus.fromString(data.status ?? '');
    return InkWell(
      onTap: () => cubit.viewStudioDetail(data.studio),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: LightColors.grey, width: 1),
        ),
        child: Column(
          spacing: 8,
          children: [
            Stack(
              children: [
                AppNetworkImageViewer(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  borderRadius: BorderRadius.circular(0),
                  image: data.studio?.pictures?.first ?? kPlaceHolderImage,
                ),
                data.statusLabel == 'Request to Leave Studio'
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.black.withValues(alpha: 0.3),
                        ),
                      )
                    : SizedBox.shrink(),
                data.statusLabel == 'Request to Leave Studio'
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: LightColors.scrim,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            data.statusLabel ?? '',
                            style: LightTextStyles.textTheme.bodySmall
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: LightColors.processing,
                                ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(
                    data.studio?.name ?? '',
                    style: LightTextStyles.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: LightColors.onTertiary,
                    ),
                  ),
                  Row(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Assets.location,
                        height: 16,
                        colorFilter: ColorFilter.mode(
                          LightColors.tertiary,
                          BlendMode.srcIn,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          data.studio?.address ?? '',
                          style: LightTextStyles.textTheme.bodySmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10,
                    children: [
                      if (status == ExclusiveInviteStatus.pending)
                        _buildCtaButton(
                          status == ExclusiveInviteStatus.pending,
                          data.statusLabel == 'Request to Leave Studio'
                              ? ExclusiveInviteStatus.leaveStudio
                              : status ?? ExclusiveInviteStatus.pending,
                          data.id ?? '',
                          data.studio?.name ?? '',
                        ),
                      _buildCtaButton(
                        false,
                        data.statusLabel == 'Request to Leave Studio'
                            ? ExclusiveInviteStatus.leaveStudio
                            : status ?? ExclusiveInviteStatus.pending,
                        data.id ?? '',
                        data.studio?.name ?? '',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCtaButton(
    bool isChat,
    ExclusiveInviteStatus status,
    String id,
    String name,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        if (isChat) {
          cubit.showStudioInvitation(id, name);
          // cubit.startChat(id);
        } else {
          switch (status) {
            case ExclusiveInviteStatus.rejected:
              () {};
              break;
            case ExclusiveInviteStatus.active:
              cubit.showLeaveStudioRequest(id);
              break;
            case ExclusiveInviteStatus.pending:
              cubit.acceptStudio(id, name); // open accept/decline UI
              break;
            case ExclusiveInviteStatus.leaveStudio:
              () {};
              break;
          }
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          gradient: status == ExclusiveInviteStatus.pending && !isChat
              ? AppStyle.linearGradientBg(context)
              : null,
          color: isChat
              ? LightColors.surface
              : status == ExclusiveInviteStatus.leaveStudio
              ? LightColors.grey
              : status != ExclusiveInviteStatus.pending
              ? LightColors.card
              : null,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 1,
            color: isChat
                ? LightColors.primary
                : status != ExclusiveInviteStatus.pending &&
                      status != ExclusiveInviteStatus.leaveStudio
                ? LightColors.orange
                : Colors.transparent,
          ),
        ),
        child: Text(
          isChat
              ? 'Reject invite'
              : status != ExclusiveInviteStatus.pending ||
                    status == ExclusiveInviteStatus.leaveStudio
              ? 'Leave Studio'
              : 'Accept invite',
          style: LightTextStyles.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: isChat
                ? LightColors.primary
                : status == ExclusiveInviteStatus.leaveStudio
                ? LightColors.tertiary
                : status != ExclusiveInviteStatus.pending
                ? LightColors.primary
                : LightColors.surface,
          ),
        ),
      ),
    );
  }
}
