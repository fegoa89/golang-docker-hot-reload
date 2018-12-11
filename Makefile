## build: Build Dockerfile.
build:
	@echo "Building Go Binary..."
	docker build -f cmd/rest-api/Dockerfile -t rest-api .

## start-server: Start in development mode. Gets reloaded automatically when code changes.
start-server:
	@echo "Running Server..."
	docker-compose up -d

## stop-server: Stop development mode.
stop-server:
	@echo "Stopping Server..."
	docker-compose down

## watch-logs: Display logs in the console.
watch-logs:
	docker-compose logs -f

## clean: Remove all unused locale Volumes and remove all stopped containers.
clean:
	docker system prune -f
	docker volume prune -f

help: Makefile
	@echo
	@echo "Available commands:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo
