
vanilla_model.ARMOR:setVisible(false)
function events.tick()
helmet = player:getItem(6).id
 chestplate = player:getItem(5).id
 leggings = player:getItem(4).id
 boots = player:getItem(3).id
  helmetCheck()
  chestplateCheck()
  leggingsCheck()
  bootsCheck()
end
 function helmetCheck()
     models.player_model.MushroomArmor.Head.Truffle:setVisible(helmet == "minecraft:netherite_helmet")
     models.player_model.MushroomArmor.Head.BrownMushrooms:setVisible(helmet == "minecraft:golden_helmet")
     models.player_model.MushroomArmor.Head.LightBrownMushrooms:setVisible(helmet == "minecraft:iron_helmet")
     models.player_model.MushroomArmor.Head.MushroomCapRed:setVisible(helmet == "minecraft:air" or helmet == "minecraft:leather_helmet" or helmet == "minecraft:chainmail_helmet")
     models.player_model.MushroomArmor.Head.MushroomCapRedSpots:setVisible(helmet == "minecraft:air" or helmet == "minecraft:leather_helmet" or helmet == "minecraft:chainmail_helmet")
     models.player_model.MushroomArmor.Head.BlueMushroom:setVisible(helmet == "minecraft:diamond_helmet")
     models.player_model.MushroomArmor.Head.ChainmailOverlay:setVisible(helmet == "minecraft:chainmail_helmet")
     models.player_model.MushroomArmor.Head.MushroomCapRed:setUV(0, -32/128)
     models.player_model.MushroomArmor.Head.MushroomCapRed:setColor(1,1,1)
    if helmet == "minecraft:leather_helmet" then
      colorArmor(player:getItem(6))
     models.player_model.MushroomArmor.Head.MushroomCapRed:setUV(0,0)
     models.player_model.MushroomArmor.Head.MushroomCapRed:setColor(leather)
  end
end
function chestplateCheck()   
if chestplate == "minecraft:leather_chestplate" then
  colorArmor(player:getItem(5))
 models.player_model.MushroomArmor.Chestplate.Body2:setUV(-26/128,0)
 models.player_model.MushroomArmor.Chestplate.LeftArm2:setUV(-4/128,0)
 models.player_model.MushroomArmor.Chestplate.RightArm2:setUV(-4/128,0)
 models.player_model.MushroomArmor.Chestplate:setColor(leather)
  elseif chestplate == "minecraft:diamond_chestplate" then 
   models.player_model.MushroomArmor.Chestplate.Body2:setUV(0,-32/128)
   models.player_model.MushroomArmor.Chestplate.LeftArm2:setUV(-4/128,-4/128)
   models.player_model.MushroomArmor.Chestplate.RightArm2:setUV(-4/128,-4/128)
  elseif chestplate == "minecraft:golden_chestplate" then 
   models.player_model.MushroomArmor.Chestplate.Body2:setUV(0,-16/128)
   models.player_model.MushroomArmor.Chestplate.LeftArm2:setUV(-8/128,0)
   models.player_model.MushroomArmor.Chestplate.RightArm2:setUV(-8/128,0)
  elseif chestplate == "minecraft:iron_chestplate" then 
   models.player_model.MushroomArmor.Chestplate.Body2:setUV(-26/128,-16/128)
   models.player_model.MushroomArmor.Chestplate.LeftArm2:setUV(0,-4/128)
   models.player_model.MushroomArmor.Chestplate.RightArm2:setUV(0,-4/128)
  elseif chestplate == "minecraft:netherite_chestplate" then 
   models.player_model.MushroomArmor.Chestplate.Body2:setUV(-26/128,-32/128)
   models.player_model.MushroomArmor.Chestplate.LeftArm2:setUV(-8/128,-4/128)
   models.player_model.MushroomArmor.Chestplate.RightArm2:setUV(-8/128,-4/128)
  elseif chestplate == "minecraft:air" and ArmorEnabled then
  else
    models.player_model.MushroomArmor.Chestplate:setColor(1,1,1)
  end
models.player_model.MushroomArmor.Chestplate:setVisible(chestplate ~= "minecraft:air" and chestplate ~= "minecraft:elytra")
 models.player_model.MushroomArmor.Chestplate.ChainOverlay:setVisible(chestplate == "minecraft:chainmail_chestplate")
end
function leggingsCheck()
    if leggings ==  "minecraft:diamond_leggings" then
       models.player_model.MushroomArmor.Leggings:setUV(-16/128,-16/128)
    elseif leggings == "minecraft:netherite_leggings" then
       models.player_model.MushroomArmor.Leggings:setUV(-32/128,-16/128)
    elseif leggings == "minecraft:golden_leggings" then
       models.player_model.MushroomArmor.Leggings:setUV(-32/128,0)
    elseif leggings == "minecraft:iron_leggings" then
       models.player_model.MushroomArmor.Leggings:setUV(0,-16/128)
    elseif leggings == "minecraft:leather_leggings" then
      colorArmor(player:getItem(4))
           models.player_model.MushroomArmor.Leggings:setVisible(true)
           models.player_model.MushroomArmor.Leggings:setUV(-16/128,0)
           models.player_model.MushroomArmor.Leggings:setColor(leather)
    else
      models.player_model.MushroomArmor.Leggings:setColor(1,1,1)
    end
    models.player_model.MushroomArmor.Leggings:setVisible(leggings ~= "minecraft:air")
   models.player_model.MushroomArmor.Leggings.ChainOverlay2:setVisible(leggings == "minecraft:chainmail_leggings")
end
function bootsCheck()
if boots ==  "minecraft:diamond_boots" then
   models.player_model.MushroomArmor.Boots:setUV(-10/128,-11/128)
elseif boots == "minecraft:netherite_boots" then
   models.player_model.MushroomArmor.Boots:setUV(-20/128,-11/128)
elseif boots == "minecraft:golden_boots" then
   models.player_model.MushroomArmor.Boots:setUV(-20/128,0)
elseif boots == "minecraft:iron_boots" then
   models.player_model.MushroomArmor.Boots:setUV(0,-11/128)
elseif boots == "minecraft:leather_boots" then
  colorArmor(player:getItem(3))
   models.player_model.MushroomArmor.Boots:setColor(leather)
   models.player_model.MushroomArmor.Boots:setUV(-10/128,0)
else
     models.player_model.MushroomArmor.Boots:setColor(1,1,1)
end
models.player_model.MushroomArmor.Boots:setVisible(boots ~= "minecraft:air")
models.player_model.MushroomArmor.Boots.ChainBoots:setVisible(boots == "minecraft:chainmail_boots")
end

function pings.ArmorToggle(ArmorEnabled)
  models.player_model:setVisible(ArmorEnabled)
end

local toggleArmor = action_wheel:newPage()
toggleArmor:newAction()
:onToggle(pings.ArmorToggle)
:title("Toggle Armor")
:item("iron_chestplate")
action_wheel:setPage(toggleArmor)
function colorArmor(item)
  -- reset leather color
  local tag = item.tag
  if tag ~= nil and tag.display ~= nil and tag.display.color ~= nil then
      local rgb = vectors.intToRGB(tag.display.color)
      leather = vec(rgb.r, rgb.g, rgb.b)
  else
    leather = vec(106 /255, 64 /255, 41 /255)
  end
end