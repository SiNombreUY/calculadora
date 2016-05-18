require_relative "Sum"
require_relative "Diference"
require_relative "Division"
require_relative "Multiplication"
require_relative "Inverse"
require_relative "Square"
require_relative "Squareroot"

class Calculator
	def add_operand(operandtemp)
          @operand_temp = operandtemp
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
	add_operand (op)
                  if @current_operation
                  	 @current_operation.add_operand (op)
                  else 
                  	@operand_temp = op
                  end
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