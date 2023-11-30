import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:app_for_santa/gen/assets.gen.dart';
import 'package:app_for_santa/src/core/di/injector.dart';
import 'package:app_for_santa/src/core/extensions/extensions.dart';
import 'package:app_for_santa/src/core/routes/app_router.dart';
import 'package:app_for_santa/src/features/view_list/data/models/kid_model.dart';
import 'package:app_for_santa/src/features/view_list/domain/repositories/kid_repository.dart';
import 'package:app_for_santa/src/features/view_list/presentation/pages/add_kid_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../localization/l10n.dart';
import '../../../../core/widgets/widgets.dart';
import '../add_kid_cubit/add_kid_cubit.dart';
import '../widgets/kid_card.dart';

@RoutePage()
class ViewList extends StatelessWidget {
  const ViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: l10n.kidList),
        body: BlocBuilder<AddKidCubit, AddKidState>(
          builder: (context, state) {
            final kidList = getIt<KidRepository>().getKidList();
            // return state.when(
            //   initial: () {
            //     return const SizedBox();
            //   },
            //   empty: () => const EmptyStateWidget(isAddEvent: true),
            //   success: (_) => ListView.builder(
            //       padding: const EdgeInsets.symmetric(horizontal: 12),
            //       itemCount: kidList.length,
            //       itemBuilder: (context, index) {
            //         return KidCard(
            //             kidModel: KidModel(
            //                 country: kidList[index].country,
            //                 name: kidList[index].name,
            //                 isNaughty: kidList[index].isNaughty));
            //       }),
            // );
            return Stack(
              children: [
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: kidList.length,
                    itemBuilder: (context, index) {
                      return KidCard(
                          kidModel: KidModel(
                              index: index,
                              country: kidList[index].country,
                              name: kidList[index].name,
                              isNaughty: kidList[index].isNaughty));
                    }),
                Positioned(
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    width: MediaQuery.of(context).size.width,
                    child: CustomButton(
                      label: l10n.addKid,
                      onPressed: () {
                        //route to the create event page..
                        //on created show this page
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => const AddKid());
                      },
                      isDisabled: false,
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
