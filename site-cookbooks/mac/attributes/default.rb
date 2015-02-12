# -*- coding: utf-8 -*-
node.default["mac_os_x"]["settings"]["NSGlobalDomain"] = {
  "domain" => "NSGlobalDomain",

  "AppleEnableMenuBarTransparency"        => false, # 透明化メニューバーの無効化
  "AppleSpacesSwitchOnActivate"           => false, # Cmd+Tab で操作スペースを移動しない
  "NSAutomaticSpellingCorrectionEnabled"  => false, # スペルの自修正管無効化
  "NSAutomaticDashSubstitutionEnabled"    => false, # ダブルクオートの自動変換無効化
  "NSAutomaticQuoteSubstitutionEnabled"   => false, # シングルクオートの自動変換無効化
  "WebAutomaticSpellingCorrectionEnabled" => false, # スペルの自修正管無効化
  "WebAutomaticTextReplacementEnabled"    => false, # テキストの自動置換無効化

  "com.apple.keyboard.fnState" => true, # Fnキーを普通のキーとして使う
}


node.default["mac_os_x"]["settings"]["dock"] = {
  "domain" => "com.apple.dock",

  "autohide-delay"            => 0,      # Dockの表示・非表示の待ち時間をなくす
  "expose-animation-duration" => 0.12,   # Mission Controlのアニメーション速度変更 (0.12が最速)
  "tilesize"                  => 16,     # Dockアイコンの通常表示サイズ
  "magnification"             => true,   # Dockにカーソルを合わせると拡大する
  "largesize"                 => 128,    # Dockアイコンの拡大表示サイズ
  "orientation"               => "left", # Dockを左側に寄せる
  "autohide"                  => true,   # Dockを自動的に隠す
  "mineffect"                 => "suck", # Dockにウィンドウをしまう時の隠しエフェクト
  "launchanim"                => true,   # 起動中のアプリをアニメーション表示
  "show-process-indicators"   => true,   # 起動しているアプリにインジケータ・ランプ表示

  "showAppExposeGestureEnabled" => true, # 4本指スワイプでExpose

  "dashboard-in-overlay" => true,        # Dashboardを操作スペースとして表示しない
  "expose-group-by-app"  => false,       # ウィンドウをアプリケーションごとにグループ化しない
  "mru-spaces"           => false,       # 操作スペースの自動並び替えをしない

  "wvous-bl-corner"   => 2,              # カーソルを左下に移動でMission Control
  "wvous-bl-modifier" => 0,              #
  "wvous-br-corner"   => 7,              # カーソルを右下に移動でDashboard
  "wvous-br-modifier" => 0,              #
  "wvous-tr-corner"   => 4,              # カーソルを右上に移動でDesktop
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

node.default["mac_os_x"]["settings"]["Universal Access"] = {
  "domain" => "com.apple.universalaccess",

  "closeViewScrollWheelToggle"       => 1, # スクロールジェスチャでズーム
  "closeViewScrollWheelModifiersInt" => 262144, # ズームに使用するキーを Control キーにする
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

node.default["mac_os_x"]["settings"]["safari"] = {
  "domain" => "com.apple.Safari",

  "ShowStatusBar"            => true,
  "IncludeDevelopMenu"       => true,
  "SendDoNotTrackHTTPHeader" => true,
}

node.default["mac_os_x"]["settings"]["Yorufukurou"] = {
  "domain" => "com.YoruFukurouProject.YoruFukurou",

  "TweetFontName" => "りいポップ角",

  "DefaultColorSetting" => 2, # リストの色を `Solarized (ライト)` にする
}

node.default["mac_os_x"]["settings"]["Slate"] = {
  "domain" => "com.slate.Slate",

  "SUEnableAutomaticChecks" => 1, # 更新版の自動チェック
}

node.default["mac_os_x"]["settings"]["AquaSKK"] = {
  "domain" => "jp.sourceforge.inputmethod.aquaskk",

  "show_input_mode_icon" => 0,                    # 入力モードアイコンを表示しない
  "candidate_window_font_name" => "KonatuTohaba", # 候補ウィンドウのフォント
}

node.default["mac_os_x"]["settings"]["iStat Menus"] = {
  "domain" => "com.bjango.istatmenus5.extras",

  "CPU_MenubarMode"     => "0",
  "Memory_MenubarMode"  => "6",
  "Battery_MenubarMode" => "2,0",
  "Time_MenubarFormat"  => [
    "___ICON__BLUE___",
    "HH",
    "':'",
    "mm",
  ],
  "CombinedDropdownDisplayMode" => "1,2,3,4",
  "CombinedMenubarDisplayMode"  => "1,2",
}

node.default["mac_os_x"]["settings"]["iTerm2"] = {
  "domain" => "com.googlecode.iterm2",

  "LoadPrefsFromCustomFolder" => 1,
  "PrefsCustomFolder"         => "#{node['user']['home']}/Dropbox/data/mac/iTerm2",
}

node.default["mac_os_x"]["settings"]["Scroll Reverser"] = {
  "domain" => "com.pilotmoon.scroll-reverser",

  "HasRunBefore"            => 1,
  "SUHasLaunchedBefore"     => 1,
  "SUEnableAutomaticChecks" => 0,
  "ReverseTrackpad"         => 0,
  "ReverseX"                => 1,
}
