# Golang Docker Hot Reload

Local development environment with hot reload functionality.
Using docker-compose for orchestrate Docker containers and justdoit (https://github.com/go-playground/justdoit) for watch file changes.

```console
foo@bar:~$ make help
Available commands:

  build          Build Dockerfile.
  start-server   Start in development mode. Gets reloaded automatically when code changes.
  stop-server    Stop development mode.
  watch-logs     Display logs in the console.
  clean          Remove all unused locale Volumes and remove all stopped containers.
```
