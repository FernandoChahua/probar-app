abstract class CustomDateFormatter {
  static final List<String> _months = [
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];
  List<String> get months => _months;

  static String dayName(DateTime date) {
    return '${date.day} de ${_months[date.month - 1]} ${date.year}';
  }

  static String time(DateTime date) {
    return date.hour < 12
        ? '${date.hour}:${date.minute < 10 ? "0${date.minute}" : date.minute} am'
        : '${date.hour - 12}:${date.minute < 10 ? "0${date.minute}" : date.minute} pm';
  }

  static String yearSimple(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  static String day(DateTime date) {
    return '${date.day} ${_months[date.month - 1].substring(0, 3)}.';
  }

  static String differenceTime(DateTime a, DateTime b) {
    final ans = a.difference(b);
    if (ans.inSeconds < 60) {
      return "Ahora";
    } else if (ans.inMinutes < 60) {
      return "Hace ${ans.inMinutes} minutos";
    } else if (ans.inHours < 24) {
      return "Hace ${ans.inHours} minutos";
    } else if (ans.inDays == 1) {
      return "Hace 1 día";
    } else if (ans.inDays < 30) {
      return "Hace ${ans.inDays} días";
    } else if (ans.inDays / 30 < 12) {
      return "Hace ${(ans.inDays / 30).toStringAsFixed(0)} meses";
    } else {
      return "Hace más de 1 año";
    }
  }
}
