function events.tick()
    if world.getTime() % 16 == 0 then
      animations.player_model.Wag:setPlaying(math.random(1, 10) == 7)
    end
  end