# In this challenge we mix some tasty fruit juice.
# We can add some components with certain amounts.
# Sometimes we pour out a bit of our juice. 
# Then we want to find out, which concentrations our fruit juice has.
# The jug has a limited capacity, set at time of creation. It should not be possible
# to add more juice to the jug than it's capacity.

# Example:

# You take an empty jug for your juice, which has a maximum capacity
# Whenever the jug is empty, the concentrations are always 0
# Now you add 200 ml of apple juice
# And then you add 200 ml of banana juice
# Now the concentration of apple juice is 0.5 (50%)
# Then you pour out 200 ml
# The concentration of apple juice is still 50%
# Then you add 200 ml of apple juice again
# Now the concentration of apple juice is 0.75, while the concentration of banana juice
# is only 0.25 (300 ml apple juice + 100 ml banana juice)

# Complete the functions in order to provide this functionality.

class Jug
    @@MAX_CAPACITY=400
    def initialize
        @concentration = 0
        @amount=0
    end

    def add(amount, type)
       juice=Juice.new(type)
        @amount+=@amount
    end

    def pour(amount)
        @amount=amount
        @amount-=@amount
    end

    def getTotalAmount
    end

    def getConcentration(type)
    end
    def self.capacity=(capacity)
        @@MAX_CAPACITY = capacity
    end    
end
class Juice
    attr_accessor :type,:capacity 
end    

 
p Jug.capacity=500
