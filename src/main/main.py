import logging

import coloredlogs
from fastapi import FastAPI

from .containers import Container
from .endpoints import router


logger = logging.getLogger(__package__)
coloredlogs.install(
    level=logging.INFO,
    logger=logger,
    fmt="%(asctime)s %(name)s %(levelname)s %(message)s",
)


container = Container()

container.database().create_database(
    wipe=container.config.database.wipe()
)
insert_script_path: str | None = container.config.database.insert_script()
if insert_script_path:
    with open(insert_script_path) as file:
        container.database().insert_data(file)

app = FastAPI()
app.include_router(router)
