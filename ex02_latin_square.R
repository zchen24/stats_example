# Generate Balanced Latin Square (BLS)
# Zihan Chen
# 2015-03-30
# Reference: http://statpages.org/latinsq.html

# load library
library(crossdes)

order = 2
crossdes::williams(order)  # 2 BLS

order = 3
crossdes::williams(order)  # 3 BLS

order = 6
crossdes::williams(order)  # 6 BLS
