from typing import Any
import tensorflow as tf
import numpy as np


PATH_TO_MODEL = "./src/heart_disease_nn"


class Predictor:

    def __init__(self) -> None:
        self._model: Any = tf.keras.models.load_model(PATH_TO_MODEL)

    def predict(self, features: np.ndarray) -> float:
        preds = self._model.predict(features.reshape(1, -1))
        return float(np.argmax(preds))
