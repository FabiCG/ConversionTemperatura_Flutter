class ConversorCelsius {
  
  double cFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double cKelvin(double celsius) {
    return celsius + 273.15;
  }
}