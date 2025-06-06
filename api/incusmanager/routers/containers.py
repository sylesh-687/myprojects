from fastapi import APIRouter
import subprocess
import requests_unixsocket


INCUS_SOCKET_PATH = "/var/lib/incus/unix.socket"
ENCODED_SOCKET_PATH = INCUS_SOCKET_PATH.replace('/', '%2F')
BASE_URL=f"http+unix://{ENCODED_SOCKET_PATH}"

router=APIRouter()

@router.get("/list")
async def list_containers():
    session=requests_unixsocket.Session()
    instances_url=f"{BASE_URL}/1.0/instances"
    response = session.get(instances_url)
    return response.json()






