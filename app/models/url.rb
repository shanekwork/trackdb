class Url < ActiveRecord::Base
	
  attr_accessible :order_number, :url1, :url2, :url3, :url4, :url5, :email, :custref, :date, :trader_code, :trader_name

def self.import(file)
  	CSV.foreach(file.path, headers: true) do |row|
  		Url.create! row.to_hash
  	end
  end

belongs_to :user




end