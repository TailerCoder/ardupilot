function update()
  local wp_count = mission:num_commands()
  local wp_index = mission:get_current_nav_index()
  local intr_wp = mission:get_item(wp_count - 2)


  if wp_index > 0 then
    mission:set_item(wp_index-1, intr_wp)
  end

  return update, 5000

end

return update, 5000