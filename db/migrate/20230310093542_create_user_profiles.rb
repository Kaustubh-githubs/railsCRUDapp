class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.string :first_name, limit: 50, null: false
      t.string :last_name,  limit:50, null: false
      t.string :email, limit: 100, null: false, unique: true
      t.string :phone_no, unique: true
      t.string :title, null: false
      t.string :password, null: false
      t.string :profile_pic_url

      t.timestamps
    end

    add_index :user_profiles, :email
  end
end
