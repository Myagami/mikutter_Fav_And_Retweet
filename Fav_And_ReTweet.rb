# -*- coding: utf-8 -*-

Plugin.create(:Fav_And_ReTweet) do
   command(:Fav_And_ReTweet,
    name: 'ふぁぼりつ',
    condition: Plugin::Command[:HasOneMessage],
    visible: true,
    role: :timeline) do |opt|
    opt.messages.each(&:favorite)
    opt.messages.select{ |x| not x.from_me? }.each(&:retweet)
  end
  
end
