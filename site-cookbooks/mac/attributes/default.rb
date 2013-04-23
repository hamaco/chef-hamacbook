node.default["mac_os_x"]["settings"]["dock"] = {
  "domain" => "com.apple.dock",

  "autohide-delay" => 0,               # Dockの表示・非表示の待ち時間をなくす
  "expose-animation-duration" => 0.12, # Mission Controlのアニメーション速度変更 (0.12が最速)
  "tilesize" => 16,                    # Dockアイコンの通常表示サイズ
  "largesize" => 128,                  # Dockアイコンの拡大表示サイズ
  "orientation" => "left",             # Dockを左側に寄せる
  "autohide" => true,                  # Dockを自動的に隠す
  "mineffect" => "suck",               # Dockにウィンドウをしまう時の隠しエフェクト
  "launchanim" => true,                # 起動中のアプリをアニメーション表示
  "show-process-indicators" => true,   # 起動しているアプリにインジケータ・ランプ表示
}

node.default["mac_os_x"]["settings"]["finder"] = {
  "domain" => "com.apple.finder",

  "QLEnableTextSelection" => true,   # QuickLookで文字を選択できるようにする
  "NSSystemFont  " => "nukamiso",    # Finderのフォントを設定
  "NSTitleBarFont" => "nukamiso",    # タイトルバーのフォント
  "NSToolTipsFont" => "nukamiso",    # ツールチプのフォント
  "_FXShowPosixPathInTitle" => true, #
}

node.default["mac_os_x"]["settings"]["screensaver"] = {
  "domain" => "com.apple.screensaver",

  "askForPassword" => 1,      # ScreenSaverからの復帰にパスワード必須
  "askForPasswordDelay" => 0, # ScreenSaverになった直後にパスワードロック
}

node.default["mac_os_x"]["settings"]["Preview"] = {
  "domain" => "com.apple.Preview",

  "PVImageOpeningMode" => 1, # ファイルを開く時にファイルのグループを同じウィンドウで開く
}

node.default["mac_os_x"]["settings"]["NSGlobalDomain"] = {
  "domain" => "NSGlobalDomain",

  "AppleEnableMenuBarTransparency" => false, # 透明化メニューバーの無効化
}

node.default["mac_os_x"]["settings"]["Yorufukurou"] = {
  "domain" => "com.YoruFukurouProject.YoruFukurou",

  "TweetFontName" => "nukamiso",
}
