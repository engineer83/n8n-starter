## Create a volume to store persistent data
docker volume create n8n_data

## Make run script executable
chmod u+x run.sh 

## Run n8n (it assumes Ollama is running on http://localhost:11434)
./run.sh
