#include "fibonacci.h"
#include "utest.h"

UTEST(fibonacci, terms_1_through_10) {
    const int expected[] = {
        1, 1, 2, 3, 5, 8, 13, 21, 34, 55
    };

    for (int term = 1; term <= 10; term++) {
        ASSERT_EQ(expected[term - 1], fibonacci(term));
    }
}

UTEST_MAIN()
