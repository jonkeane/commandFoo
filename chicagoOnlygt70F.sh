# 70F in C
Tfinc=21.111 


csvgrep -c 3 onlyOhare.csv -r 'TMAX' > tmax.csv
awk -F,  '$4 > 21.111 {print $2}' tmax.csv > daysOver70
csvgrep -c 2 -f daysOver70 onlyOhare.csv > ohareTempOver70f.csv
