class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  # 開発者ツールのスマホ表示の検証ができないため今回は外す。
  # 詳しく解説はこれ→https://zenn.dev/riku_8000000bit/scraps/dded017e96dc5c
end
