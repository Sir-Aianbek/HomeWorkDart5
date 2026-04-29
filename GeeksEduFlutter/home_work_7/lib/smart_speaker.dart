import 'device.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

// Умная колонка:
// extends Device        — наследует имя и базовые методы
// with BatteryPowered   — добавляет уровень заряда (миксин)
// implements Adjustable — обязана реализовать increase() и decrease()
class SmartSpeaker extends Device with BatteryPowered implements Adjustable {
  // Громкость от 0 до 100
  int volume;

  // Конструктор: имя обязательно, громкость по умолчанию 20
  SmartSpeaker(String name, {this.volume = 20}) : super(name);

  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  // Увеличить громкость на 5, но не выше 100
  @override
  void increase() {
    volume = (volume + 5).clamp(0, 100);
  }

  // Уменьшить громкость на 5, но не ниже 0
  @override
  void decrease() {
    volume = (volume - 5).clamp(0, 100);
  }

  // Переопределяем showInfo — добавляем громкость
  @override
  void showInfo() {
    print('Device: $name, Volume: $volume%');
  }
}
