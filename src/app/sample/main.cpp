#include <core.h>

#include <iostream>

auto main() -> int
{
    // don't allow exceptions to leave the program
    try
    {
        auto const value = core::add_one(41);
        std::string str = "test";
        std::cout << "The meaning of life is " << value << std::endl;
    }
    catch (...)
    {
        return 1;
    }

    return 0;
}
