import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:app_for_santa/localization/l10n.dart';
import 'package:app_for_santa/src/core/extensions/extensions.dart';
import 'package:app_for_santa/src/core/widgets/widgets.dart';
import 'package:app_for_santa/src/features/view_list/data/models/kid_model.dart';
import 'package:app_for_santa/src/features/view_list/presentation/add_kid_cubit/add_kid_cubit.dart';
import 'package:app_for_santa/src/features/view_list/presentation/form_cubit/add_form_cubit.dart';
import 'package:app_for_santa/src/features/view_list/presentation/widgets/custom_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/themes/themes.dart';

class AddKid extends StatelessWidget {
  const AddKid({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController countryController = TextEditingController();
    return Scaffold(
      body: CustomCard(
        child: BlocBuilder<AddFormCubit, AddFormState>(
          builder: (context, state) {
            bool isNaughty = false;
            state.whenOrNull(naughty: () {
              isNaughty = true;
            });
            return Container(
              padding: const EdgeInsets.all(12),
              height: 360.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  10.verticalSpace,
                  CustomTextFormField(
                      controller: nameController,
                      labelText: l10n.enterName,
                      onChanged: (string) {
                        //to cubit 's model
                      }),
                  CustomTextFormField(
                      controller: countryController,
                      labelText: l10n.enterCountry,
                      onChanged: (string) {
                        //use this string to update the value of a model in cubit
                      }),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: isNaughty ? 2 : 1,
                        onChanged: (value) {
                          context.read<AddFormCubit>().emitNice();
                          //update value in cubit
                        },
                      ),
                      Text(l10n.nice),
                      16.horizontalSpace,
                      Radio(
                        value: 2,
                        groupValue: isNaughty ? 2 : 1,
                        onChanged: (value) {
                          context.read<AddFormCubit>().emitNaughty();
                        },
                      ),
                      Text(l10n.naughty)
                    ],
                  ),
                  CustomButton(
                      isDisabled: false,
                      label: l10n.addKid,
                      onPressed: () {
                        context.showCreateEventDialog(
                          icon: SvgImage(
                            Assets.icons.checkCircle,
                            height: 24.h,
                            width: 24.w,
                            color: AppColors.secondary,
                          ),
                          title: l10n.confirm,
                          description: l10n.newAddition,
                          content: CustomButton(
                            isDisabled: false,
                            label: l10n.ok,
                            onPressed: () {
                              final newKid = KidModel(
                                  index: 10,
                                  name: nameController.text,
                                  country: countryController.text,
                                  isNaughty: isNaughty);
                              context.read<AddKidCubit>().addKid(newKid);
                              context.popRoute();
                            },
                          ),
                        );
                        //
                      })
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
