-- Simple UI Library
local library = {}

function library:CreateWindow(title)
    local window = {}
    window.title = title
    window.sections = {}
    
    function window:Section(name)
        local section = {}
        section.name = name
        section.elements = {}
        
        function section:Button(text, callback)
            table.insert(self.elements, {type = "Button", text = text, callback = callback})
        end
        
        function section:Toggle(text, options, callback)
            table.insert(self.elements, {type = "Toggle", text = text, options = options, callback = callback})
        end
        
        function section:Slider(text, options, callback)
            table.insert(self.elements, {type = "Slider", text = text, options = options, callback = callback})
        end
        
        function section:Textbox(text, placeholder, callback)
            table.insert(self.elements, {type = "Textbox", text = text, placeholder = placeholder, callback = callback})
        end
        
        function section:Dropdown(text, list, callback)
            table.insert(self.elements, {type = "Dropdown", text = text, list = list, callback = callback})
        end
        
        table.insert(window.sections, section)
        return section
    end
    
    return window
end

return library
