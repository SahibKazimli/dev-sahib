#pragma once
#include <string>

class Parser {
public:
    // Returns the parsed YAML prompt string for a given step (1 or 2)
    std::string getPrompt(int step);

private:
    // Loads and returns the prompt field from a given YAML file
    std::string parse_sys_prompt(const std::string& filename);
};
