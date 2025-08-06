#pragma once
#include "utils/embedder.h"
#include <sw/redis++/redis++.h>
#include <string>
#include <vector>

class DBManager {
private:
    sw::redis::Redis redis;
    embeddingString embedder;
    std::string host;
    int port;

public:
    DBManager(const std::string& api_key, const std::string& redis_host = "localhost", int redis_port = 6379);
    ~DBManager();
    
    // Document operations

    
    // Search operations

    
    // Redis operations
    
    
}; 