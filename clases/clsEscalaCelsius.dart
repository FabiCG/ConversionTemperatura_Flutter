class ConversorCelsius {
  
  double CFahrenheit(double celsius) {
    return (celsius * 9 / 5) + 32;
  }

  double CKelvin(double celsius) {
    return celsius + 273.15;
  }
}