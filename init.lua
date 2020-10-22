--made by Elvas huehue

function glasses(texture,name)
    minetest.register_node("medieval_inner_glasses:" .. name, {
          description = "medieval inner glass " .. name,
	        tiles = {texture},
          inventory_image = texture,
          use_texture_alpha = true,
          groups = {oddly_breakable_by_hand=2, cracky=2},
	        paramtype = "light",
          paramtype2 = "facedir",
          sunlight_propagates = "true",
	        drawtype = "nodebox",
          node_box = {
	       type = "fixed",
		   fixed = {
			   {-0.5, -0.5, 0.9375, 0.5, 0.5, 1.0625}, -- NodeBox1
		    }
	     }
     })
end

glasses("medieval_craft_medieval_glass_yellow.png","yellow")
glasses("medieval_craft_medieval_glass_white.png","white")
glasses("medieval_craft_medieval_glass_red.png","red")
glasses("medieval_craft_medieval_glass_purple.png","purple")
glasses("medieval_craft_medieval_glass_pink.png","pink")
glasses("medieval_craft_medieval_glass_orange.png","orange")
glasses("medieval_craft_medieval_glass_grey.png","grey")
glasses("medieval_craft_medieval_glass_green.png","green")
glasses("medieval_craft_medieval_glass_darkgrey.png","darkgrey")
glasses("medieval_craft_medieval_glass_darkgreen.png","darkgreen")
glasses("medieval_craft_medieval_glass_cyan.png","cyan")
glasses("medieval_craft_medieval_glass_brown.png","brown")
glasses("medieval_craft_medieval_glass_blue.png","blue")
