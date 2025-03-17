
# AI Demo Project

This project demonstrates various AI functionalities including standard LLM chat, Retrieval-Augmented Generation (RAG), and agent-based feedback management using OpenAI, PineCone, and WSO2 integrations.

## Setup

### Downloads

- **Server:** [WSO2 MI AI Server](https://mi-distribution.wso2.com/ai/wso2mi-4.4.0-AI.zip)
- **Connector:** [AI Connector](https://mi-distribution.wso2.com/ai/ai-connector-0.1.0-SNAPSHOT.zip)

### Configuration

- **OpenAI Key:** Insert your OpenAI API key in the provided configurations.

---

## Functionalities

### 1. Standard LLM Chat

Create a chat endpoint (`/chat`) using WSO2 MI:

- Add a `Chat` operation from the AI Model tool palette.
- Configure a new OpenAI connection.
- Include a response mediator.

### 2. Knowledge Base (RAG)

#### Add Content (`PUT`)

Endpoint to add content:

- Use `Add to Knowledge` mediator.
- Connect PineCone Vector Store and embedding model.

Example:
```json
{"text": "Your content to be added"}
```

#### Retrieve Content (`GET`)

Endpoint to retrieve stored content:

- Use existing PineCone connections.

Example:
```json
{"text": "Search query here"}
```

### 3. RAG Chat

Enhanced chat interaction with knowledge base integration.

Example:
```json
{"prompt": "What topics will be covered at WSO2Con 2025?"}
```

### 3. AI Agent for Feedback Management

Endpoint (`customer/review`) manages feedback:

- Configure agent with OpenAI and in-memory storage.
- Set manager email (`MANAGER`) in `.env`.
- Utilize `Email Send` and `File Write` tools.

Example request:
```json
{
  "id": "CUST-1633",
  "email": "user@example.com",
  "review": "Poor service experience."
}
```
