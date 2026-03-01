import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/router/routes.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/core/util/input_validators.dart';
import 'package:taskflow/shared/ui/toast_manager.dart';
import 'package:taskflow/shared/ui/widgets/primary_button.dart';
import 'package:taskflow/shared/ui/widgets/text_field_title.dart';
import 'package:taskflow/shared/ui/widgets/text_input_field.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import '../controller/signup_state_notifier.dart';
import '../widgets/page_switch_text.dart';
import 'auth_scaffold.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    ref.listenManual(
        signupStateProvider,
        (_, state) {
          if(state.isAuthenticated){
            context.go(Routes.home);
          }
          else {
            final alertInfo = state.alertInfo;
            if (alertInfo != null) {
              ToastManager().show(context, alertInfo);
              ref.read(signupStateProvider.notifier).onAlertShown();
            }
          }
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(signupStateProvider);

    return AuthScaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                context.tr(LocaleKeys.create_account),
                style: context.textStyles.titleLarge,
              ),
              const SizedBox(height: 4,),
              Text(
                context.tr(LocaleKeys.start_organizing_tasks),
                textAlign: TextAlign.center,
                style: context.textStyles.bodyMedium?.copyWith(
                    color: context.colors.mutedForeground
                ),
              ),
              TextFieldTitle(
                  title: context.tr(LocaleKeys.name)
              ),
              TextInputField(
                  initialValue: state.data.name,
                  hint: context.tr(LocaleKeys.name_hint),
                  inputAction: TextInputAction.next,
                  onChanged: ref.read(signupStateProvider.notifier).setName
              ),
              TextFieldTitle(
                  title: context.tr(LocaleKeys.email)
              ),
              TextInputField(
                  initialValue: state.data.email,
                  hint: context.tr(LocaleKeys.email_hint),
                  validator: InputValidator.email,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  onChanged: ref.read(signupStateProvider.notifier).setEmail
              ),
              TextFieldTitle(
                  title: context.tr(LocaleKeys.password)
              ),
              TextInputField(
                  hint: '••••••••',
                  initialValue: state.data.password,
                  validator: InputValidator.password,
                  inputType: TextInputType.visiblePassword,
                  onChanged: ref.read(signupStateProvider.notifier).setPassword
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 16),
                child: PrimaryButton.loader(
                    text: context.tr(LocaleKeys.create_account),
                    loadingText: context.tr(LocaleKeys.creating_account),
                    isLoading: state.isLoading,
                    enabled: state.data.isValid,
                    onPressed: () {
                      if(_formKey.currentState?.validate() == true){
                        ref.read(signupStateProvider.notifier).signup();
                      }
                    }
                ),
              ),
              PageSwitchText(
                  text: context.tr(LocaleKeys.already_have_an_account),
                  actionText: context.tr(LocaleKeys.sign_in),
                  onTap: () => context.pop()
              )
            ],
          ),
        )
    );
  }
}
