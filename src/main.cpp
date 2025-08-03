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

// HTTP
#include "include/crow_all.h"
#include "parser.h"
#include "filler.h"
#include "cot.h"

int main() {
    crow::SimpleApp app;

    CROW_ROUTE(app, "/data/").methods("POST"_method)
    ([](const crow::request& req){
        auto body = crow::json::load(req.body);
        if (!body)
            return crow::response(400, "Invalid JSON");

        std::string query = body["query"].s();
        
        // Parse both prompts
        Parser parser;
        std::string step1_prompt = parser.getPrompt(1);
        std::string step2_prompt = parser.getPrompt(2);
        
        // Fill step 1 prompt with query
        Filler filler(query);
        std::string filled_step1 = filler.fill_step1(step1_prompt);

        std::cout << "STEP 1 COMPLETE PROMPT: \n" << filled_step1 << std::endl;
        
        // Get thought from CoT step 1
        CoT cot;
        std::string thought = cot.stepOne(filled_step1);
        
        std::cout << "THOUGHT: \n" << thought << std::endl;

        // Fill step 2 prompt with query and thought
        std::string filled_step2 = filler.fill_step2(step2_prompt, thought);
        
        std::cout << "STEP 2 COMPLETE PROMPT: \n" << filled_step2 << std::endl;

        // Get final response from CoT step 2
        std::string response = cot.stepTwo(filled_step2);

        // Making sure we have a line break
        response = response + "\n";

        std::cout << "RESPONSE: " << response << std::endl;

        return crow::response(200, response);
    });

    app.port(8000).run();
}