#include <core.h>
#include <gtest/gtest.h>

namespace ut
{
    TEST(core, should_add_one) // NOLINT
    {
        const auto result = core::add_one(41);

        ASSERT_EQ(result, 42);
    }
}
