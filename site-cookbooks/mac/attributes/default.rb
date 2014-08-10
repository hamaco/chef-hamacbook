# -*- coding: utf-8 -*-
node.default["mac_os_x"]["settings"]["dock"] = {
  "domain" => "com.apple.dock",

  "autohide-delay" => 0,                 # Dockの表示・非表示の待ち時間をなくす
  "expose-animation-duration" => 0.12,   # Mission Controlのアニメーション速度変更 (0.12が最速)
  "tilesize" => 16,                      # Dockアイコンの通常表示サイズ
  "largesize" => 128,                    # Dockアイコンの拡大表示サイズ
  "orientation" => "left",               # Dockを左側に寄せる
  "autohide" => true,                    # Dockを自動的に隠す
  "mineffect" => "suck",                 # Dockにウィンドウをしまう時の隠しエフェクト
  "launchanim" => true,                  # 起動中のアプリをアニメーション表示
  "show-process-indicators" => true,     # 起動しているアプリにインジケータ・ランプ表示

  "showAppExposeGestureEnabled" => true, # 4本指スワイプでExpose

  "dashboard-in-overlay" => true,        # Dashboardを操作スペースとして表示しない
  "expose-group-by-app" => false,        # ウィンドウをアプリケーションごとにグループ化しない
  "mru-spaces" => false,                 # 操作スペースの自動並び替えをしない

  "wvous-bl-corner" => 2,                # カーソルを左下に移動でMission Control
  "wvous-bl-modifier" => 0,              #
  "wvous-tr-corner" => 4,                # カーソルを右上に移動でDesktop
  "wvous-tr-modifier" => 0,              #
}

node.default["mac_os_x"]["settings"]["finder"] = {
  "domain" => "com.apple.finder",

  "QLEnableTextSelection" => true,   # QuickLookで文字を選択できるようにする
  "NSSystemFont  " => "nukamiso",    # Finderのフォントを設定
  "NSTitleBarFont" => "nukamiso",    # タイトルバーのフォント
  "NSToolTipsFont" => "nukamiso",    # ツールチップのフォント
  "_FXShowPosixPathInTitle" => true, #
}

node.default["mac_os_x"]["settings"]["AppleMultitouchTrackpad"] = {
  "domain" => "com.apple.AppleMultitouchTrackpad",

  "Clicking" => 1, # タップでクリック
  "TrackpadRightClick" => 1, 
  "TrackpadThreeFingerDrag" => 1,
  "TrackpadThreeFingerTapGesture" => 2,

}

node.default["mac_os_x"]["settings"]["desktopservices"] = {
  "domain" => "com.apple.desktopservices",

  "DSDontWriteNetworkStores" => true, # ネットワーク上には.DS_Storeを作らない
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
  "WebAutomaticTextReplacementEnabled" => false, # テキストの自動置換無効化
  "NSAutomaticSpellingCorrectionEnabled" => false, # スペルの自修正管無効化
  "WebAutomaticSpellingCorrectionEnabled" => false, # スペルの自修正管無効化

  "com.apple.keyboard.fnState" => true, # Fnキーを普通のキーとして使う
}

node.default["mac_os_x"]["settings"]["Yorufukurou"] = {
  "domain" => "com.YoruFukurouProject.YoruFukurou",

  "TweetFontName" => "07やさしさゴシック",
}
