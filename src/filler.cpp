#include "filler.h"
#include <fmt/core.h>  // or <format> if you use std::format

Filler::Filler(const std::string& user_query) : query(user_query) {}

std::string Filler::fill_step1(const std::string& prompt_template) const {
    // Replace only first field with the query
    return fmt::format(prompt_template, query);
}

std::string Filler::fill_step2(const std::string& prompt_template, const std::string& thought) const {
    // Replace first with query, second with thought
    return fmt::format(prompt_template, query, thought);
}

// Prototype for the third agentic loop
std::string Filler::fill_step3(const std::string& agent_prompt_template) const {
    return fmt::format(agent_prompt_template, query);
}