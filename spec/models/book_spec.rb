require 'rails_helper'

describe Book do
	context "when user is admin" do
		it "orders them in reverse" do
			author = User.create(name:"raj",email: "ethirajsrinivasan@gmail.com",password: "rajraj")
	    book1 = Book.create(name:"harry", author_id: author.id)
	    book2 = Book.create(name:"potter", author_id: author.id)
	    expect(author.reload.books).to eq [book1,book2]
	  end
	end
end