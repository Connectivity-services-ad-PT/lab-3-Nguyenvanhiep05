# Consumer–Provider Handshake

## Thông tin chung

- Lab: FIT4110 Lab 03
- Ngày: 2026-05-19
- Provider team: team-core (Core Business — A6)
- Consumer team: team-gate (Access Gate — A3)
- Provider service: Core Business
- Consumer service: Access Gate

## Contract

- Contract file: `contracts/core-business.openapi.yaml`
- Mock base URL: `http://localhost:4011`
- Auth method: Bearer token
- Endpoint được test: `POST /policies/evaluate-access`

## Smoke test

### Request

```http
POST /policies/evaluate-access
Authorization: Bearer lab-token
Content-Type: application/json
```

```json
{
  "card_id": "CARD-2026-001",
  "gate_id": "GATE-01",
  "direction": "in",
  "zone_id": "ZONE-A"
}
```

### Expected response

```json
{
  "allowed": true,
  "reason": "Card is valid and has access permission"
}
```

## Kết quả

- [x] Consumer gọi mock thành công.
- [x] Consumer parse được field cần dùng (`allowed`, `reason`).
- [x] Consumer hiểu lỗi 4xx/5xx provider trả về.
- [x] Có Newman report hoặc screenshot.

## Ghi chú thay đổi hợp đồng

| Nội dung | Trước | Sau | Người đồng ý |
|---|---|---|---|
| Thêm zone_id vào request | Không có | Có (optional) | A3 + A6 |

## Xác nhận

- Provider representative: team-core (A6)
- Consumer representative: team-gate (A3)
