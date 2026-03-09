categories = [
  "インプット",
  "アウトプット戦略",
  "AI活用・プロンプト集",
  "エラー解決・デバッグ戦略",
  "おすすめアーカイブ動画"
]

categories.each do |category_name|
  Category.find_or_create_by!(name: category_name)
end
