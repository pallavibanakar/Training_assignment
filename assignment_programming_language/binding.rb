class MyClass
	@@x = " x"
	def initialize(s)
		@mystr = s
	end
	def getBinding
		return binding()
	end
end

class MyOtherClass 
	@@x = " y"
	def initialize(s)
		@mystr = s
	end
	
	#Method Name : getBinding()
	#return string
	def getBinding
		return binding()
	end
end


			 
