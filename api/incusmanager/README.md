# IncusManager

A FastAPI-based REST API to manage Incus containers and virtual machines.

## Features
- List containers
- Launch containers from images
- Start/Stop/Delete containers
- Execute commands inside containers

## Run the App
```bash
uvicorn app.main:app --reload