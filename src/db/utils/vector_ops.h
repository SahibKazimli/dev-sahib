#pragma once
#include <vector>
#include <cmath>
#include <stdexcept>

namespace vector_ops {
    
    inline double dotProduct(const std::vector<double>& v1, const std::vector<double>& v2) {
        if (v1.size() != v2.size()) throw std::invalid_argument("Vectors must be same length");
        
        double dot = 0.0;
        for (size_t i = 0; i < v1.size(); ++i) {
            dot += v1[i] * v2[i];
        }
        return dot;
    }
    
    inline double magnitude(const std::vector<double>& v) {
        double sum = 0.0;
        for (double elem : v) {
            sum += elem * elem;
        }
        return std::sqrt(sum);
    }

    inline std::vector<double> normalize(const std::vector<double>& v) {
        double mag = magnitude(v);
        if (mag == 0.0) return v;
        
        std::vector<double> normalized(v.size());
        for (size_t i = 0; i < v.size(); ++i) {
            normalized[i] = v[i] / mag;
        }
        return normalized;
    }
    
    inline double cosineSimilarity(const std::vector<double>& v1, const std::vector<double>& v2) {
        double mag1 = magnitude(v1);
        double mag2 = magnitude(v2);
        
        if (mag1 == 0.0 || mag2 == 0.0) return 0.0;
        
        return dotProduct(v1, v2) / (mag1 * mag2);
    }
} 