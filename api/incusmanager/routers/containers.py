from fastapi import APIRouter
import subprocess
import json

router=APIRouter()

@router.get("/list/containers")
async def list_containers():
    process = subprocess.run(['incus', 'list', '-f', 'json'], capture_output=True, text=True)
    containers = json.loads(process.stdout)
    return containers

@router.get("/list/networks")
async def list_networks():
    process=subprocess.run(['incus','network','list','-f','json'],capture_output=True,text=True)
    networks=json.loads(process.stdout)
    return networks

@router.get("/list/profiles")
async def list_profiles():
    process=subprocess.run(['incus','profile','list','-f','json'],capture_output=True,text=True)
    profiles=json.loads(process.stdout)
    return profiles

@router.post("/create/instance")
async def create_instance():
    process=subprocess.run(['incus','launch','images:debian/12','NewInstance'],capture_output=True,text=True)
    instance=json.loads(process.stdout)
    return instance
