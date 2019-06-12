#include "static-var.c"


int main(){
    for(int i=0;i < 50000; i++)
        method_with_static_variables(0,0,0);
    return 0;
}