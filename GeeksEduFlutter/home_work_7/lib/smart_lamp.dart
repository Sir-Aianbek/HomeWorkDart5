import 'device.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

// Умная лампа:
// extends Device        — наследует имя и базовые методы
// with BatteryPowered   — добавляет уровень заряда (миксин)
// implements Adjustable — обязана реализовать increase() и decrease()
// ВАЖНО: порядок обязателен — сначала with, потом implements
class SmartLamp extends Device with BatteryPowered implements Adjustable {
  // Яркость лампы от 0 до 100
  int brightness;

  // Конструктор: имя обязательно, яркость по умолчанию 50
  SmartLamp(String name, {this.brightness = 50}) : super(name);

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  // Увеличить яркость на 10, но не выше 100
  @override
  void increase() {
    brightness = (brightness + 10).clamp(0, 100);
  }

  // Уменьшить яркость на 10, но не ниже 0
  @override
  void decrease() {
    brightness = (brightness - 10).clamp(0, 100);
  }

  // Переопределяем showInfo — добавляем яркость
  @override
  void showInfo() {
    print('Device: $name, Brightness: $brightness%');
  }
}
