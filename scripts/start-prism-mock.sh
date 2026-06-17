#!/usr/bin/env bash
set -euo pipefail

echo "Starting all Prism mock servers in background..."

# Chạy ngầm server IoT ở cổng 4010
npx prism mock contracts/iot-ingestion.openapi.yaml -p 4010 --host 0.0.0.0 &

# Chạy ngầm server Access Gate ở cổng 4011
npx prism mock contracts/access-gate.openapi.yaml -p 4011 --host 0.0.0.0 &

# Chạy ngầm server Core Business ở cổng 4013 (nếu bài lab cần)
npx prism mock contracts/core-business.openapi.yaml -p 4013 --host 0.0.0.0 &

# Đợi một chút để các server kịp khởi động
sleep 2