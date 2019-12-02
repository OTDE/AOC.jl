using AOC

open("fuel_counter_input.txt") do file
    modules = parse.(Int, eachline(file))
    total_fuel = all_fuel(modules)
    total_fuel_recursive = all_fuel_recursive(modules)
    println(total_fuel)
    println(total_fuel_recursive)
end
