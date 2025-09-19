## 🚀 Getting Started with n8n + Ollama

This setup assumes you have [Ollama](https://ollama.com) running locally and want to persist your n8n workflows using Docker.

### 1️⃣ Create a Docker volume for persistent n8n data

```bash
docker volume create n8n_data
```

This ensures your workflows, credentials, and execution history are saved across container restarts.

---

### 2️⃣ Make the run script executable

```bash
chmod u+x run.sh
```

This allows you to launch n8n with a simple command.

---

### 3️⃣ Start n8n (expects Ollama at `http://localhost:11434`)

```bash
./run.sh
```

> ℹ️ Make sure Ollama is already running and accessible at `http://localhost:11434`.  
> You can verify this by running:
> ```bash
> curl http://localhost:11434/models
> ```

---

### ✅ Success

Once n8n is running, open your browser and visit:

```
http://localhost:5678
```

From there, you can start building workflows that integrate with Ollama using the LangChain nodes.

---
