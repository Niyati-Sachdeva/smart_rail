String cleanCityName(
    String stationName) {

  return stationName

      .replaceAll("Central", "")

      .replaceAll("Jn", "")

      .replaceAll("Jn.", "")

      .replaceAll("Junction", "")

      .replaceAll("Ctl", "")

      .replaceAll("Central", "")

      .trim();
}