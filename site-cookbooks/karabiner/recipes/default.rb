bash "kr4mb" do
  user  node["user"]["name"]
  group node["user"]["group"]
  environment "HOME" => node["user"]["home"]

  code <<-EOC
    mkdir "$HOME/Libraby/Application Support/Karabiner/private.xml"
    ln -s $HOME/Dropbox/data/mac/Karabiner/private.xml "$HOME/Libraby/Application Support/Karabiner/private.xml"
    defaults write org.pqrs.Karabiner isStatusbarEnable -bool false
  EOC
end


karabiner_remap "remap.space2shiftL_space_not_alfred"
karabiner_remap "option.mousekeys_mode_jis_eisuu2leftclick"
karabiner_remap "option.mousekeys_mode_jis_kana2rightclick"
karabiner_remap "option.mousekeys_mode_uio2click"
karabiner_remap "option.mousekeys_mode_wer2click"
karabiner_remap "private.app_slack_move_channel_with_altn_altp"
karabiner_remap "private.clipmenu"
karabiner_remap "private.replace_application_swicher"
karabiner_remap"private.capslock_mappings"
karabiner_remap "private.right_shift_to_hat_amp"
karabiner_remap "private.semicolon_to_sticky_shift_l"
karabiner_remap "private.app.iterm2_aquaskk_fix"
karabiner_remap "private.app.sequelpro_control_h_to_backspace"
karabiner_remap "private.remap.space2shiftL_space_not_alfred"
karabiner_remap "remap.jis_eisuu2escape"
karabiner_remap "remap.jis_jansi"
karabiner_remap "remap.jis_kana2return"
karabiner_remap "remap.spaces_special"
karabiner_remap "option.extra_cursor_optionL_kjhl"

karabiner_set "repeat.initial_wait" do
  value 100
end
karabiner_set "repeat.wait" do
  value 12
end
karabiner_set "repeat.consumer_initial_wait" do
  value 50
end
karabiner_set "repeat.consumer_wait" do
  value 75
end

karabiner_set "parameter.doublepressmodifier_threshold" do
  value 750
end
