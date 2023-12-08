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

User.create!(name: "Admin")

Nft.create!(name: '佐藤 まりな', user_id: 1)
Nft.create(name: '小林 ゆり', user_id: 1)
Nft.create(name: '鈴木 あやか', user_id: 1)


Nfts = Nft.all

idx = 1
Nfts.each do |nft|
    # 1 -> 初回集合写真, 2 -> token=1, 3 -> token=3
    if idx == 1
        nft.update!(token: 10)
    end
    if idx == 2
        nft.update(token: 1)
    end
    if idx == 3
        nft.update(token: 3)
    end

    if idx % 2 == 0
        nft.update(front_image: File.open("app/assets/images/players_1-01.jpg"), back_image: File.open("app/assets/images/players_1-02.jpg"))
    else idx % 2 != 0
        nft.update(front_image: File.open("app/assets/images/players_1-03.jpg"), back_image: File.open("app/assets/images/players_1-04.jpg"))
    end

    # todo id=1のとき写真上書き
    if idx == 1
        nft.update(front_image: File.open("app/assets/images/players_1-05.jpg"), back_image: File.open("app/assets/images/players_1-06.jpg"))
    end
    idx += 1
end


Vote.create!(name: "赤ユニフォーム", description: "赤ユニフォームです", image: File.open("app/assets/images/red_uniform.jpg"))
Vote.create!(name: "白ユニフォーム", description: "白ユニフォームです", image: File.open("app/assets/images/white_uniform.jpg"))