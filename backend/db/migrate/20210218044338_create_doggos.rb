class CreateDoggos < ActiveRecord::Migration[6.1]
  def change
    create_table :doggos do |t|
      t.string :image

      t.timestamps
    end
  end
end
