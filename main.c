#include <stdio.h>
#include "myMath.h"
int main(){

    double ans1,x;
    scanf("pleas: %lf", &x);
    ans1 = sub(add(Exponent(x),Power(x,3)),2);
    printf("The value of f(x) = e^x+x^3-2 at the point %f is : %f",x,ans1);

    return 0;

}