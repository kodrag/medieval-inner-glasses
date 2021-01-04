--made by Elvas huehue

--ONE NODE AWAY, NOT LIGHT SOURCE

function glasses(texture,name)
    minetest.register_node("medieval_inner_glasses:" .. name, {
          description = "medieval inner glass " .. name,
	        tiles = {texture},
          inventory_image = texture,
          use_texture_alpha = true,
          groups = {oddly_breakable_by_hand=2, cracky=2},
	        paramtype = "light",
          paramtype2 = "facedir",
          sunlight_propagates = true,
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

--ONE NODE AWAY, LIGHT SOURCE

function glasses(texture,name)
    minetest.register_node("medieval_inner_glasses:" .. name .. "_light", {
          description = "medieval inner glass " .. name .. " light",
	        tiles = {texture},
          inventory_image = texture,
          use_texture_alpha = true,
          groups = {oddly_breakable_by_hand=2, cracky=2},
          light_source = 14,
	        paramtype = "light",
          paramtype2 = "facedir",
          sunlight_propagates = true,
	        drawtype = "nodebox",
          node_box = {
	       type = "fixed",
		   fixed = {
			   {-0.5, -0.5, 0.9375, 0.5, 0.5, 1.0625},
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

--TWO NODES AWAY, NOT LIGHT light_source

function glasses(texture,name)
    minetest.register_node("medieval_inner_glasses:" .. name .. "_2", {
          description = "medieval inner glass " .. name .. " 2",
	        tiles = {texture},
          inventory_image = texture,
          use_texture_alpha = true,
          groups = {oddly_breakable_by_hand=2, cracky=2},
	        paramtype = "light",
          paramtype2 = "facedir",
          sunlight_propagates = true,
	        drawtype = "nodebox",
          node_box = {
	       type = "fixed",
		   fixed = {
			   {-0.5, -0.5, 1.9375, 0.5, 0.5, 2.0625},
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

--TWO NODES AWAY, LIGHT SOURCE

function glasses(texture,name)
    minetest.register_node("medieval_inner_glasses:" .. name .. "_light_2", {
          description = "medieval inner glass " .. name .. " light 2",
	        tiles = {texture},
          inventory_image = texture,
          use_texture_alpha = true,
          groups = {oddly_breakable_by_hand=2, cracky=2},
          light_source = 14,
	        paramtype = "light",
          paramtype2 = "facedir",
          sunlight_propagates = true,
	        drawtype = "nodebox",
          node_box = {
	       type = "fixed",
		   fixed = {
			   {-0.5, -0.5, 1.9375, 0.5, 0.5, 2.0625},
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

minetest.register_node("medieval_inner_glasses:holy_dirt", {
  tiles = {"default_dirt.png^[opacity:200"},
  sunlight_propagates = true,
  paramtype = "light",
  drawtype = "glasslike",
  use_texture_alpha = true,
  on_construct = function(pos, node, clicker, item, _)
		local ring_node = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z})
		if ring_node.name == "air" then
			minetest.set_node({x=pos.x, y=pos.y+1, z=pos.z}, {name="medieval_inner_glasses:ring", param2=ring_node.param2})
		end
	end,
	on_destruct = function(pos, node, _)
		minetest.remove_node({x=pos.x, y=pos.y+1, z=pos.z})
	end
})

minetest.register_node("medieval_inner_glasses:ring", {
	tiles = {"default_gold_block.png"},
  light_source = 7,
	paramtype = "light",
  drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.25, -0.1875, -0.1875, -0.125, 0.1875},
			{0.1875, -0.25, -0.1875, 0.3125, -0.125, 0.1875},
			{-0.1875, -0.25, 0.1875, 0.1875, -0.125, 0.3125},
			{-0.1875, -0.25, -0.3125, 0.1875, -0.125, -0.1875},
		}
	}
})

function meselamp(name,description,distance)
  minetest.register_node("medieval_inner_glasses:inner_mese_lamp" .. name, {
    description = "inner mese lamp" .. description,
    inventory_image = "default_meselamp.png",
  	tiles = {"default_meselamp.png"},
    groups = {oddly_breakable_by_hand=3, cracky=3},
    sunlight_propagates = true,
    light_source = 14,
    paramtype2 = "facedir",
  	drawtype = "nodebox",
  	paramtype = "light",
  	node_box = {
  		type = "fixed",
  		fixed = {
  			distance,
  		}
  	}
  })
end

meselamp("","",{-0.5, -0.5, 0.75, 0.5, 0.5, 1.25})
meselamp("_2"," 2",{-0.5, -0.5, 1.75, 0.5, 0.5, 2.25})
