from fastapi import FastAPI
from fastapi.responses import JSONResponse

app=FastAPI()

@app.get("/healthz")
def healthcheck():
    return JSONResponse(status_code=200, content={"status": "ok"})

@app.get("/readiness")
def readiness():
    return JSONResponse(status_code=200, content={"ready": True})