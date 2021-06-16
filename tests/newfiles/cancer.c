#include <stdbool.h>

#define benign false
#define Malign true

bool declassify(bool x){
    return x;
}

// buxin
bool cancer( int UoCSize,
                   int UoCShape,
                   int BN,
                   int CT,
                   int BC,
                   int MA
                   ){
    if (UoCSize <= 2) {
       if (BN <= 3 ) {
        return benign;
      }else {
         if (CT <= 3 ) {
          return benign;
        }else {
           if ( BC <= 2) {
             if ( MA <= 3) {
              return Malign;
            }else {
              return benign;
            }
          }else {
            return Malign;
          }
        }
      }
    }else {
       if ( UoCShape  <= 2) {
         if  ( CT <= 5 ) {
          return benign;
        }else {
          return Malign;
        }
      }else {
         if (UoCSize <= 4) {
           if (BN <= 2) {
             if (MA <= 3){
              return benign;
            }else {
              return Malign;
            }
          }else {
             if (CT <= 6) {
               if (UoCSize <= 3) {
                return Malign;
              }else {
                 if (MA <= 5) {
                  return benign;
                }else {
                  return Malign;
                }
              }
            }else {
              return Malign;
            }
          }
        }else {
          return Malign;
        }
      }
    }
}