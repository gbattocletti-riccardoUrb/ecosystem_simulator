classdef creature < handle
    
    properties (Constant)
        eating_distance = 0.2;      % distance from the food at which the creature can eat the food (consider the map to be about 100x100)
        coeff_vis_border=0.2;       % the creature does not go closer to the borders than coeff*sense radius 
        satiety_coeff=0.7;          % over <coeff>% max energy the creature does not look for more food
        % mutation_probability?
    end
        
    properties
        age;                % n� of cycles survived           
        size;               % size of the creature. Bigger creatures can store more energy but also consume more
        speed;              % speed of the creature. Faster creatures also consume more energy
        sense_radius;       % sense in which the creature can detect food presence
        position;           % vector [x, y] with the current cohordinates of the creature
        angle_history;      % saves the direction of last movement to be able to follow a "reasonable" path during random movement
        energy;             % current energy of the creature. If <=0 the creature dies   
        max_energy;         % max energy that the creature can store
        energy_consumption; % energy consumed at each time step. Depends on size, speed and sense radius
        dead;               % boolean. 0 if alive, 1 if dead
        birth_cycle;        % cycle of birth of the creature
        death_cycle;        % cycle of death of the creature
        death_step;         % inside the cycle of death, als o the step of death is saved
        energy_history;     % saves the energy value at each time step (resetted each cycle)
        position_history;   % saves the position at each step time (resetted each cycle)
        memory_vec;         % vector that stores the positions of food sensed by the creature but that the creature has not reached yet. 
                            % Note that those food units could be eaten by other creatures
        go_back_distance;   % distance from already discovered food 
        food_eaten;         % n� of food units eaten --> probably will become a vector (to store all the food eaten during all the cycles)
        generation;         % n�of generation at which the creature appears --> depends on the generation of the father +1
        ID;                 % unique number identifying the creature
        parent_ID;          % ID of the father (to be able to trace back the parents of each creature)
    end

    methods
        function obj = creature()
            %CREATURE Construct an instance of this class
            %   Creates a creature object with a set of 
            %   starting characteristics generated by one of
            %   the designated functions (see below). Many
            %   properties, like for example the size,
            %   speed and sense radius are constant, other 
            %   like age and position change with time.
        end

        function obj = creature_vec(obj, x)
            % used to initialize creature COLUMN vectors of known dimension.
            % function usage is:
            % vec_name = creature();
            % vec_name = vec_name.creature_vec(rows);
            obj(x, 1) = creature();
        end
    end
end