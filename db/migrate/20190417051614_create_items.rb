class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :plain_body
      t.string :markdown_body

      t.timestamps
    end
  end
end
