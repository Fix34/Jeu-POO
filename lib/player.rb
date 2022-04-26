require 'pry'
class Player
    attr_accessor :name, :life_point

        
    def initialize(name)
        @name = name
        @life_point = 10       
    end

    def show_state
        puts "#{name} a #{life_point} points de vie"
    end

    def gets_damage(damage)
        @life_point = @life_point - damage.to_i
        if @life_point <= 0
            puts "#{name} est mort"
        end
    end

    def compute_damage
        return rand(1..6)
    end

    def attacks(player_attacked)
        puts "#{name} attaque #{player_attacked.name} !!"
        puts "\n"
        damage_received = compute_damage
        puts "#{name} met une grosse baigne dans la tronche de #{player_attacked.name} et lui inflige #{damage_received} points de dégats !"
        puts "\n"
        player_attacked.gets_damage(damage_received)
    end
end
class Human_player < Player 
    attr_accessor :weapon_level

    def initialize(name)
        @name = name
        @weapon_level = 1
        @life_point = 100       
    end
#On affiche le nombre de point de vie des joueurs
    def show_state
        puts "#{name} a #{life_point} points de vie et a une arme de niveau #{weapon_level}"
    end

    def compute_damage
        return rand(1..6) * @weapon_level
    end
# On détermine une arme d'un niveau aléatoire que le joueur va équiper si elle est meilleure que la précédente
    def search_weapon
        weapon = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{weapon} !"
        if weapon > weapon_level then
            weapon_level = weapon
            puts "Cool, tu as trouvé une meilleure arme, tu t'en équipe !!"
        else
            puts "Pas de bol, cette arme est pourrie, laisse là où elle est..."
            
        end
    
    end
# On ajoute la possibilité au joueur humain de récupérer de la vie selon un lancé de dé
    def search_healthpack
        dice = rand(1..6)
        if dice == 1 then
            puts "Tu n'as rien trouvé, tu as toujours #{life_point} points de vie"
        
        elseif dice == [2..5]                 
            @life_point += 50
            if @life_point > 100 then
                @life_point = 100
        end
            puts "Tu as désormais #{life_point} points de vie !"
            puts "Bravo ! Tu as trouvé une potion + 50pv"
        end
        if dice == 6
            @life_point += 80
            if @life_point > 100 then
                @life_point = 100
            puts "Bravo tu as trouvé une super potion + 80pv !!"
            puts "Tu as désormais #{life_point} points de vie !"
            end
        end
    end
end
#binding.pry