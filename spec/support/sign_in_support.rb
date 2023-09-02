module SignInSupport
  def sign_in(user)
    # 予め、ユーザーをDBに保存する・・・必要はない？
    # @user = FactoryBot.create(:user)
    # サインインページへ移動する
    visit root_path
    # すでに保存されているユーザーのemailとpasswordを入力する
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    # ログインボタンをクリックする
    click_on 'Log in'
    sleep 1
    # トップページに遷移していることを確認する
    expect(current_path).to eq(root_path)
  end
end
