# -*- coding: utf-8 -*-

Plugin.create(:Fav_And_ReTweet) do
   command(:Fav_And_ReTweet,
    name: 'ふぁぼりつ',
    condition: Plugin::Command[:HasOneMessage],
    visible: true,
    role: :timeline) do |opt|
      message = opt.messages.first
      screen_name = message.user[:idname]
      Gtk::Clipboard.copy("#{screen_name}: #{message.to_s} [https://twitter.com/#{screen_name}/status/#{message.id}]")
  end
  
end
