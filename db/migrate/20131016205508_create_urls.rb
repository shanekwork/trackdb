class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    	t.string "order_number"
    	t.string "url1"
    	t.string "url2"
    	t.string "url3"
    	t.string "url4"
    	t.string "url5"
    	t.string "email"
    	t.string "custref"
    	t.string "date"
    	t.string "trader_code"
    	t.string "trader_name"
      t.timestamps
    end
  end
end
