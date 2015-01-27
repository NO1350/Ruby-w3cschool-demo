#!/usr/bin/ruby -w
=begin
Ruby中的Here Document."Here Document"是指建立多行字符串。在<<之后，
可以指定一个字符串或标识符来终止字符串，且当前行之后直到终止符为止的
所有行是字符串的值。如果终止符用引号括起，引号的类型决定了面向行飞字符
串类型。请注意<<和终止符之间必须没有空格。
=end
print <<EOF
          This is the first way of creating here document ie.
          multiple line string.
EOF

print <<"EOF";                                                    #与上面相同
          This is the first way of creating here document ie.
          multiple line string.
EOF

print <<'EOC'                                                       #执行命令
          echo hi there
          echo lo there
EOC

print <<'foo',<<"bar"
          I said foo.
foo
          I said bar.
bar
