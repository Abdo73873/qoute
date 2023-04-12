import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'random_code_state.dart';

class RandomCodeCubit extends Cubit<RandomCodeState> {
  RandomCodeCubit() : super(RandomCodeInitial());
}
