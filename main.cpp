#include <iostream>
#include <string>
#include "util/reverse.hpp" 

int main() {
    std::string input = "Hello";
    
    std::string output = util::reverse_text(input);
    
    std::cout << input << " -> " << output << std::endl;
    
    return 0;
}
