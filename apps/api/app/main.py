from fastapi import FastAPI

app = FastAPI(title="InfringeIQ API")


@app.get("/healthz")
def healthz():
    return {"status": "ok"}
