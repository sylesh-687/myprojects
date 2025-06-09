from fastapi import FastAPI
from routers import containers
from routers import networks

app = FastAPI(title="IncusManager API", version="1.0.0")
app.include_router(containers.router)
app.include_router(networks.router)
