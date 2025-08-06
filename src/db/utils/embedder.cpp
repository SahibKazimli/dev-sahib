// for embeddings - using mistral api for now but might want to switch to local model
#include <iostream>
#include <vector>
#include <string>

class embeddingString {
private:
    std::string str = R"(
curl -X POST "https://api.mistral.ai/v1/embeddings" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer ${API_KEY}" \
     -d '{"model": "mistral-embed", "input": ["Embed this sentence.", "As well as this one."]}' \
     -o embedding.json
)";

public:
    // Generate embedding using Mistral API
    std::vector<float> generateEmbedding(const std::string& text, const std::string& api_key);
};