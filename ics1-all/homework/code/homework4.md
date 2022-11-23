# Homework4-float-2
## Problem 1
+ A.`!(~x)`
+ B.`!x`
+ C.`!~(x | 0x00ffffff)`
+ D.`!(x & 0x000000ff)`

## Problem 2
+ A. (float)x == (float)dx
**不成立**。比如x为int的最大值时，超过float的精度。
+ B. dx-dy == (double)(x-y)
**不成立**。当x-y发生溢出时等式不成立，如x=Tmin，y=1，x-y发生下溢。
+ C. (dx+dy)+dz == dx+(dy+dz)
**成立**。dx,dy,dz是由整型x,y,z转换而来的，相加不会超过double的精度，因此不会产生舍入的误差，满足加法结合律。
+ D. (dx * dy) * dz == dx * (dy * dz)
**不成立**。double无法精确表示$2^{64}$以内所有数，三个数相乘可能会产生舍入，因此不满足乘法结合律。例如取x=0xe87d0982,y=0xd2027960,z=0xd119203f，可以验证等式不成立。
+ E. dx/dx == dz/dz
**不成立**。dx或dz为零时不成立。

## Problem 3
```c
float_bits float_absval(float_bits f)
{
    unsigned abs = f&(0x7FFFFFFF);//符号位取0
    if (abs>(0x7F800000))  return f;//判断NAN
    return abs;//否则输出绝对值
}
```

## Problem 4
### 基本思路
+ 若浮点数为规格化数的时候，只需要阶码＋1。
  + 特殊情况：当e的为11111110 ，此时不可以直接+1，它们*2会溢出，因此要提升为无穷。
+ 若浮点数为非规格化数，×2就相当于把后面的小数左移一位。
```c
float_bits float_twice(float_bits f) {
    unsigned s = f >> 31;//符号位
    unsigned exp = f >> 23 & 0xFF;//阶码
    unsigned frac = f & 0x7FFFFF;//尾数
 
    int is_NAN_or_infinity = (exp == 0xFF);//判断是否是无穷或者NAN，即阶码为11111111
    if (is_NAN_or_infinity)  return f;
 
    //非规格化数
    if (exp == 0) frac <<= 1;
    //最大的特殊规格化数，*2溢出，要提升为无穷
    else if (exp == 0xFE){
        exp = 0xFF;
        frac = 0;
    } 
    //规格化数
    else exp += 1;
 
    return sig << 31 | exp << 23 | frac;
}
