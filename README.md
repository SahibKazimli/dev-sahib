# OWN YOUR FLOW: C++ AI Agent
Created: 2025-08-03

```bash
            ''              ''::..                                   .::.                            
            ...            .':-+*+:..                            ..:+*+-:.             ..            
           .-:..         .::+######=          ...::....        .=######+::.         ..:-            
              .:....  ...:-#######+.     .................     ..+#######-:.........:.              
              .=*+++-:-=**###*##*:......::--:..........:--::.... .:+##*###**+-:-+++*=.              
              .:+++===*#%%##%*:..:::......:::::-::-::::.......:::..:*%##%%%*+===+++:.              
               .:+=+*===+*%%@%##=:..........  ..:..::..........  .:=##%@%%*+===*+++:....            
                .-+++###+=+*=++:.. ....         ....         ...   .-++=*+=+###+++-.                
              .:.+#*+*##%*:++=:....:-...        ....        ...-:....:+++:*%##*+*#*.:               
              ..--#####%%::*-::=-=-:..::..      ....       .::..:-=-=:.-*-:%%#####--.               
                .:+###@#=::. ..=::.    ..-..   .:..:..  ..-..    .::=.  .::=#@###+:.                
              ..:+++**#%:::=--...::.    ...--::-*+++-::--...   ..::...--=:::%#**=++:.               
             .:=+--###%+=--:=+:. ..:..........::----::..........::. ..+=:--=+%##*--++:..            
            .++=:*#%%%%%#*==:=+=-......:. .+-::......::-*. .:......-=+=:==+#%%%%%#*:-++.            
          .-#*=*+=+%%#*+*##%*:+...::..  .:::-..       .-:::..  .::...=:*%##*+*#%%*=+*=**=.          
          .*==+*%#%%*#*++=*+#=-:.  .-.    .:.   ....   .:.     -.   .-=#**=++*%*%%#%*+==*.          
        ..=+===+*#%*#%%#*++*::-:   .::..       .=+*+.       ..::.   :=::**+*#%%#*%#*+===+=..        
      .:+=*#+++**#@####%%**:...-:......:-..     .::.      .::......:-....**%%####@#***++#*++:.      
    .-+**+**%*#%@@@@%##%##=--::-*@@@@@#+==-.......... ...:==+#@@@@@*-::--=*#%##%@@@@%#*%*****+=.    
    +*****+=*%@@%#%##%+=++*++#@@@@@@@@@@@@%+-:::-==-:::-+#@@@@@@@@@@@@#=**=+=+###%##@@%*=+*****+    
    .:=*=:....=**++##*#@@#=-=-OWNYOURFLOW-@%##+=--=+*#%%@-OWNYOURFLOW-@=+#@@#**#++**=.....=*=:.    
           .-*++++=#%%#*@%+=:*@@@@@@%@@@@@@%#==.::-:.-=#%@@@@@@%@@@@@@*.==%@*#%%#=++++*-.           
           .=++**+++#%%%%+..:-*@@@@%%%%%@@%**:.:*%%*:.:*+%@@%%%%%@@@@*-:..=%#%%%+++**++=..          
           .-+%#****###+.....-**+======-:-:::.-%@@@@%-.:::-:-======+**-.....=####***#%+-.           
           ..:-*%**##%%----:::....::...:++#:.-%@@@@@@%=::#*+:...::....::::---%%#***%*-:.            
             .:.:*++-.:===%%-::::--::::.....:%@#@%#@#@%:.....::::--::::-%%===:.-+**:.:..            
                       .=##%#=+#%@@%*-==-.:::#%@****%%#:::.-==-*%@@%#++#%##+.                       
                        .=+###%@@@%#%#--:.. .-**++++**-. ..:-=#%#%@@@%###+=.                        
                         ..-****@@@%%#--:.. ..::%==%::.. ..:--#%%@@@***+-...                        
                          .-*+**%@@@@%+-:...:..............:-+%@@@@%**+*-.                          
                          .=+++**@@@@%+=+===--=-:..:----===+=+%@@@@**++*=.                          
                         .-+*++**+++#@%=-..:..=..--..=..:.:-=%@#*++**++#+-.                         
                          .+**+=+%=--=+:*+**:::..::..::.**+*:+=--=#+=+*++.                          
                           ..:++++##..=-=--:-.=+:==:+=.-:--=-=..*#+++*-..                           
                             ..-#**#:..-:=+==:-=----=-:==+=:-..:#**#=.                              
                                .=+=.. ..:+..-:..::..:-..+:..  .=+=:                                
                                 .:+=:..:..=.          .=..:..:=+:.                                 
                                    .=%*-...-..       .-...-*%=.                                    
                                     ...:---+..........+---:...                                     
                                         ..+-::=#%%#=-:-+..                     
```

