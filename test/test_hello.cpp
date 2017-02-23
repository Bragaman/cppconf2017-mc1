#include <sstream>

#include <gtest/gtest.h>

#include <include/hello/hello.h>

TEST(hello, hello) {
    std::stringstream ss;
    hello::greet(ss);

    ASSERT_EQ("Hello, world", ss.str());
}
