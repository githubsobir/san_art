// Transport turlarini ifodalovchi enum
enum TransportType {
  car,
  bus,
  bicycle,
  airplane,
  train,
}

void main() {
  // Enum qiymatini yaratish
  TransportType myTransport = TransportType.car;

  // Switch orqali tekshirish
  switch (myTransport) {
    case TransportType.car:
      print('Siz mashinada ketayapsiz.');
      break;
    case TransportType.bus:
      print('Siz avtobusda ketayapsiz.');
      break;
    case TransportType.bicycle:
      print('Siz velosipedda ketayapsiz.');
      break;
    case TransportType.airplane:
      print('Siz samolyotda uchyapsiz.');
      break;
    case TransportType.train:
      print('Siz poezdda ketayapsiz.');
      break;
  }
}