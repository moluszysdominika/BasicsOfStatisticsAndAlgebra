# Zadanie 1
# Ściągnij plik napoje_po_reklamie.csv. Pozbądź się polskich znaków z nagłówków. 
# Zaimportuj dane do R (read.csv). Sprawdź jaka struktura danych powstała. 
# Oblicz podstawowe statystyki dla zaimportowanych danych dla poszczególnych rodzajów napoi.

> napoje = read.csv("C:/Users/Dominika/Desktop/napoje_po_reklamie.csv", fileEncoding ="UTF-8-BOM", row.names = 1, header = TRUE, sep=";")
> View(napoje)
> typeof(napoje)
[1] "list"
> sapply(napoje, mean)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
109203.83   42626.50  184355.33   60540.92   57229.17  226457.67   62979.50 
> sapply(napoje, sd)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
5312.374   4927.971   3175.161   4707.262   4899.089   6767.659   4769.246 
> sapply(napoje, var)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
28221322   24284894   10081647   22158312   24001077   45801208   22745711 
> sapply(napoje, min)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
102809      34145     178564      52596      48793     215468      54589 
> sapply(napoje, max)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
119110      51504     191763      67979      64720     235802      68841 
> sapply(napoje, median)
pepsi      fanta     żywiec     okocim regionalne       cola       lech 
107600.5    41931.5   183946.0    61654.5    57046.0   226084.0    63404.5 
> sapply(napoje, range)
pepsi fanta żywiec okocim regionalne   cola  lech
[1,] 102809 34145 178564  52596      48793 215468 54589
[2,] 119110 51504 191763  67979      64720 235802 68841
> sapply(napoje, quantile)
pepsi    fanta   żywiec   okocim regionalne     cola     lech
0%   102809.0 34145.00 178564.0 52596.00   48793.00 215468.0 54589.00
25%  105214.2 39233.25 182883.8 58660.75   54606.00 221065.5 60721.75
50%  107600.5 41931.50 183946.0 61654.50   57046.00 226084.0 63404.50
75%  112886.5 46057.75 185737.2 63142.75   60444.75 232853.5 66017.00
100% 119110.0 51504.00 191763.0 67979.00   64720.00 235802.0 68841.00


# Zadanie 2
# Dane dla pepsi i fanty zapisz do oddzielnych wektorów. 
# Wyświetl dla nowo stworzonych wektorów podsumowanie podstawowych statystyk.

> pepsi = as.vector(napoje$pepsi)
> fanta = as.vector(napoje$fanta)
> mean(pepsi)
[1] 109203.8
> sd(pepsi)
[1] 5312.374
> var(pepsi)
[1] 28221322
> min(pepsi)
[1] 102809
> max(pepsi)
[1] 119110
> median(pepsi)
[1] 107600.5
> range(pepsi)
[1] 102809 119110
> mean(fanta)
[1] 42626.5
> sd(fanta)
[1] 4927.971
> var(fanta)
[1] 24284894
> min(fanta)
[1] 34145
> max(fanta)
[1] 51504
> median(fanta)
[1] 41931.5
> range(fanta)
[1] 34145 51504


# Zadanie 3
# Wgraj plik Wzrost.csv. Użyj dla niego funkcji statystyki opisowej.
> wzrost = as.numeric(unlist(read.csv("C:/Users/Dominika/Desktop/Wzrost.csv", header = FALSE,sep=",")))
> mean(wzrost)
[1] 174.1667
> sd(wzrost)
[1] 16.42183
> var(wzrost)
[1] 269.6765
> min(wzrost)
[1] 151
> max(wzrost)
[1] 199
> median(wzrost)
[1] 167.5
> range(wzrost)
[1] 151 199