# Zadanie 1
# Dla zmiennych losowych przedstawionych w tabelach obliczyć podstawowe statystyki.

> elements <- seq(1, 6, 1)
> probability <- rep(1/6, 6)
> mean(elements)
[1] 3.5
> sd(elements)
[1] 1.870829
> var(elements)
[1] 3.5
> median(elements)
[1] 3.5


# Zadanie 2
# Wygeneruj próby dla n=100 dla następujących rozkładów: Bernoulliego, Dwumianowego, Poissona.

> n=100
> p=0.2
> k=5
> install.packages("Rlab")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Dominika/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
próbowanie adresu URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/Rlab_2.15.1.zip'
Content type 'application/zip' length 347255 bytes (339 KB)
downloaded 339 KB

package ‘Rlab’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Dominika\AppData\Local\Temp\Rtmp6P28ho\downloaded_packages
> library(Rlab)
Rlab 2.15.1 attached.


Dołączanie pakietu: ‘Rlab’

Następujące obiekty zostały zakryte z ‘package:stats’:
  
  dexp, dgamma, dweibull, pexp, pgamma, pweibull, qexp, qgamma, qweibull, rexp,
rgamma, rweibull

Następujący obiekt został zakryty z ‘package:datasets’:
  
  precip

> bernoulli <- rbern(n,p)
> bernoulli
[1] 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0
[46] 1 0 0 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 1 1 1
[91] 1 0 0 0 0 0 0 1 0 1
> binomial <- rbinom(n,k,p)
> binomial
[1] 0 0 1 3 1 0 1 1 1 0 1 0 3 2 1 2 1 1 2 0 1 1 1 1 1 2 1 1 0 1 1 1 0 2 0 2 0 0 1 0 2 3 1 2 1
[46] 1 2 1 1 1 1 0 1 1 2 1 0 1 1 0 1 2 0 2 2 1 1 2 0 1 1 2 1 2 3 2 0 1 0 1 1 0 1 1 1 0 1 0 1 0
[91] 0 0 1 1 0 1 0 1 0 1
> poisson <- rpois(n,p)
> poisson
[1] 0 0 1 0 1 0 0 0 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 2 0 0
[46] 1 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0 1 0 0 0 0 0 2 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
[91] 0 0 1 1 0 0 0 0 0 0


# Zadanie 3
# Policz dla nich statystyki podstawowe (średnią, wariancję, kurtozę i skośność).

> mean(bernoulli)
[1] 0.24
> median(bernoulli)
[1] 0
> var(bernoulli)
[1] 0.1842424
> kurt(bernoulli)
[1] 2.482456
> skew(bernoulli)
[1] 1.217562

> mean(binomial)
[1] 0.97
> median(binomial)
[1] 1
> var(binomial)
[1] 0.6152525
> kurt(binomial)
[1] 3.014779
> skew(binomial)
[1] 0.5571351

> mean(poisson)
[1] 0.2
> median(poisson)
[1] 0
> var(poisson)
[1] 0.2222222
> kurt(poisson)
[1] 7.719008
> skew(poisson)
[1] 2.325826


# Zadanie 4
# Dla rozkładów Dwumianowego, Poissona narysuj wykresy rozkładu prawdopodobieństwa 
# (dobierz dowolnie parametry).

> hist(binomial, col="Green")
> hist(poisson, col="Blue")


# Zadanie 5
# Dla rozkładów Poissona i Dwumianowego wygeneruj rozkład prawdopodobieństwa dla n = 20, k = 0, …, 20 oraz p = 0.4. 
# Sprawdź, czy suma prawdopodobieństw wygenerowana dla tych rozkładów jest równa 1.

> n = 20
> k = 20
> p = 0.4

> poisson_dist <- rpois(k,p)
> P <- ecdf(poisson_dist)
> plot(P)

> binomial_dist <- rbinom(n,k,p)
> B <- ecdf(binomial_dist)
> plot(B)


# Zadanie 6
# Wygeneruj 30 danych dla rozkładu normalnego o średniej równej 0 i 
# odchyleniu standardowym równym 2. Wyznacz statystyki podstawowe – 
# czy są one równe z wartościami teoretycznymi? 
# Sprawdź, czy zwiększenie liczby danych zwiększy dokładność wyliczeń statystyk opisowych.

> install.packages("e1071")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/Dominika/Documents/R/win-library/3.6’
(as ‘lib’ is unspecified)
próbowanie adresu URL 'https://cran.rstudio.com/bin/windows/contrib/3.6/e1071_1.7-4.zip'
Content type 'application/zip' length 1017998 bytes (994 KB)
downloaded 994 KB

package ‘e1071’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Dominika\AppData\Local\Temp\RtmpATLHGo\downloaded_packages
> library(e1071)

> normal_dist <- rnorm(10, 0, 2)
> print("mean: 0")
[1] "mean: 0"
> mean(normal_dist)
[1] 0.1541392
> print("median: 0")
[1] "median: 0"
> median(normal_dist)
[1] 0.07326939
> print("variance: 4")
[1] "variance: 4"
> var(normal_dist)
[1] 2.16168
> print("skewness: 0")
[1] "skewness: 0"
> skewness(normal_dist)
[1] 0.3099646
> print("kurtosis: 0")
[1] "kurtosis: 0"
> kurtosis(normal_dist)
[1] -1.194916

> normal_dist <- rnorm(200, 0, 2)
> print("mean: 0")
[1] "mean: 0"
> mean(normal_dist)
[1] 0.07794883
> print("median: 0")
[1] "median: 0"
> median(normal_dist)
[1] 0.1531005
> print("variance: 4")
[1] "variance: 4"
> var(normal_dist)
[1] 4.530644
> print("skewness: 0")
[1] "skewness: 0"
> skewness(normal_dist)
[1] -0.168441
> print("kurtosis: 0")
[1] "kurtosis: 0"
> kurtosis(normal_dist)
[1] 0.06455876

> normal_dist <- rnorm(1000, 0, 2)
> print("mean: 0")
[1] "mean: 0"
> mean(normal_dist)
[1] -0.04100126
> print("median: 0")
[1] "median: 0"
> median(normal_dist)
[1] -0.1321487
> print("variance: 4")
[1] "variance: 4"
> var(normal_dist)
[1] 3.835455
> print("skewness: 0")
[1] "skewness: 0"
> skewness(normal_dist)
[1] 0.08911779
> print("kurtosis: 0")
[1] "kurtosis: 0"
> kurtosis(normal_dist)
[1] -0.01232812


# Zadanie 7
# Narysować histogram dla rozkładu normalnego o parametrach: 
# średnia = 1, odchylenie =2, wykres dla rozkładu standardowego, 
# oraz wykres gęstości dla średniej równej -1 oraz odchylenia równego 0.5.

> normal_dist1 <- rnorm(1000, 1, 2)
> normal_dist2 <- rnorm(1000, 0, 1)
> normal_dist3 <- rnorm(1000, -1, 0.5)

> hist(normal_dist1, col="Red")
> hist(normal_dist2, col="Green")
> hist(normal_dist3, col="Blue")