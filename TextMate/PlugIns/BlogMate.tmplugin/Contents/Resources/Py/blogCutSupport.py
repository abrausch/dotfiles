import sys;
import re;

pat = re.compile(sys.argv[1], re.I|re.M)
str = sys.argv[2]

res = pat.split(str)

if len(res) > 1:
	print len(res[0])
else:
	print -1