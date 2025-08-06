// cos similarity and other such stuff

#include <iostream>
#include <vector>
#include <string>
#include <cmath>

class vectorOps {
private:

    double getDot(const std::vector<double>& v1, const std::vector<double>& v2) {
        if (v1.size() != v2.size()) throw std::invalid_argument("Vectors must be same length");

        double dot = 0.0;
        for (size_t i = 0; i < v1.size(); ++i) {
            dot += v1[i] * v2[i];
        }
        
        return dot;
    }

    double getMag(std::vector<double> &v) {
        // Iterate over vector, sum all squares under a root and return as double.
        double sum {0};

        for (double elem : v) {
            sum += elem * elem;
        }

        return sum;
    }

public:
    double cosineSimilarity(std::vector<double> &v1, std::vector<double> &v2) {
        // dot product / product of magnitudes.
        return getDot(v1, v2) / ( getMag(v1) * getMag(v2) );
    }
};