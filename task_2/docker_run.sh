docker run --name pg --network network -e POSTGRES_PASSWORD=123456 -d postgres:13.3
docker run --name manage --network network -p 8000:8000 --rm task2