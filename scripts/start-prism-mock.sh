#!/usr/bin/env bash
set -euo pipefail

CONTRACT_FILE="${1:-contracts/iot-ingestion.openapi.yaml}"
PORT="${2:-4010}"

echo "Starting Prism mock from ${CONTRACT_FILE} on port ${PORT} in background"

# Thêm dấu & vào cuối lệnh npx để server này chạy ngầm, không chặn tiến trình tiếp theo
npx prism mock "${CONTRACT_FILE}" -p "${PORT}" --host 0.0.0.0 &

# Chờ 1 giây để đảm bảo tiến trình ngầm được khởi tạo ổn định
sleep 1