Final exam Computer Architecture
=====


```c
int method_with_static_variables (int x, int y, int z){
    static int counter;
    counter++;
    return (x+y+z+counter);
}
```



```c
int method_no_static_variables (int x, int y, int z){
    int counter;
    counter++;
    return (x+y+z+counter);
}
```

Use the following command to compile the whole project

    make all

To clean assembly generated files, please use:

    make clean

If you want to delete callgrind generated files use the following command:

    make clean-callgrind


Also give permissions to the callgrind file:
    
    chmod +x callgrind-tests

To test the callgrind calls please use:

    ./callgrind-tests

To see the which files of callgrind were generated:

    ls

To whatch the information generated from callgrind you can use:

    kcachegrind callgrind.out.static
or 

    kcachegrind callgrind.out.stack

First one is the data generated from funtion <<method_with_static_variables>> the second one is generated from the function <<method_no_static_variables>>