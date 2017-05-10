# Pull in API Hooks

require 'sketchup.rb'

# Show ruby console to see any mistakes

SKETCHUP_CONSOLE.show

# Menu item

UI.menu("Plugins").add_item("Magic Stair Tool") {
    
    UI.messagebox("Lets Build Stairs")
    
    # Calling all methods required
    
    draw_stairs
    
}

def draw_stairs
    
    # Creating some variables

    stairs = 12
    rise = 8
    run = 14
    width = 100
    thickness = 6
    
    # Getting handle of our model and the entities collection it contains
    
    model = Sketchup.active_model
    entities = model.entities
    
    # Creating loops
    
    for step in 1..stairs
        
     x1 = 0
     x2 = width
     y1 = run * step
     y2 = run * (step + 1)
     z = rise * step
        
    # Create our points using arrays
        
    pt1 = [x1, y1 ,z]
    pt2 = [x2, y1, z]
    pt3 = [x2, y2, z]
    pt4 = [x1, y2, z]
    
    # Call method to the entities collection. Creating stairs
    
    new_face = entities.add_face pt1, pt2, pt3, pt4
    new_face.material = "Sienna"
    new_face.pushpull thickness
    
    end
    
end

    
    
    
        
        
        
        
        
        
        
        
        
    