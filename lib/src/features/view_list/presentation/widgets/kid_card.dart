import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:app_for_santa/src/features/view_list/presentation/widgets/custom_card.dart';
import 'package:app_for_santa/src/features/view_list/presentation/widgets/naughty_nice_text.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../gen/assets.gen.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/themes/themes.dart';
import '../../data/models/kid_model.dart';
import '../add_kid_cubit/add_kid_cubit.dart';

class KidCard extends StatelessWidget {
  const KidCard({super.key, required this.kidModel});
  final KidModel kidModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        //route to events detail page with just the id. More details will be fetched there
        // context.navigateTo()
      },
      child: CustomCard(
        color: AppColors.secondary,
        borderRadius: 4.r,
        child: Container(
          height: 36.h,
          margin: 12.all,
          child: Row(
            children: [
              SizedBox(
                width: 42.w,
                child: const Icon(Icons.abc),
              ),
              const VerticalDivider(),
              8.horizontalSpace,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      kidModel.name,
                      style: AppStyles.text14PxSemiBold.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                    1.h.verticalSpace,
                    Text(
                      kidModel.country,
                      style: AppStyles.text10Px.white,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    context
                        .read<AddKidCubit>()
                        .toggleNaughty(index: kidModel.index);
                  },
                  child: NaughtyNiceText(
                    text: kidModel.isNaughty ? 'Naughty' : 'Nice',
                  )),
            ],
          ),
        ),
      ),
    ).pOnly(bottom: 8);
  }
}
