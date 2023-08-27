# The purpose of this program is illustrating the array 
# in the python using numpy
import numpy as np

# *generating arry in numpy*
arr1=np.ones(6) # arr4=np.zeros(6)
# print("arr1 is: \n",arr1)
# print("Shape of arr1 is: \n", arr1.shape) # (6,)
# print("element type is: \n", arr1.dtype) #float64

arr2=np.array([[1.0,2.0,3.0],[4.0,5.0,6.0]])
# print("arr2 is: \n",arr2)
# print("Shape of arr2 is: \n", arr2.shape) # (2,3)
# print("element type is: \n", arr2.dtype) #float64

arr3=np.empty([2,3],dtype=float)
# print("arr2 is: \n",arr3) 
# print("Shape of arr2 is: \n", arr3.shape) # (2,3)
# print("element type is: \n", arr3.dtype) #float64

arr4=np.diag([1.0,2.0,3.0])
# print("arr4 is: \n",arr4) 
# print("Shape of arr4 is: \n", arr4.shape) # (3,3)
# print("element type is: \n", arr4.dtype) #float64

arr5=np.diag(arr4)
# print("arr5 is: \n",arr5) 
# print("Shape of arr5 is: \n", arr5.shape) # (3,)
# print("element type is: \n", arr5.dtype) #float64

arr6=np.arange(1.0,10.0,1.0)  # arange: (start, stop, step)
# print("arr6 is: \n",arr6) 
# print("Shape of arr6 is: \n", arr6.shape) # (9,)
# print("element type is: \n", arr6.dtype) #float64

arr7=arr6.reshape([3,3])
# print("arr7 is: \n",arr7) 
# print("Shape of arr7 is: \n", arr7.shape) # (3,3)
# print("element type is: \n", arr7.dtype) #float64

arr8=np.linspace(1.0,10.0,9)
# print("arr8 is: \n",arr8) 
# print("Shape of arr8 is: \n", arr8.shape) # (9，)
# print("element type is: \n", arr8.dtype) #float64

nx, ny = (3, 2)
x = np.linspace(0, 1, nx)
y = np.linspace(0, 1, ny)  # generating the location
xv, yv = np.meshgrid(x, y) # of the node in the meshgrid

# read array from txt file
# arr9=np.loadtxt(r'./.../filename.txt',skiprows=num)

# *creating matrix arrays*
arr10=np.identity(6) 
# print("arr10 is: \n",arr10) 
# print("Shape of arr10 is: \n", arr10.shape) # (6，6)
# print("element type is: \n", arr10.dtype) #float64

arr11=np.eye(6)
# print("arr11 is: \n",arr11) 
# print("Shape of arr11 is: \n", arr11.shape) # (6，6)
# print("element type is: \n", arr11.dtype) #float64