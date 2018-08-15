### Numpy笔记1(常用函数)
#### *1* np.indentity()
```python
np.identity(n, dtype=None)
```
：只能获取方阵，也即标准意义的单位阵；
#### 2. np.clip
将矩阵范围限定在一定范围内

#### 3.numpy扩展维数
```python
>>> x = np.array([1,2])
>>> x.shape
(2,)
>>> y = np.expand_dims(x, axis=0)
>>> y
array([[1, 2]])
>>> y.shape
(1, 2)
>>> y = np.expand_dims(x, axis=1)  # Equivalent to x[:,newaxis]
>>> y
array([[1],
       [2]])
>>> y.shape
(2, 1)
```

