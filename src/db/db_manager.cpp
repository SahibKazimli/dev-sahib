#include "db_manager.h"
#include <iostream>
#include <cstdlib>

DBManager::DBManager(const std::string& api_key, const std::string& redis_host, int redis_port) {
    // Get Redis configuration from environment variables
    const char* env_host = std::getenv("REDIS_HOST");
    const char* env_port = std::getenv("REDIS_PORT");
    const char* env_password = std::getenv("REDIS_PASSWORD");
    
    // Configure Redis connection
    sw::redis::ConnectionOptions opts;
    opts.host = env_host ? env_host : redis_host;
    opts.port = env_port ? std::stoi(env_port) : redis_port;
    opts.password = env_password ? env_password : "";
    
    // Create Redis connection
    redis = sw::redis::Redis(opts);
}

DBManager::~DBManager() {
    // Redis connection will be cleaned up automatically
}

bool DBManager::storeDocument(const std::string& id, const std::string& content) {
    try {
        std::string key = "doc:" + id;
        redis.set(key, content);
        return true;
    } catch (const std::exception& e) {
        std::cerr << "Error storing document: " << e.what() << std::endl;
        return false;
    }
}

std::string DBManager::getDocument(const std::string& id) {
    try {
        std::string key = "doc:" + id;
        auto result = redis.get(key);
        return result ? *result : "";
    } catch (const std::exception& e) {
        std::cerr << "Error getting document: " << e.what() << std::endl;
        return "";
    }
}

bool DBManager::ping() {
    try {
        auto result = redis.ping();
        return result == "PONG";
    } catch (const std::exception& e) {
        std::cerr << "Redis ping failed: " << e.what() << std::endl;
        return false;
    }
}
