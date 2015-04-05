class InitializeTables < ActiveRecord::Migration
  def change
  	create_table :users do |u|
	 	u.string :username
	  	u.references :post, index: true
	  	u.timestamps null: false
  	end
  	create_table :posts do |p|
  		p.string :content
	  	p.references :comment, index: true
	  	p.timestamps null: false
	end
    create_table :comments do |c|
     	c.string :content
 		c.timestamps null:false
    end
  end
end
