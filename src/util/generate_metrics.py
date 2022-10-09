#!/bin/env python3

from datetime import datetime
from random import randrange

from sys import argv


def generate_metrics(
        patient_id: int,
        metric_type: str,
        v_from: int,
        v_to: int,
        t_from: datetime,
        t_to: datetime,
        n: int
):
    d_time = (t_to - t_from)/n
    ts = [t_from + d_time * i for i in range(n)]
    ys = [randrange(v_from, v_to) for _ in range(n)]
    for t, y in zip(ts, ys):
        print(
            f"insert into metrics (patient_id, metric_type, value, timestamp) values({patient_id}, '{metric_type}', {y}, '{t}');")

if __name__ == "__main__":
    generate_metrics(
        int(argv[1]),
        argv[2],
        int(argv[3]),
        int(argv[4]),
        datetime.fromisoformat(argv[5]),
        datetime.fromisoformat(argv[6]),
        int(argv[7]),
    )
