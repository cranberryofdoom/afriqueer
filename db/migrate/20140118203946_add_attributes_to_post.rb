class AddAttributesToPost < ActiveRecord::Migration
	def change
		change_table :posts do |t|
			t.string :title
			t.string :content
			t.string :author
		end
	end
end
