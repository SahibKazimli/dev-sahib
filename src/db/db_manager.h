#pragma once
#include <sw/redis++/redis++.h>
#include <string>
#include <vector>

class DBManager {
private:
    sw::redis::Redis redis;

public:
    DBManager(const std::string& api_key, const std::string& redis_host = "localhost", int redis_port = 6379);
    ~DBManager();
    
    // Core document operations
    bool storeDocument(const std::string& id, const std::string& content);
    std::string getDocument(const std::string& id);
    
    // Basic Redis operations
    bool ping();
}; 