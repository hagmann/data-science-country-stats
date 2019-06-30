Analyse BIP pro Kopf, Zufriedenheit Korrelationsanalyse
========================================================
author: Simon Hagmann
date: 27.06.2019
autosize: true



Zusammenfassung
========================================================

- Top 10 Economies by GDP - 2007
- Entwicklung der Lebenserwartung Schweiz und USA 1952 - 2007
- Korrelation Lebenserwartung und BIP pro Kopf weltweit zwischen 1952 und 2007, alle Länder
- Bevölkerungsentwicklung Schweiz 1952 - 2007
- Korrelation der Zufriedenheit mit dem BIP pro Kopf
- Korrelation zwischen Zufriedenheit und Freiheit



Verwendete Datensätze
========================================================

- gapminder
- kaggle - World Bank GDP ranking
- kaggle - World Happiness Report




Summary aus gapminder
========================================================


```r
summary
```

```
        country        continent        year         lifeExp     
 Afghanistan:  12   Africa  :624   Min.   :1952   Min.   :23.60  
 Albania    :  12   Americas:300   1st Qu.:1966   1st Qu.:48.20  
 Algeria    :  12   Asia    :396   Median :1980   Median :60.71  
 Angola     :  12   Europe  :360   Mean   :1980   Mean   :59.47  
 Argentina  :  12   Oceania : 24   3rd Qu.:1993   3rd Qu.:70.85  
 Australia  :  12                  Max.   :2007   Max.   :82.60  
 (Other)    :1632                                                
      pop              gdpPercap       
 Min.   :6.001e+04   Min.   :   241.2  
 1st Qu.:2.794e+06   1st Qu.:  1202.1  
 Median :7.024e+06   Median :  3531.8  
 Mean   :2.960e+07   Mean   :  7215.3  
 3rd Qu.:1.959e+07   3rd Qu.:  9325.5  
 Max.   :1.319e+09   Max.   :113523.1  
                                       
```



Top 10 Economies by GDP - 2007
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="100%" />




Entwicklung der Lebenserwartung Schweiz und USA 1952 - 2007
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="100%" />



Korrelation Lebenserwartung und BIP pro Kopf weltweit zwischen 1952 und 2007
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />



Entwicklung der Bevölkerung Schweiz 1952 - 2007
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="100%" />



Korrelation der Zufriedenheit mit dem BIP pro Kopf
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-7-1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="100%" />


Korrelation zwischen Zufriedenheit und Freiheit
========================================================

<img src="Transferarbeit-Praesentation-figure/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="100%" />
