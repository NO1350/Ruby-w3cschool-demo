#!/usr/bin/ruby -w

puts "This is main Ruby Program"

END{
  puts "Terminating Ruby Program"
}

BEGIN{
  puts "Initializing Ruby Program"
}

=begin
Ruby BEGIN语句和END语句
BEGIN{
        code
}

END{
       code
}

声明code会在程序运行之前之后被调用
=end
