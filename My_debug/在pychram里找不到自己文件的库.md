---
在pychram里找不到自己文件的库，但是在命令行中找不到
---
&emsp;&emsp; 在pycharm中可以找到自己文件下的库，在命令行中找不到，需要在自己相应的python文件里添加项目的根目录，如下所示：
```python
sys.path.append("/home/ustc-ee-huangjie/video-practice/hdrnet")
```
&emsp;&emsp; 这样就能在命令行里找到了。