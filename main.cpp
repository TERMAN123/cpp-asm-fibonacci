#include <iostream>
using namespace std;


int ival;
int fib(int myNum);

int main(int argc, char * argv[]) {
    cout << "Enter a positive integer: ";
    cin >> ival;

    cout << "You entered: " << ival << endl;

    cout << "The fib number represented by your number is: " << fib(ival) << endl;
}

int fib(int myNum) {
    if (myNum <= 0) {
        return 0;
    }
    else if (myNum == 1) {
        return 1;
    }
    else {
        return fib(myNum - 1) + fib(myNum - 2);
    }
}
