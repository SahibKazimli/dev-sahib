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

```bash
# System dependencies
sudo apt-get install libhiredis-dev libredis++-dev libcurl4-openssl-dev libgtest-dev
sudo apt-get install libprotobuf-dev protobuf-compiler libprotoc-dev
```

## Setup

```bash
# 1. Setup Redis database
cd src/db
./setup.sh
docker compose up -d

# 2. Build server
make
```

Or with Cmake:
```bash
# 1. Setup Redis database
mkdir build && cd build
cmake ..
make
```

## Usage

```bash
# Start the server
./server

# Test Redis connection
cd src/db
export REDIS_PASSWORD=c37iCfFDrjL2GqpldarrQ6FHB
export REDIS_HOST=127.0.0.1
export REDIS_PORT=6379
LD_LIBRARY_PATH=../../libs/redis-plus-plus/build:$LD_LIBRARY_PATH ./simple_test

# Query the API
curl -X POST http://localhost:8000/query/ \
  -H "Content-Type: application/json" \
  -d '{"query": "Your question here"}'
```

## Features

- ✅ **Redis vector database** with similarity search
- ✅ **Document storage** and retrieval
- ✅ **Secure authentication** 
- ✅ **Environment-based configuration**
- 🔄 **RAG capabilities** (in development)
- 🔄 **LLM integration** (in development)
