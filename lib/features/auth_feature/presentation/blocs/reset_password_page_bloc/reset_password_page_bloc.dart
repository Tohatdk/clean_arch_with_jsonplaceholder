import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_page_bloc.freezed.dart';
part 'reset_password_page_event.dart';
part 'reset_password_page_state.dart';

class ResetPasswordPageBloc extends Bloc<ResetPasswordPageEvent,ResetPasswordPageState>{
  ResetPasswordPageBloc()
      :


        super(ResetPasswordPageState()){

  }
}