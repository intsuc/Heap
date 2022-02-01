#> heap:exit
#
# @within heap:run

execute if data storage heap.tests: {status: 0} run data modify entity 0-0-0-0-0 CustomName set value '"\\n::set-output name=status::0"'
execute if data storage heap.tests: {status: 1} run data modify entity 0-0-0-0-0 CustomName set value '"\\n::set-output name=status::1"'
execute as 0-0-0-0-0 run say @s

stop
