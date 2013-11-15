bash "kr4mb" do
  user node["user"]["name"]
  group node["user"]["group"]
  environment "HOME" => node["user"]["home"]

  code <<-EOC
    cp $HOME/Dropbox/data/mac/KeyRemap4MacBook/private.xml $HOME/Library/Application\ Support/KeyRemap4MacBook/private.xml

    defaults write org.pqrs.KeyRemap4MacBook isStatusbarEnable -bool false

    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable private.app_sequelpro_control_h_to_backspace
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable private.iterm2_aquaskk_fix
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable private.right_shift_to_hat_amp
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable private.semicolon_to_sticky_shift_l
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable remap.jis_eisuu2escape
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable remap.jis_jansi
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable remap.jis_kana2return
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable remap.space2shiftL_space_not_alfred
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable remap.spaces_special
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli enable option.extra_cursor_optionL_kjhl

    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli set repeat.initial_wait 200
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli set repeat.wait 15
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli set repeat.consumer_initial_wait 500
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli set repeat.consumer_wait 75
    /Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli set repeat.wait 30
  EOC
end
