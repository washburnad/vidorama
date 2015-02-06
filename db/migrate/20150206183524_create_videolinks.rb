class CreateVideolinks < ActiveRecord::Migration
  def change
    create_table :videolinks do |t|
    	t.string :title
    	t.string :link

      t.timestamps
    end
  end
end
