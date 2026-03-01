import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/core/error/extensions.dart';
import 'package:taskflow/core/network/response.dart';
import 'package:taskflow/shared/domain/alert_info.dart';
import '../../domain/models/login_info.dart';
import '../../domain/repository/auth_repository.dart';
import '../../auth_module.dart';
import 'auth_state.dart';

part 'login_state_notifier.g.dart';

@riverpod
class LoginStateNotifier extends _$LoginStateNotifier {

  late final AuthRepository _repository;

  @override
  AuthState<LoginInfo> build() {
    _repository = ref.read(authRepositoryProvider);

    return AuthState(
      data: LoginInfo()
    );
  }

  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    final response = await _repository.login(state.data);
    response.onSuccess((_) =>
        state = state.copyWith(
          isLoading: false,
          isAuthenticated: true
        )
    ).onError((error) =>
        state = state.copyWith(
          alertInfo: AlertInfo(message: error.message),
          isLoading: false
        )
    );
  }

  void setEmail(String email){
    state = state.copyWith(
      data: state.data.copyWith(email: email)
    );
  }

  void setPassword(String password){
    state = state.copyWith(
        data: state.data.copyWith(password: password)
    );
  }

  void onAlertShown(){
    state = state.copyWith(alertInfo: null);
  }
}