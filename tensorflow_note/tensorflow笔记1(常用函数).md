### Tensorflow笔记1(一些函数用法)
#### *1.* tf.add_to_collection
&emsp;把变量放入一个集合，把很多变量变成一个列表.
```python
  tf.add_to_collection('a',x)
```
&emsp;即把变量x放入a列表
#### *2.* tf.stack
&emsp;这是一个矩阵拼接的函数
```python
tf.stack([x,y],axis=0)
```
&emsp;将x,y拼接成一个矩阵,axis表示所要拼接的维数
```python
import tensorflow as tf
a = tf.constant([1,2,3])
b = tf.constant([4,5,6])
c = tf.stack([a,b],axis=1)
with tf.Session() as sess:
    print(sess.run(c))
>>
   [[1 4] 
    [2 5] 
    [3 6]]
```
