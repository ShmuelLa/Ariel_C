#include "myMath.h"
double Exponent (int x) {
    double ans = 1;
    if (x== 0) {
        return 1;
    } else if (x == 1) {
        return e;
    } else if (x >1) {
        for (int i =1 ; i <= x; i++) {
            ans *= e;    
        }
        return ans;
    } else if ( x < 0){
        for (int i =x ; i != 0; i++) {
            ans *= e;    
        }
        return (1/ans);
    }
    return ans;
}
double Power (double x , int y) {
    double ans = 1;
    if (y == 0) {
        return 1;
    } else if (y == 1) {
        return x;
    } else if (y >1) {
        
        for (int i =1 ; i <= y; i++) {
            ans *= x;
        }
        return ans;
    } else if (y < 0) {
        
        for (int i =y; i != 0; i++) {
            ans *= x;  
        }
        return 1/ans;
    }
    return ans;
}
