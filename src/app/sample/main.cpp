#include <iostream>
#include "core.h"

auto main() -> int
{
	const auto value = core::add_one(41);

	std::cout << "The meaning of life is " << value << std::endl;

	return 0;
}