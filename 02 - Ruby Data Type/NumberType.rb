#!/usr/bin/ruby -w
#encoding:utf-8
#Ruby支持的数据类型包括基本的Number、String、Ranges、Symbols，以及true、false和nil这几个特殊值，同时还有两种重要的数据结构——Array和Hash。
#数值类型(Number)
#1、整型(Integer)
=begin
整型分两种，如果在31位以内（四字节），那为Fixnum实例。如果超过，即为Bignum实例。

整数范围从 -230 到 230-1 或 -262 到 262-1。在这个范围内的整数是类 Fixnum 的对象，在这个范围外的整数存储在类 Bignum 的对象中。

您可以在整数前使用一个可选的前导符号，一个可选的基础指标（0 对应 octal，0x 对应 hex，0b 对应 binary），后跟一串数字。下划线字符在数字字符串中被忽略。

您可以获取一个 ASCII 字符或一个用问号标记的转义序列的整数值。
=end
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
days=(DateTime.new(2015,02,14)-DateTime.now).ceil
puts  "Maybe #{days} days left to go home."  # "" 中可以嵌入#{}输出表达式的值，或者是character escapes

#整型 Integer 以下是一些整型字面量
#字面量（literal）：代码中能见到的值，数值，bool值，字符串等都叫字面量
#如以下的0,1_000_000,0xa等
a1=0

#带千分符的整型
a2=1_000_000

#其它进制的表示
a3=0xa
puts a1,a2
puts a3

#puts print 都是向控制台打印字符，其中puts带回车换行符
=begin
这是注释，称作：嵌入式文档注释
类似C#中的/**/
=end

#浮点型

#Ruby 支持浮点数。它们是带有小数的数字。浮点数是类 Float 的对象，且可以是下列中任意一个。

123.4                # 浮点值
1.0e6                # 科学记数法
4E20                 # 不是必需的
4e+20                # 指数前的符号

#浮点型
f1=0.0
f2=2.1
f3=1000000.1
puts f3

#指数算术 指数不必是整数
puts 2**(1/4)#1与4的商为0，然后2的0次方为1
puts 16**(1/4.0)#1与4.0的商为0.25（四分之一），然后开四次方根