import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:taskflow/core/constants/store_keys.dart';
import 'package:taskflow/core/secure_storage/secure_storage_impl.dart';
import 'package:taskflow/features/ai/presentation/pages/ai_screen.dart';
import 'package:taskflow/features/auth/presentation/pages/login_screen.dart';
import 'package:taskflow/features/auth/presentation/pages/signup_screen.dart';
import 'package:taskflow/features/home/presentation/pages/home_screen.dart';
import 'package:taskflow/features/profile/presentation/pages/profile_screen.dart';
import 'package:taskflow/features/projects/presentation/pages/projects_screen.dart';
import 'package:taskflow/features/tasks/presentation/pages/tasks_screen.dart';
import '../../shared/ui/pages/dashboard_container.dart';
import 'routes.dart';

part 'router.g.dart';

@riverpod
GoRouter router(Ref ref) => GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (_,_) => const LoginScreen(),
      redirect: (_,_) async{
        final secureStorage = ref.read(secureStorageProvider);
        final token = await secureStorage.read(StoreKeys.accessToken);
        if(token?.isNotEmpty == true){
          return Routes.home;
        }
        return null;
      },
    ),
    GoRoute(
      path: Routes.signup,
      builder: (_,_) => const SignupScreen()
    ),
    ShellRoute(
      builder: (_,_, body) => DashboardContainer(body: body),
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (_,_) => const HomeScreen(),
        ),
        GoRoute(
          path: Routes.projects,
          builder: (_,_) => const ProjectsScreen(),
        ),
        GoRoute(
          path: Routes.tasks,
          builder: (_,_) => const TasksScreen(),
        ),
        GoRoute(
          path: Routes.ai,
          builder: (_,_) => const AIScreen()
        ),
        GoRoute(
          path: Routes.profile,
          builder: (_,_) => const ProfileScreen(),
        )
      ]
    )
  ],
);