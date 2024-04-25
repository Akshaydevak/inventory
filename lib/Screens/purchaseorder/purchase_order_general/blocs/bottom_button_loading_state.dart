part of 'bottom_button_loading_bloc.dart';

 class BottomButtonLoadingState {
   final bool updateSave;
   final bool deleteClear;
   BottomButtonLoadingState( {this.updateSave=false, this.deleteClear=false,});
   BottomButtonLoadingState copyWith({bool? updateSave,bool ? deleteClear }){
     return BottomButtonLoadingState(deleteClear:updateSave??false,updateSave: deleteClear??false );
   }
 }


