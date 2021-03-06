class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string     :first_name,      null: false
      t.string     :last_name,       null: false
      t.string     :first_name_kana, null: false
      t.string     :last_name_kana,  null: false
      t.string     :zipcode,         null: false
      t.integer    :prefecture,      null: false, default: 0
      t.string     :city,            null: false
      t.string     :address,         null: false
      t.string     :address_other
      t.string     :tell
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
