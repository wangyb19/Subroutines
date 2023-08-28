# The purpose of this program is illustrating the array/matrix operation in python using numpy module
# The code was developed by Yongbin Wang 2023/8/28
import numpy as np

a=np.array([[1,2],[3,4]]) # a 2*2 matrix
d=np.linalg.inv(a)   # inversion of matrix corresponding to inv() in matlab
b=np.array([[5,6],[7,8]]) # another 2*2 matrix
c=np.dot(a,b)             # producto of two matrix, corresponding to a*b in matlab
