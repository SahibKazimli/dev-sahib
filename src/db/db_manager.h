#pragma once
#include "utils/embedder.h"
#include <hiredis/hiredis.h>
#include <string>
#include <vector>

class DBManager {
private:
    redisContext* context;
    embeddingString embedder;
    std::string host;
    int port;

public:
    DBManager(const std::string& api_key, const std::string& redis_host = "localhost", int redis_port = 6379);
    ~DBManager();
    
    bool connect();
    void disconnect();
    
    // Document operations
    
    // Search operations
    
    // Redis operations
}; 