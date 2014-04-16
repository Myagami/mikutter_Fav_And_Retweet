# -*- coding: utf-8 -*-

Plugin.create(:Fav_And_ReTweet) do
   command(:Fav_And_ReTweet,
    name: 'ふぁぼりつ',
    condition: Plugin::Command[:HasOneMessage],
    visible: true,
    role: :timeline) do |opt|
    Gtk::Clipboard.copy("Fav And ReTweet")
  end
  
end
