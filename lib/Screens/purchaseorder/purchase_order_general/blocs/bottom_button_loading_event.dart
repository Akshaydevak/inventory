part of 'bottom_button_loading_bloc.dart';


abstract class BottomButtonLoadingEvent {
 const BottomButtonLoadingEvent();
}
class SaveupdateButtonEvent extends BottomButtonLoadingEvent{
  final bool val;
  SaveupdateButtonEvent({required this.val});
}
class deleteClearButtonEvent extends BottomButtonLoadingEvent{
  final bool val;
  deleteClearButtonEvent({required this.val});
}
