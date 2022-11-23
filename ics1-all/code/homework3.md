### Problem 3
$bias = 2^{k-1}- 1$ , $V = M×2^{E}$ , $e = E + bias$
+ For A：
   $5.0 = (0101.0)_{2} = (1.01 × 2^{2})_{2}$
  Thus：$E = 2$ , $M = 1.01$ , $f = .01$ , $V = 5.0$ , $e = E + bias = 2^{k-1} +1$.
  bits:  `0 10……01 010……`

+ For B:
  $M=1.11111...$ , $f=0.11111...$(n bits of 1), $E = n$ , $e=n+bias=n+2^{k-1}-1$, 
  $V=1111...$(n+1 bits of 1)
  bits: `0 (n+2^(k-1)-1) 111……`

+ For C:
  The smallest positive normalized value is:
  `0 0……01 00……0`
  Thus, $e=1$, $bias=2^{k-1}-1$, $M=1.0$, $V=2^{1-bias}$
  The reciprocal is: $V=2^{bias-1}$   
  $E=bias-1$ , $M=1.0$ , $f=0.0$, $e=E+bias=2bias-1=2^k-3$
  bits:
  `0 11...101 00...`