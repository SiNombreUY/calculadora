require_relative "unary_operation"
class SquareRoot < UnaryOperation
	def execute
		math.sqrt(@operand)
	end
	end