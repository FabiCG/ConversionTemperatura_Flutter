class ConversorKelvin {
  
  double kCelsius(double kelvin) {
    return kelvin - 273.15;
  }

  double kFahrenheit(double kelvin) {
    return (kelvin - 273.15)* 9 / 5 + 32;
  }

}