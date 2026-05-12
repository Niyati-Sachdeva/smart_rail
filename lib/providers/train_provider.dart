import 'package:flutter/material.dart';
import 'package:smart_railway_app/services/train_api_service.dart';
class TrainProvider extends ChangeNotifier{
  Map<String,dynamic>?trainData;
  bool isLoading=false;
  String?errorMessage;
  final TrainApiService trainApiService=TrainApiService();
  Future<void> getTrainStatus(
      String trainNumber) async {

    try {

      isLoading = true;

      errorMessage = null;

      notifyListeners();

      trainData =
          await trainApiService
              .fetchTrainStatus(
                  trainNumber);

    } catch (e) {

      errorMessage =
          "Failed to load train data";
    }

    isLoading = false;

    notifyListeners();
      }
}