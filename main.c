#include <stdio.h>
#include "myMath.h"
#include "basicMath.h"
#include "power.h"
int main(){

    double ans1,ans2,ans3,x;
    scanf("pleas: %lf", &x);
    ans1 = sub(add(Exponent(x),Power(x,3)),2);
    printf("The value of f(x) = e^x+x^3-2 at the point %lf is : %lf \n",x,ans1);
    ans2 = add(mul(x,3),Power(mul(x,2),2));
    printf("The value of f(x) = e^x+x^3-2 at the point %lf is : %lf \n",x,ans2);
    ans3 = sub(div(Power(mul(x,4),3),5),mul(x,2));
    printf("The value of f(x) = e^x+x^3-2 at the point %lf is : %lf \n",x,ans3);
    return 0;

}