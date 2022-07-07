class Rover
    #Assigning values to instance variables so that we can access them at a later stage.
   
    def initialize (x, y, direction)
        @x = x
        @y = y
        @direction = direction
    end 
    #Checking if rover is still on mars, if so, accept given input and give it's location.
    #-if it's out of bounds, return an error message.
    
    
    def instruction(position)
        on_mars = true 
        position.split('').each do |input|
            if input == 'L'
                left
            elsif input == 'R'
                right
            elsif input == 'M' 
              on_mars = move 
            else 
                puts "ERROR: invalid input"
                break
            end
        end

            if on_mars == false 
                return "ERROR: this rover is out of bounds" 
            end
            if on_mars == true
        puts "Current location: x= #{@x} y= #{@y} facing= #{@direction}"
    end 
end
   
# tells the rover where to face, if input = right and puts out orientation
    def right
        if @direction == 'S'
            puts "the rover is facing West."
          @direction = 'W'
        elsif @direction == 'N'
            puts "the rover is facting East"
          @direction = 'E'
        elsif @direction == 'W'
            puts "the rover is facting North"
          @direction = 'N'
        else 
          puts "the rover is facing South"
          @direction = 'S'
        end
      end
    
      
# tells the rover where to face, if input = left and puts out orientation

      def left
      if @direction == 'N'
          puts "the rover is facing North."
        @direction = 'W'
      elsif @direction == 'W'
          puts "the rover is facting West"
        @direction = 'S'
      elsif @direction == 'E'
          puts "the rover is facting East"
        @direction = 'N'
      else @direction == 'S'
        puts "the rover is facing South"
        @direction = 'E'
      end
    end
    
    
        
    #instructions for the rover to move and also set boundries for it's movement on mars

    def move
        if @direction == 'N' && @y < 5
          @y += 1
           true
        elsif @direction == 'E' && @x < 5
          @x += 1
           true
        elsif @direction == 'S' && @y > 0
          @y -= 1
           true
        elsif @direction == 'W' && @x > 0
            @x -= 1
             true
        else (@y < 6 || @y < -1 ||@x > 6 || @y < -1)
            false 
            end 
         end
    end


    
                
    