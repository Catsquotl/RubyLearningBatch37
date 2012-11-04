=begin
y = false
z = true
x = y or z
puts x
(x = y) or z
puts x
x = (y or z)
puts x
=end
y = false
z = true

x = y or z
# x will be false as '=' takes precedence over 'or'
puts 'x is ' + x.to_s

v = y || x || z # x is also false
# v will be true as in this case the operands get evaluated by the || operator which will discard all
#operands that are 'false' or 'nil'
puts 'v is ' + v.to_s

(x = y) or z
# same as before. x will be false as = takes precedence. the brackets just emphasize that fact
puts "x = #{x}"

(v = y) || z
# in this case v will be false as the assignment gets evaluated first due to the brackets
puts "v = #{v}"

x = (y or z)
# x will be true as or the operands of "or" get evaluated first due to the brackets
puts "x = #{x}"

v = (y || z)
#same here v = true as the brackets evaluate the operands first
puts "v = #{v}"