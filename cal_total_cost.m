%Function to calculate the approximated total mission cost
%There are two parts to this total cost: total cost of supplies and
%approximate cost of sending that to space

%Look for cost estimating relationships

function [total_cost] = cal_total_cost(num_people, material_volume, food_mass, equipment_volume)

%Define cost of materials
habitat_material_density = 4.43; %kg/m^3 (Ti-6Al-4V)
habitat_material_cost = 50; %$/kg (approximate)
food_cost = 20; %$/kg (total guess)
equipment_cost = 100; %$/m^3 (total guess)
human_mass = 75; %kg
space_cost = 22000; %$/kg to send something to space

%Calculate just raw material cost
total_habitat_material_cost = material_volume * habitat_material_density * habitat_material_cost;
total_food_cost = food_mass * food_cost;
total_equipment_cost = equipment_volume * equipment_cost;

%Calculate the total mass of stuff being sent to get "rocket cost"
total_mass = (material_volume*habitat_material_density) + food_mass + equipment_mass + (num_people*human_mass);

total_cost = total_mass*space_cost; 