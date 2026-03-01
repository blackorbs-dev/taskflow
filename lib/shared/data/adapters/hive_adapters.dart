import 'package:hive_ce/hive_ce.dart';
import 'package:taskflow/shared/domain/user.dart';

@GenerateAdapters([AdapterSpec<User>()])
part 'hive_adapters.g.dart';