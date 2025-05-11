from FastAPI import APIRouter

api=APIRouter()


@router.get("/list")
async def list_containers():
    return {"message": "App will connect to incus"}