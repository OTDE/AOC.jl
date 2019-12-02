export all_fuel, all_fuel_recursive

fuel(mass) = mass ÷ 3 - 2
all_fuel(modules) = sum(fuel, modules)

function fuel_recursive(mass)
    next_fuel = fuel(mass)
    return next_fuel < 1 ? 0 : next_fuel + fuel_recursive(next_fuel)
end

all_fuel_recursive(modules) = sum(fuel_recursive, modules)
