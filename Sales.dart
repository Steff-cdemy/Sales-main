void main() {
    List<String> wochentage = [
        "Montag", 
        "Dienstag", 
        "Mittwoch", 
        "Donnerstag", 
        "Freitag", 
        "Samstag"
    ];

    List<int> dailySales = [2000, 3489, 1400, 2056, 4605, 2533];

   List<String> sonderaktionTage = [
        "Montag",
        "Freitag",   
        "Samstag"
    ];
    getDailySales(wochentage, dailySales, sonderaktionTage);
    //getIsPromtionDay(sonderaktionTage);
    analyzeBestSalesDay(wochentage, dailySales, sonderaktionTage);
}

void getDailySales(List<String> wochentage, List<int> dailySales, List<String> sonderaktionTage) {
    for (int i = 0; i < wochentage.length; i++) {
        if (sonderaktionTage.contains(wochentage[i])) {
            continue;
        }
        print("${wochentage[i]}: ${dailySales[i]} €");
    }
}

//void getIsPromtionDay(List<String> sonderaktionsTag) {
//    print("Sonderaktionstag: $sonderaktionsTag");
//}

void analyzeBestSalesDay(List<String> wochentage, List<int> dailySales, List<String> sonderaktionTage) {
    int bestDayIndex = -1;
    for (int i = 0; i <dailySales.length; i++) {
        if (sonderaktionTage.contains(wochentage[i])) {
            continue;
        }
        if (bestDayIndex == -1 || dailySales[i] > dailySales[bestDayIndex]) {
                bestDayIndex = i;
        }
    }

        if (bestDayIndex == -1) {
         print("Kein normaler Tag vorhanden");
        } else
        print( 
        "Bester Verkaustag (ohne Sonderaktion): ${wochentage[bestDayIndex]} "
        "mit ${dailySales[bestDayIndex]} € Umsatz.",
        );
}
