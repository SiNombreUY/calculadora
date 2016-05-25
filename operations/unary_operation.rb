require_relative "operation"
class UnaryOperation < Operation
	attr_accessor :operand
	
	def add_operand(valor_Unary)
		@Operand = valor_Unary
	end
end