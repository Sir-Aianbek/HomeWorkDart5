import 'device.dart';

// Умный термостат:
// extends Device — наследует имя и базовые методы
// НЕ использует Adjustable и BatteryPowered по условию задания
class SmartThermostat extends Device {
  // Температура в градусах
  int temperature;

  // Конструктор: имя обязательно, температура по умолчанию 22°
  SmartThermostat(String name, {this.temperature = 22}) : super(name);

  @override
  void turnOn() {
    print('Thermostat $name is ON');
  }

  @override
  void turnOff() {
    print('Thermostat $name is OFF');
  }

  // Переопределяем showInfo — добавляем температуру
  @override
  void showInfo() {
    print('Device: $name, Temperature: $temperature°');
  }
}
