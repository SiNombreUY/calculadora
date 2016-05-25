require_relative "operations/sum"
require_relative "operations/diference"
require_relative "operations/division"
require_relative "operations/multiplication"
require_relative "operations/inverse"
require_relative "operations/square"
require_relative "operations/square_root"

class Calculator
	def add_operand(operandtemp)
       if @current_operation
      	 @current_operation.add_operand(operandtemp)
      else 
      	@operand_temp = operandtemp
      end
	end

	def set_operation(operation_set)
        
	    operation_klass = case operaton_set 
		                   when "+" then Sum
		                   when "-" then Diference
		                   when "/" then Division
		    	           when "*" then Multiplication
		   			       when "INV" then Inverse
		    	           when "SQ" then Square
		                   when "SQRT" then SquareRoot  	
		                   end
		@current_operation = current_klass.new(@operand_temp)
		@operand_temp=nil
	    	
	end

	def execute
	   result = @current_operation.execute
       clear
       result
       rescue ZeroDivisionError
       	"error"
     end

	def clear 
		@operand_temp = nil
		@current_operation = nil
	end
end
