#include <corelib.h>
#include <gtest/gtest.h>

namespace test::ut::core
{
    TEST(CoreLibTests, should_add_one) // NOLINT
    {
        const auto result = core::add_one(1);

        ASSERT_EQ(result, 1);
    }
}