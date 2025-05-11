from fastapi import APIRouter
import subprocess
import json

router=APIRouter()

@router.get("/list")
async def list_containers():
    process = subprocess.run(['incus', 'list', '-f', 'json'], capture_output=True, text=True)
    containers = json.loads(process.stdout)
    output = []
    for c in containers:
        name = c.get("name")
        status = c.get("status")
        ips = c.get("state", {}).get("network", {}).get("eth0", {}).get("addresses", [])
        ip = next((a["address"] for a in ips if a["family"] == "inet"), None)

        output.append({
            "name": name,
            "ip": ip,
            "status": status
        })
    return output