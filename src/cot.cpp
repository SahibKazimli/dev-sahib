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

// Prompt template fillre
#include "filler.h"
#include "cot.h"

CoT::CoT(const std::string& model_path, double temp) 
    : model_path(model_path), temperature(temp) {}

std::string CoT::getResponse(const std::string& prompt) {
    std::string command = "libs/llama.cpp/build/bin/llama-run " 
        + std::string("--temp ") + std::to_string(temperature) + " "
        + model_path + " \"" + prompt + "\""; 

    std::array<char, 512> buffer;
    std::string result;

    FILE* pipe = popen(command.c_str(), "r");
    if (!pipe) throw std::runtime_error("popen() failed");

    while (fgets(buffer.data(), buffer.size(), pipe) != nullptr) {
        result += buffer.data();
    }

    pclose(pipe);
    return result;
}

std::string CoT::stepOne(const std::string& prompt) {
    return getResponse(prompt);
}

std::string CoT::stepTwo(const std::string& prompt) {
    return getResponse(prompt);
}