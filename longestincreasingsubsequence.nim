proc longestIncreasingSubsequence[T](d: seq[T]): seq[T] =
  var l = newSeq[seq[T]]()
  for i in 0 ..< d.len:
    var x = newSeq[T]()
    for j in 0 ..< i:
      if l[j][l[j].high] < d[i] and l[j].len > x.len:
        x = l[j]
    l.add x & @[d[i]]
  result = @[]
  for x in l:
    if x.len > result.len:
      result = x

for d in [@[3,2,6,4,5,1], @[0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]]:
  echo "a L.I.S. of ", d, " is ", longestIncreasingSubsequence(d)
