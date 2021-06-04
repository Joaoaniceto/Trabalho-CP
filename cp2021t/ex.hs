
f 1 = 1
f n = n * f (n-1)

c 0 = 1
c 1 = 1
c n = f (2*n) / ((f (n+1)) * (f n))


cat _ (-1) = 0
cat n i = c i * c (n-i-1) + cat n (i-1) 

cat2 (-1) = 0
cat2 n = c i * c(n-i-1) + cat2 n (i-1) 
        where i = n-1

-- (2n)!
fac2 1 = 1
fac2 n = 2*n * f (n-1)