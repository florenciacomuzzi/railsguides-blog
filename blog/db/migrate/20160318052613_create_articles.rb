class CreateArticles < ActiveRecord::Migration
 
#migration created method: method will be called when migration is run
 def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
