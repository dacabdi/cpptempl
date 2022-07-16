#include <core.h>
#include <gtest/gtest.h>

namespace ut
{
TEST(core, shouldAddOne)
{
    const auto result = core::add_one(41);

    ASSERT_EQ(result, 42);
}
}
