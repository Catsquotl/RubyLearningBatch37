def hello
  'hello'
end
=begin
doctest:1
>> hello
=>"hello world"

doctest: 2
>> hello
=> "hello world"

doctest: 3
>>hello
=>"hello world"

doctest:4
>>hello
=> "hello world"
=end
catsquotl@catsquotl-VirtualBox ~/github/RL-Batch37/W1 $ rubydoctest doctest1.rb
/var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/bin/rubydoctest:4: Use RbConfig instead of obsolete and deprecated Config.
=== Testing 'doctest1.rb'...
1.   OK  | 1
2.  FAIL | 2
           Got:      "hello"
           Expected: "hello world"

             from doctest1.rb:11
3.   OK  | 3
/var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/lib/code_block.rb:56:in `actual_result': undefined method `actual_result' for nil:NilClass (NoMethodError)
	from /var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/lib/runner.rb:138:in `block in run'
	from /var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/lib/runner.rb:124:in `each'
	from /var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/lib/runner.rb:124:in `each_with_index'
	from /var/lib/gems/1.9.1/gems/rubydoctest-1.1.3/lib/runner.rb:124:in `run'
	from -e:8:in `<main>'
catsquotl@catsquotl-VirtualBox ~/github/RL-Batch37/W1 $ 