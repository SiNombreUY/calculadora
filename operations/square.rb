require_relative "unary_operation"
class Square < UnaryOperation
	def execute
		@operand * @operand
	end
	end