import 'lib/device.dart';
import 'lib/adjustable.dart';
import 'lib/battery_powered.dart';
import 'lib/smart_lamp.dart';
import 'lib/smart_speaker.dart';
import 'lib/smart_thermostat.dart';

void main() {
  // Список типа Device — полиморфизм:
  // переменная хранит Device, но внутри могут быть любые подклассы
  List<Device> devices = [
    SmartLamp('LivingRoomLamp'),
    SmartSpeaker('KitchenSpeaker'),
    SmartThermostat('HallThermostat'),
  ];

  // Проходим по каждому устройству в списке
  for (var device in devices) {
    // Вызываем метод устройства — каждый класс выведет своё (полиморфизм)
    device.showInfo();
    device.turnOn();

    // Оператор is проверяет, реализует ли объект интерфейс Adjustable
    // as Adjustable — явное приведение типа, иначе Dart не знает о методе increase()
    if (device is Adjustable) {
      (device as Adjustable).increase();
    }

    // Оператор is проверяет, использует ли объект миксин BatteryPowered
    // as BatteryPowered — явное приведение, иначе Dart не знает о методе showBattery()
    if (device is BatteryPowered) {
      (device as BatteryPowered).showBattery();
    }

    print(''); // Пустая строка для разделения устройств
  }

  // Итоговое сообщение после обработки всех устройств
  print('All devices processed.');
}
