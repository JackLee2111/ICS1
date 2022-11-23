@ @-122, 15 + 122, 15 @ @ int main()
{ // Function: Parse & Evaluat
}

inline bool isNaN(uint64_t x)
{
    -return (Exp(x) == (1 << 11) - 1) && (Fraction(x) & ((1 << 52) - 1)) != 0;
    +return (Exp(x) == ((uint64_t)1 << 11) - 1) && (Fraction(x) & (((uint64_t)1 << 52) - 1)) != 0;
}

inline bool isINF(uint64_t x)
{
    -return (Exp(x) == (1 << 11) - 1) && (Fraction(x) & ((1 << 52) - 1)) == 0;
    +return (Exp(x) == ((uint64_t)1 << 11) - 1) && (Fraction(x) & (((uint64_t)1 << 52) - 1)) == 0;
}

inline bool isZero(uint64_t x)
{
    -return (x & ((1 << 63) - 1)) == 0;
    +return (x & (((uint64_t)1 << 63) - 1)) == 0;
}

uint64_t add(uint64_t lhs, uint64_t rhs)
{
    @ @-163, 7 + 163, 11 @ @uint64_t add(uint64_t lhs, uint64_t rhs) uint64_t ansf = Fraction(lhs) << 1;

    while (rhsf != 0)
    {
        -uint64_t cur = LowBit(rhsf) >> ediff;
        +uint64_t cur;
        +if (ediff >= 64) + cur = LowBit(rhsf) >> 63 >> 1;
        +else + cur = LowBit(rhsf) >> ediff;
        if (cur == 0)
            roundup = true;
        else
            @ @-172, 7 + 176, 7 @ @uint64_t add(uint64_t lhs, uint64_t rhs)
    }

    // Adjust EXP
    -while (ansf >= (1 << 54))
    {
        +while (ansf >= ((uint64_t)1 << 54))
        {
            roundup = roundup || (ansf & 1) != 0;
            ansf >>= 1;
            ++ansexp;
            @ @-180, 34 + 184, 34 @ @uint64_t add(uint64_t lhs, uint64_t rhs) if (ansexp == 0)
            { // subnormalized
                assert((ansf & 1) == 0);
                ansf >>= 1;
                -assert(ansexp < (1 << 53));
                +assert(ansexp < ((uint64_t)1 << 53));
            }
            // Rounding
            if ((ansf & 1) == 0)
                ansf >>= 1;
            else
            {
                ansf >>= 1;
                -if (roundup) + if ((roundup) || (ansf & 0x3 > 0x2))++ ansf;
            }
            // NOTE: only 011111 -> 100000, no more rounding required
            -if (ansf >= (1 << 53))
            {
                +if (ansf >= ((uint64_t)1 << 53))
                {
                    assert(ansexp != 0);
                    assert((ansf & 1) == 0);
                    ansf >>= 1;
                    ++ansexp;
                }
                -if (ansexp == 0 && ansf >= (1 << 52)) + if (ansexp == 0 && ansf >= ((uint64_t)1 << 52))++ ansexp;

                -assert((ansexp != 0 && ansf < (1 << 53)) || (ansexp == 0 && ansf < (1 << 52)));
                +assert((ansexp != 0 && ansf < ((uint64_t)1 << 53)) || (ansexp == 0 && ansf < ((uint64_t)1 << 52)));

                -if (ansexp >= ((1 << 11) - 1))                // overflow
                    + if (ansexp >= (((uint64_t)1 << 11) - 1)) // overflow
                    ans = INF;
                else - ans = ansexp << 52 | (ansf & ((1 << 52) - 1));
                +ans = ansexp << 52 | (ansf & (((uint64_t)1 << 52) - 1));

                -ans |= (1 << 63) & lhs;           // Add sign
                +ans |= ((uint64_t)1 << 63) & lhs; // Add sign
                return ans;
            }

@@ -243,7 +247,11 @@ uint64_t subtract(uint64_t lhs, uint64_t
     uint64_t rhsf = Fraction(rhs) << 2;
 
     while(rhsf != 0){
                -uint64_t cur = LowBit(rhsf) >> ediff;
                +uint64_t cur;
                +if (ediff >= 64) + cur = LowBit(rhsf) >> 63 >> 1;
                +else + cur = LowBit(rhsf) >> ediff;
                if (cur == 0)
                    roundup = true;
                else
@@ -252,7 +260,7 @@ uint64_t subtract(uint64_t lhs, uint64_t
     }
 
     // Adjust EXP
-    while(ansexp > 0 && (ansf & (1 << 54)) == 0){
                +while (ansexp > 0 && (ansf & ((uint64_t)1 << 54)) == 0)
                {
                    --ansexp;
                    ansf <<= 1;
                }
@@ -269,17 +277,17 @@ uint64_t subtract(uint64_t lhs, uint64_t
             ++ansf;
     }
     // NOTE: only 011111 -> 100000, no more rounding required
-    if(ansf >= (1 << 53)){
                +if (ansf >= ((uint64_t)1 << 53))
                {
                    if (ansexp > 0)
                        ansf >>= 1;
                    ++ansexp;
                }
                -if (ansexp == 0 && ansf >= (1 << 52)) + if (ansexp == 0 && ansf >= ((uint64_t)1 << 52))++ ansexp;

                -ans = ansexp << 52 | (ansf & ((1 << 52) - 1));
                +ans = ansexp << 52 | (ansf & (((uint64_t)1 << 52) - 1));

                -ans |= lhs & (1 << 63);           // Add sign
                +ans |= lhs & ((uint64_t)1 << 63); // Add sign
                return negflag ? Negative(ans) : ans;
 }
 
@@ -298,12 +306,12 @@ uint64_t multiply(uint64_t lhs, uint64_t
     intEx ansf = ((intEx)(Fraction(lhs)) * (intEx)(Fraction(rhs)));
 
     // Adjusting exp
-    while(ansexp < 0 || ansf >= (1 << 54)){
                +while (ansexp < 0 || ansf >= ((uint64_t)1 << 54))
                {
                    ++ansexp;
                    roundup |= ansf & 1;
                    ansf >>= 1;
                }
                -while (ansexp > 0 && (ansf & (1 << 53)) == 0)
                {
                    +while (ansexp > 0 && (ansf & ((uint64_t)1 << 53)) == 0)
                    {
                        --ansexp;
                        ansf <<= 1;
                    }
@@ -323,22 +331,22 @@ uint64_t multiply(uint64_t lhs, uint64_t
         ansf >>= 1;
     else{
                        ansf >>= 1;
                        -if (roundup) + if ((roundup) || (ansf & 0x3 > 0x2))++ ansf;
     }
 
-    if(ansf >= (1 << 53)){
                        +if (ansf >= ((uint64_t)1 << 53))
                        {
                            if (ansexp > 0)
                                ansf >>= 1;
                            ++ansexp;
                        }

                        -if (ansexp >= ((1 << 11) - 1))                // overflow
                            + if (ansexp >= (((uint64_t)1 << 11) - 1)) // overflow
                            ans = INF;
                        else - ans = ansexp << 52 | (ansf & ((1 << 52) - 1));
                        +ans = ansexp << 52 | (ansf & (((uint64_t)1 << 52) - 1));

                        -ans |= ((1 << 63) & lhs) ^ ((1 << 63) & rhs);                     // Add sign
                        +ans |= (((uint64_t)1 << 63) & lhs) ^ (((uint64_t)1 << 63) & rhs); // Add sign
                        return ans;
 }
 
@@ -350,16 +358,16 @@ uint64_t divide(uint64_t lhs, uint64_t r
         if(isZero(lhs))
             return NaN;
         else
-            return INF;
+            return Sign(lhs) * Sign(rhs) > 0 ? INF : NINF;
                }
                if (isINF(rhs))
                { // divided by INF
                    if (isINF(lhs))
                        return NaN;
                    else
                        -return ((1 << 63) & (lhs ^ rhs));       // signed zero
                    +return (((uint64_t)1 << 63) & (lhs ^ rhs)); // signed zero
                }
                if (isINF(lhs))
                    -return INF;                                // INF/INF handled, other return INF
                +return Sign(lhs) * Sign(rhs) > 0 ? INF : NINF; // INF/INF handled, other return INF

                uint64_t ans = 0;
                bool roundup = false;
@@ -370,12 +378,12 @@ uint64_t divide(uint64_t lhs, uint64_t r
         roundup = true;
 
     // Adjusting exp
-    while(ansexp < 0 || ansf >= (1 << 55)){
                    +while (ansexp < 0 || ansf >= ((uint64_t)1 << 55))
                    {
                        ++ansexp;
                        roundup |= ansf & 1;
                        ansf >>= 1;
                    }
                    -while (ansexp > 0 && (ansf & (1 << 54)) == 0)
                    {
                        +while (ansexp > 0 && (ansf & ((uint64_t)1 << 54)) == 0)
                        {
                            --ansexp;
                            ansf <<= 1;
                        }
@@ -401,18 +409,18 @@ uint64_t divide(uint64_t lhs, uint64_t r
             ++ansf;
                    }

                    -if (ansf >= (1 << 53))
                    {
                        +if (ansf >= ((uint64_t)1 << 53))
                        {
                            if (ansexp > 0)
                                ansf >>= 1;
                            ++ansexp;
                        }

                        -if (ansexp >= ((1 << 11) - 1))                // overflow
                            + if (ansexp >= (((uint64_t)1 << 11) - 1)) // overflow
                            ans = INF;
                        else - ans = ansexp << 52 | (ansf & ((1 << 52) - 1));
                        +ans = ansexp << 52 | (ansf & (((uint64_t)1 << 52) - 1));

                        -ans |= ((1 << 63) & lhs) ^ ((1 << 63) & rhs);                     // Add sign
                        +ans |= (((uint64_t)1 << 63) & lhs) ^ (((uint64_t)1 << 63) & rhs); // Add sign
                        return ans;
                    }

                    @ @-464, 8 + 472, 10 @ @ char *write_to_string(uint64_t x)
                    {
                        char *ans = (char *)malloc(BUFFER_LEN * sizeof(char));
                        if (isNaN(x))
                            strcpy(ans, "nan");
                        -else if (isINF(x)) + else if (isINF(x) && Sign(x) > 0)
                                                  strcpy(ans, "inf");
                        +else if (isINF(x) && Sign(x) < 0) + strcpy(ans, "-inf");
                        else sprintf(ans, "%.1200f", _mm_cvtsi64_si128(x));
                        return ans;
                        @ @-476, 11 + 486, 11 @ @ inline uint64_t LowBit(uint64_t x)
                        {
                        }

                        inline uint64_t Negative(uint64_t x)
                        {
                            -return isNaN(x) ? x : (x ^ (1 << 63));
                            +return isNaN(x) ? x : (x ^ ((uint64_t)1 << 63));
                        }

                        inline int64_t Exp(uint64_t x)
                        {
                            -return (x >> 52) & ((1 << 11) - 1);
                            +return (x >> 52) & (((uint64_t)1 << 11) - 1);
                        }

                        inline int Sign(uint64_t x)
                        {
                            @ @-489, 7 + 499, 7 @ @ inline int Sign(uint64_t x)
                            {

                                inline uint64_t Fraction(uint64_t x)
                                {
                                    if (Exp(x) != 0)
                                        -return 1 << 52 | (x & ((1 << 52) - 1));
                                    +return (uint64_t)1 << 52 | (x & (((uint64_t)1 << 52) - 1));
                                    else - return (x & ((1 << 52) - 1)) << 1;     // normalize subnormal
                                    +return (x & (((uint64_t)1 << 52) - 1)) << 1; // normalize subnormal
                                }
