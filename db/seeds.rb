# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

Nft.create(name: '佐藤 まりな')
Nft.create(name: '小林 ゆり')
Nft.create(name: '鈴木 あやか')
Nft.create(name: '中島 みさき')
Nft.create(name: '田中 こころ')
Nft.create(name: '井上 れいな')
Nft.create(name: '渡辺 みあ')
Nft.create(name: '高橋 ひかり')
Nft.create(name: '伊藤 あいり')
Nft.create(name: '岡田 さくら')
Nft.create(name: '吉田 るり')
Nft.create(name: '松本 なつき')
Nft.create(name: '三浦 まい')
Nft.create(name: '長谷川 ゆうな')
Nft.create(name: '佐々木 れいな')
Nft.create(name: '藤本 えりか')
Nft.create(name: '宮崎 まゆ')
Nft.create(name: '田村 みく')
Nft.create(name: '木村 ゆり')
Nft.create(name: '佐野 あかね')
Nft.create(name: '中野 みゆき')
Nft.create(name: '西村 さくら')
Nft.create(name: '高田 ゆうり')
Nft.create(name: '森田 あい')
Nft.create(name: '山口 みなみ')
Nft.create(name: '小川 ゆうか')
Nft.create(name: '石田 なつみ')
Nft.create(name: '佐藤 ゆうこ')
Nft.create(name: '大島 こころ')
Nft.create(name: '安田 れな')

Nfts = Nft.all

idx = 1
Nfts.each do |nft|
    if idx % 2 == 0
        nft.update(front_image: File.open("app/assets/images/players_1-01.jpg"), back_image: File.open("app/assets/images/players_1-02.jpg"))
    else idx % 2 != 0
        nft.update(front_image: File.open("app/assets/images/players_1-03.jpg"), back_image: File.open("app/assets/images/players_1-04.jpg"))
    end
    idx += 1
end


Vote.create!(name: "赤ユニフォーム", description: "赤ユニフォームです", image: File.open("app/assets/images/red_uniform.jpg"))
Vote.create!(name: "白ユニフォーム", description: "白ユニフォームです", image: File.open("app/assets/images/white_uniform.jpg"))