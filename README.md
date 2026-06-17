# Lab 03 - API Contract First Design

## Student Information

* Name: Nguyen Van Hiep
* Student ID: 1771020260

## Project Structure

* contracts/: OpenAPI specifications
* mock-data/: sample payloads
* docs/: project documentation
* checklists/: submission checklists

## Technologies

* OpenAPI 3.0
* Prism Mock Server
* Node.js
* GitHub Actions

## Run Mock Server

### IoT Service

```bash
npm run mock:iot
```

### Access Gate Service

```bash
npm run mock:access
```

### Core Business Service

```bash
npm run mock:core
```

## Testing

Health endpoint:

```bash
GET /health
```

Latest readings:

```bash
GET /readings/latest
```

Create reading:

```bash
POST /readings
```
