# Name - Htet Aung Shine
# ID - 6530145
# Section - 541

% Facts 
read_newspaper(kitchen) :- glasses_on(kitchen_table).
read_newspaper(living_room) :- glasses_on(coffee_table).

% If glasses are on the kitchen table, then they were seen at breakfast
saw_glasses_at_breakfast :- glasses_on(kitchen_table).

% If not, then the glasses were on the coffee table
glasses_on(coffee_table).

% Determining the location of the glasses
where_are_glasses(Location) :- glasses_on(Location).