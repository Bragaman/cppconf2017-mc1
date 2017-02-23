#include <iostream>

#include "include/hello/hello.h"

int main() {
    hello::greet(std::cout);
    std::cout << std::endl;
    return 0;
}
