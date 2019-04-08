class CreateRegisters < ActiveRecord::Migration[5.2]
  def change
    create_table :registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :school_name
      t.string :email
      t.string :phone
      t.string :skype_id
      t.string :wechat_id
      t.string :school_website
      t.string :country_and_city
      t.string :teachers_size
      t.text :recruitment_needs
      t.text :question
      t.text :channel
      t.timestamps
    end
  end
end
