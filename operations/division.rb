require_relative "binary_operation"
class Division < BinaryOperation
	def execute
		@operation_1 / @operation_2 
	end
end