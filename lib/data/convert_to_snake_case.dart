String convertToSnakeCase(String input) {
  // Boşluklar, noktalar, eğik çizgiler ve diğer özel karakterler yerine "_" ile değiştirilir.
  String result = input.replaceAll(RegExp(r"[^\w(),\'\-]+"), '_');

  // Birden fazla "_" karakterini tek bir "_" karakteriyle değiştirir.
  result = result.replaceAll(RegExp(r'_+'), '_');

  // Gereksiz "_" karakterini baştan ve sondan kaldırır.
  result = result.trim();

  return result;
}
//https://raw.githubusercontent.com/muhammetaydinn/exercises.json/master/exercises/3_4_Sit-Up/images/0.jpg
//https://raw.githubusercontent.com/muhammetaydinn/exercises.json/master/exercises/3_4_Sit_Up/images/0.jpg