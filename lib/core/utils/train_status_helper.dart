int getCurrentStationIndex(

    List stations,

    String currentStationCode) {

  for (int i = 0;
      i < stations.length;
      i++) {

    if (stations[i]
            ["stationCode"] ==
        currentStationCode) {

      return i;
    }
  }

  return 0;
}