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

// Prompt template filler
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


// Note: Only returns final answer at the moment.
std::string CoT::reActLoop(const std::string& user_query) {
  std::string context = "";
  int maxSteps = 5;

  for (int i = 0; i < maxSteps; ++i){
  // 1. Create prompt
  std::string prompt = "User query: " + user_query + "\n" + context + "\n";
  prompt += "Respond in the following format:\nThought: <...>\nAction: <...>\n";

  // 2. Get model response
  std::string modelOutput = getResponse(prompt);

  // 3. Parse model output
  std::string thought, action;
  parseModeloutput(modelOutput, thought, action);

  // 4. Append to context
  context += "Thought: " + thought + "\n";
  context += "Action: " + action + "\n";

  // 5. Handle final answer
  if (action.find("Final Answer") != std::string::npos) {
    return action;
  }

  // 6. Execute action

}

}