There's recently been growing concerns of making API calls to model-providers considering data security, ownership, downtime and cost.

At the same time we've seen growth of agentic AI solutions in the tech market. 
The study "Small Language Models are the Future of Agentic AI", Peter Belcak et al. (NVIDIA Research & Georgia Tech) advocates clearly for the use of smaller LLMs in agentic tasks.
This is a perfect setup for an agentic REST solution of an agent that I can deploy on my own wherever required in the future to perform RAG, web-search, sentiment analysis and more.
  Link: https://arxiv.org/abs/2506.02153

Llama.cpp is perfect for this and to stick with the .cpp part I've chosen the C++ library Crow to deploy this project as a REST API.
  Link: https://github.com/CrowCpp/Crow

The CoT currently implemented is very rudimentary composed off 2 steps. Reason and generate (ReGe, if you will). 
With time I'll develop a more complex logical framework for the LLM to follow and execute tasks probably using instinct.cpp dubbed as "langchain.cpp" to manage tool-calling and tasks.
NOTE: This would require pivoting to llama-server as opposed to llama-run to execute prompts, since instinct.cpp does not support llama-run.
  Link: https://github.com/RobinQu/instinct.cpp

Everything is currently implemented without Langchain, but instead done manually through program-flow. 

Currently using Qwen_Qwen3-30B-A3B-Instruct-2507-Q4_K_M.gguf as the Master LLM

### Future:
As afformentioned this project will seek to build agentic capabilities manually through C++ program flow and langchain.cpp.
The goal is to minimize latency and cost of compute by writing in C++ and forcing the models to respond with low token counts.

## Dependencies

- yaml-cpp
- fmt
- llama.cpp (for llama-run binary)
- instinct.cpp (for agentic capabilities)
- hiredis (for Redis vector database)
- libcurl (for API calls)

## Sys dependencies

```bash
sudo apt-get install libgtest-dev ### For instinct.cpp.

sudo apt-get update
sudo apt-get install libprotobuf-dev protobuf-compiler libprotoc-dev ### Also for fucking cpp why is it using a diff compiler.

sudo apt-get install libhiredis-dev libcurl4-openssl-dev ### For Redis and API calls.
```

## Setup

```bash
#!/bin/bash

# Build llama.cpp with both server and examples
cd libs/llama.cpp
mkdir -p build && cd build
cmake .. -DLLAMA_BUILD_SERVER=ON -DLLAMA_BUILD_EXAMPLES=ON
make -j$(nproc)
cd ../../

# Build your server
make

# Setup Redis database with vector search
make setup-db
```

Make it executable: `chmod +x scripts/setup.sh`

## Query (linux):

```bash
curl -X POST http://localhost:8000/query/      -H "Content-Type: application/json"      -d '{"query": "YOUR QUERY HERE"}'
```

## **CMakeLists.txt - Complete Setup**

```cmake
cmake_minimum_required(VERSION 3.16)
project(cpp_server)

set(CMAKE_CXX_STANDARD 17)

find_package(yaml-cpp REQUIRED)
find_package(fmt REQUIRED)

# Add both subdirectories
add_subdirectory(libs/llama.cpp)
add_subdirectory(libs/instinct.cpp)

# Add Crow (header-only library)
include_directories(include)

add_executable(server 
    src/main.cpp
    src/cot.cpp
    src/parser.cpp
    src/filler.cpp
)

target_include_directories(server PRIVATE . src libs/instinct.cpp/include libs/llama.cpp)
target_link_libraries(server yaml-cpp::yaml-cpp fmt::fmt instinct_cpp llama pthread)
```

## **Build Both Components**

```bash
<code_block_to_apply_changes_from>
```

## **Usage Strategy**

**Current (llama-run):**
- Direct process execution via `popen()`
- Simple, synchronous
- Good for basic CoT

**Future (llama-server + instinct.cpp):**
- HTTP API calls to llama-server
- Async, multi-client
- Advanced agentic capabilities

## **Database Setup**

**Redis Vector Database:**
- Stores documents with query/response embeddings
- Vector similarity search for RAG
- Automatic indexing at startup
- Structure: `{user_id, timestamp, query, query_embedding, response, response_embedding}`

```bash
# Start Redis with vector search
make setup-db

# Build with hiredis support
make
```

## **Benefits**

1. **Flexibility**: Can switch between approaches
2. **Gradual migration**: Keep current CoT working while adding agentic features
3. **Performance**: llama-server for complex workflows, llama-run for simple tasks
4. **Future-proof**: Ready for instinct.cpp integration
5. **RAG-ready**: Vector database for document retrieval and similarity search

This setup gives you the best of both worlds!
