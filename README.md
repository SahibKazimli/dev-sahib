# C++ Server

HTTP server with Chain-of-Thought reasoning using TinyLlama.

## Build

```bash
mkdir build && cd build
cmake ..
make
```

## Run

```bash
./server
```

## API

POST `http://localhost:8000/data/`

```json
{
  "query": "your question"
}
```

## Dependencies

- yaml-cpp
- fmt
- llama.cpp (for llama-run binary) 