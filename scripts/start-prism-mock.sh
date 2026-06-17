#!/usr/bin/env bash
# Loại bỏ bớt strict mode kẹt tiến trình ngầm, chỉ giữ lại set -e
set -e

CONTRACT_FILE="${1:-contracts/iot-ingestion.openapi.yaml}"
PORT="${2:-4010}"

echo "Starting Prism mock from ${CONTRACT_FILE} on port ${PORT} in background..."

# Chạy ngầm prism mock và chuyển hướng log (stdout/stderr) vào ngõ cụt để tránh nghẽn terminal của GitHub
npx prism mock "${CONTRACT_FILE}" -p "${PORT}" --host 0.0.0.0 > /dev/null 2>&1 &

# Cho phép tiến trình nền có 1 giây để tách luồng thành công
sleep 1