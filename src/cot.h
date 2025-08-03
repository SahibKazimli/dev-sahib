#pragma once
#include <string>

class CoT {
private:
    std::string model_path;
    double temperature;
    
    std::string getResponse(const std::string& prompt);

public:
    CoT(const std::string& model_path = "./llama.cpp/models/Qwen/Qwen_Qwen3-30B-A3B-Instruct-2507-Q4_K_M.gguf", 
        double temp = 0.9);
    
    std::string stepOne(const std::string& prompt);
    std::string stepTwo(const std::string& prompt);
};
