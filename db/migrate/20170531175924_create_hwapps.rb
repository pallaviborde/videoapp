class CreateHwapps < ActiveRecord::Migration[5.1]
  def change
    create_table :hwapps do |t|
      t.string :vidname
      t.string :path
      t.string :desc
      t.string :views
      t.string :likes

      t.timestamps
    end
  end
end
