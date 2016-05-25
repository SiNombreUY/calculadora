require_relative "binary_operation"

class Sum < BinaryOperation
	def execute
		@operation_1 + @operation_2 
	end
end