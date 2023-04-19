class ConversorFahrenheit {

  double FCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  double FKelvin(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9 + 273.15;
  }

}