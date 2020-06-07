import requests
import tensorflow as tf
import numpy as np
import pandas as pd
import cv2
from keras import layers
import tensorflow
from keras.layers import Flatten, Dense, Input, Activation, Dropout, Conv2D, MaxPooling2D, BatchNormalization
from keras.models import Model
from keras.preprocessing import sequence, image
from keras import layers
from keras.optimizers import Adam
from keras.models import load_model
import os
from keras.callbacks import Callback
from keras.models import Sequential
import keras

file123 = open('mytxt.txt','r')

my_line = file123.readline()
file123.close()

x = my_line.split("+")
img_path= x[0]
user = x[1]


img = cv2.imread(img_path)
img=cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
img = cv2.resize(img,(96,96))
img = img/255.
img = np.reshape(img,[1,96,96,3])



vgg_model = load_model("ml_models/vgg16_2_model.hdf5")
vgg_prob=vgg_model.predict(img)


avg_result = vgg_prob[0][0]


file_xyz = open('myreport.txt','w')
#diagnosis=(str(final_classes[0]) + "+" + str(user))
if (avg_result < 0.5):
    file_xyz.write("Negative")
else:
    file_xyz.write("Positive")        
file_xyz.close()

import pyAesCrypt
# encryption/decryption buffer size - 64K
bufferSize = 64 * 1024
password = "123456"
# encrypt
pyAesCrypt.encryptFile(img_path, (img_path + ".aes" ) , password, bufferSize)

import os
os.remove((img_path))
