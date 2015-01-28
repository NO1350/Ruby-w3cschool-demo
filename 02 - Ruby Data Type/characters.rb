#!/usr/bin/ruby -w
#encoding:utf-8
=begin
字符串类型
Ruby 字符串简单地说是一个 8 位字节序列，它们是类 String 的对象。

双引号标记的字符串允许替换和使用反斜线符号，单引号标记的字符串不允许替换，且只允许使用 \\ 和 \' 两个反斜线符号。
=end

puts 'escape using "\\"';
puts 'That\'s right';

#使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串。在这里，expr 可以是任意的 Ruby 表达式。
puts "Multiplication Value : #{24*60*60}";

name="Ruby"
puts name
puts "#{name+",ok"}"

=begin
反斜线符号
符号	表示的字符
\n	换行符 (0x0a)
\r	回车符 (0x0d)
\f	换页符 (0x0c)
\b	退格键 (0x08)
\a	报警符 Bell (0x07)
\e	转义符 (0x1b)
\s	空格符 (0x20)
\nnn	八进制表示法 (n 是 0-7)
\xnn	十六进制表示法 (n 是 0-9、a-f 或 A-F)
\cx, \C-x	Control-x
\M-x	Meta-x (c | 0x80)
\M-\C-x	Meta-Control-x
\x	字符 x
=end

=begin
数组
数组字面量通过[]中以逗号分隔定义，且支持range定义。

（1）数组通过[]索引访问
（2）通过赋值操作插入、删除、替换元素
（3）通过+，－号进行合并和删除元素，且集合做为新集合出现
（4）通过<<号向原数据追加元素
（5）通过*号重复数组元素
（6）通过｜和&符号做并集和交集操作（注意顺序）

=end

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
  puts i
end

#哈希类型
#Ruby 哈希是在大括号内放置一系列键/值对，键和值之间使用逗号和序列 => 分隔。尾部的逗号会被忽略。
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
  print key, " is ", value, "\n"
end

#范围类型
=begin
一个范围表示一个区间。

范围是通过设置一个开始值和一个结束值来表示。范围可使用 s..e 和 s...e 来构造，或者通过 Range.new 来构造。
使用 .. 构造的范围从开始值运行到结束值（包含结束值）。使用 ... 构造的范围从开始值运行到结束值（不包含结束值）。当作为一个迭代器使用时，范围会返回序列中的每个值。

范围 (1..5) 意味着它包含值 1, 2, 3, 4, 5，范围 (1...5) 意味着它包含值 1, 2, 3, 4 。
=end
(10..15).each do |n|
  print n, ' '
end
