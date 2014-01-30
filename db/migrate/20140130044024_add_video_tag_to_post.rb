class AddVideoTagToPost < ActiveRecord::Migration
  def change 
  	add_column :posts, :video, :boolean, :default => false 
  end 
end
