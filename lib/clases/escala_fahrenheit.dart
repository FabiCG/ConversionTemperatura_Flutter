class ConversorFahrenheit {

  double fCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  double fKelvin(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9 + 273.15;
  }

}