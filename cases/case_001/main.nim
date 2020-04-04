echo NimVersion

var s: string
for i in 1..1000000:
  s.add($i)

writeFile("out.txt", s)
echo "end"
