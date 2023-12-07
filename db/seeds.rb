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
    if idx % 3 == 1
        nft.update(nft_image: File.open("app/assets/images/card_1.png"))
    end
    if idx % 3 == 2
        nft.update(nft_image: File.open("app/assets/images/card_2.png"))
    end
    if idx % 3 == 0
        nft.update(nft_image: File.open("app/assets/images/card_3.png"))
    end
    idx += 1
end

User.create(name: '佐藤 まりな')
User.create(name: '小林 ゆり')
User.create(name: '鈴木 あやか')
User.create(name: '中島 みさき')
User.create(name: '田中 こころ')
User.create(name: '井上 れいな')
User.create(name: '渡辺 みあ')
User.create(name: '高橋 ひかり')
User.create(name: '伊藤 あいり')
User.create(name: '岡田 さくら')
User.create(name: '吉田 るり')
User.create(name: '松本 なつき')
User.create(name: '三浦 まい')
User.create(name: '長谷川 ゆうな')
User.create(name: '佐々木 れいな')
User.create(name: '藤本 えりか')
User.create(name: '宮崎 まゆ')
User.create(name: '田村 みく')
User.create(name: '木村 ゆり')
User.create(name: '佐野 あかね')
User.create(name: '中野 みゆき')
User.create(name: '西村 さくら')
User.create(name: '高田 ゆうり')
User.create(name: '森田 あい')
User.create(name: '山口 みなみ')
User.create(name: '小川 ゆうか')
User.create(name: '石田 なつみ')
User.create(name: '佐藤 ゆうこ')
User.create(name: '大島 こころ')
User.create(name: '安田 れな')

users = User.all

users.each do |user|
    user.update(image: File.open("app/assets/images/visual.png"))
end