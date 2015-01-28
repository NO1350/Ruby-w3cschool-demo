#!/usr/bin/ruby -w
123                  # Fixnum 十进制
1_234                # Fixnum 带有下划线的十进制
-500                 # 负的 Fixnum
0377                 # 八进制
0xff                 # 十六进制
0b1011               # 二进制
?a                   # 'a' 的字符编码
?\n                  # 换行符（0x0a）的编码
12345678901234567890 # Bignum

require 'Date'
days=(Time.new(2015,02,14)-Time.now).ceil
puts  'Maybe #{days} days left.'