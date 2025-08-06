// Base includes
#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

// Data
#include <yaml-cpp/yaml.h>
#include <fstream>

// Headers
#include "parser.h"
#include <cot.h>

std::string Parser::parse_sys_prompt(const std::string& filename) {
    YAML::Node config = YAML::LoadFile(filename);
    return config["prompt"].as<std::string>();
}

std::string Parser::getPrompt(int step) {
    std::string filename = "prompts/step_" + std::to_string(step) + ".yaml";
    return parse_sys_prompt(filename);
}

void CoT::parseModelOutput(const std::string& output, std::string& thought, std::string& action) {
    std::istringstream stream(output);
    std::string line;

    // Read one line from stream at a time
    while (std::getline(stream, line)){
        // Check if line starts with thought and extract
        if (line.find("Thought:") == 0) {
            thought = line.substr(8);
        }
        // Same principle but with action
        else if (line.find("Action:") == 0){
              action = line.substr(7);
        }
    }
}