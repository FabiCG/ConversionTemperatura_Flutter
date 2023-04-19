class ConversorKelvin {

  double KCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  double KFahrenheit(double kelvin) {
    return (kelvin - 273.15)* 9 / 5 + 32;
  }

}