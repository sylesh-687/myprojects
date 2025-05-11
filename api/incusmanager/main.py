from fastapi import FastAPI
from routers import containers

app = FastAPI(title="IncusManager API", version="1.0.0")
app.include_router(containers.router)
