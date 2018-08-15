#### pytorch numpy转tensor,tensor转numpy
```python
a = np.ones(5)
torch.from_numpy(a)

a = torch.FloatTensor(3,3)
print a.numpy()
```

#### pytorch扩展维度
···python
sig = torch.from_numpy(sig).float().unsqueeze(0)
```
