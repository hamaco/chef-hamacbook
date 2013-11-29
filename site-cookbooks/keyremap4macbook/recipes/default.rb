bash "kr4mb" do
  user node["user"]["name"]
  group node["user"]["group"]
  environment "HOME" => node["user"]["home"]

  code <<-EOC
    cp $HOME/Dropbox/data/mac/KeyRemap4MacBook/private.xml $HOME/Library/Application\ Support/KeyRemap4MacBook/private.xml

    defaults write org.pqrs.KeyRemap4MacBook isStatusbarEnable -bool false
  EOC
end

keyremap4macbook_remap "private.capslock_mappings"
keyremap4macbook_remap "private.right_shift_to_hat_amp"
keyremap4macbook_remap "private.semicolon_to_sticky_shift_l"
keyremap4macbook_remap "private.app.iterm2_aquaskk_fix"
keyremap4macbook_remap "private.app.sequelpro_control_h_to_backspace"
keyremap4macbook_remap "private.remap.space2shiftL_space_not_alfred"
keyremap4macbook_remap "remap.jis_eisuu2escape"
keyremap4macbook_remap "remap.jis_jansi"
keyremap4macbook_remap "remap.jis_kana2return"
keyremap4macbook_remap "remap.spaces_special"
keyremap4macbook_remap "option.extra_cursor_optionL_kjhl"

keyremap4macbook_set "repeat.initial_wait" do
  value 200
end
keyremap4macbook_set "repeat.wait" do
  value 15
end
keyremap4macbook_set "repeat.consumer_initial_wait" do
  value 500
end
keyremap4macbook_set "repeat.consumer_wait" do
  value 75
end
keyremap4macbook_set "repeat.wait" do
  value 30
end
