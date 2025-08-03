# Chain Of Thought

- How can we make it think & act optimally?

## Structure

### 1. Reason (Slave SML)
user query + sys prompt -> Slave SML -> Expansion & Tool calling

Expansion or "thought" will consist of:
- User intent guessing and potential querying for content down the line (web-search probably easiest).
- What the user expects as output.

Returns:
{
    "user_intent": "",
    "expected_output": "",
    "tool_call": {
        "tool": "", 
        "search": ""
        },
}

### 2. Response 1 (Master)

user query + sys prompt 1 + reasoning + result of tool call -> Master LLM -> initial response

### 3. Reflect (Master)

user query + initial response -> Master LLM -> reformated response + maybe tool call

Returns:
{
    "tool_call": Optional or str,
    "final_response": Optional or str (If not content with init. response content then tool call else return response)
}

### 4. Output