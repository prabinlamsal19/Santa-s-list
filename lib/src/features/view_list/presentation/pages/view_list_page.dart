import 'package:app_for_santa/src/core/extensions/extensions.dart';
import 'package:app_for_santa/src/features/view_list/presentation/cubit/add_kid_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../localization/l10n.dart';
import '../../../../core/themes/themes.dart';
import '../../../../core/widgets/widgets.dart';
import '../widgets/custom_card.dart';

@RoutePage()
class ViewList extends StatelessWidget {
  const ViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: l10n.myBookings),
      body: BlocBuilder<AddKidCubit, AddKidState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () { 
              return  const CustomCard(
                child: SizedBox.expand(),
              ).pOnly(bottom: 12, left: 12, right: 12);
            } ,
            
            empty: () => const EmptyStateWidget(isAddEvent: true) 
            
            ,
                      success: (profileModel) => Center(
                        child: EmptyStateWidget(
                          isAddEvent: true,
                          onPressed: () => context.navigateTo(
                            TimeSlotRoute(
                                floor:
                                    profileModel.getUserProfile.floor ?? ''),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            success: (bookings) {
              return RefreshIndicator(
                color: AppColors.secondary,
                onRefresh: () => reload(),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    return MyBookingCard(
                      id: bookings[index].id,
                      title: bookings[index].title,
                      startTime: bookings[index].startTime,
                      endTime: bookings[index].endTime,
                      date: bookings[index].date,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
