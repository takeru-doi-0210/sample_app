class StaticPagesController < ApplicationController
  def home
    # 何も書いてない場合、デフォルトレンダリング？が実行される↓
    # 'app/views/static_pages/home.html.erb'がデフォルトで呼び出される
  end

  def help
  end
end
