#include "include/hello/hello.h"

namespace hello {

std::ostream& greet(std::ostream &os) {
    return os << "Hello, world";
}

}
