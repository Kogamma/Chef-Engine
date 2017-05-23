-- Here you put all the values you want the component to contain
OtherComponent = 
{
	ID = -1,
	setTrue = 1
}

-- This is what you call to create a new instance of the component
function OtherComponent.Create(component)
		
	-- You send the component as a parameter to LoadComponent in C++
	-- This function returns a "new instance" of the sent component
	output = Chef.LoadComponent(OtherComponent)

	output.component = component
	output.gameObject = component.gameObject
	output.transform = component.gameObject.transform
	
	return output
end

-- Gets called the moment you instantiate this component
function OtherComponent.Awake(self)

end

-- Used for initialization
function OtherComponent.Start(self)	
	self.ID = OtherComponent.ID
end


--Gets called every frame
function OtherComponent.Update(self)	
	if self.setTrue >= 60 then 	
	self.setTrue = 0
	self.transform:Move(Chef.Vector2f(5, 1)) end
end