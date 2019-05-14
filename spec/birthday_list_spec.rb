require 'birthday_list'

describe BirthdayList do 
	let (:birthday_list) { BirthdayList.new }

	it 'can recognise the Birthday_List class' do
		expect(birthday_list).to be_a_kind_of(BirthdayList)
	end 

	# it 'can recognise the store_birthday method' do 
	# 	expect(birthday_list).to respond_to(:store_birthday).with(2).arguments
	# end

	# it 'can store a birthday to the list' do
	# 	birthday = "22-09-1991"

	# 	updated_list = birthday_list.store_birthday(birthday)
		
	# 	expect(updated_list).to include("22-09-1991")
	# end

	# it 'can store a name to birthday' do 
	# 	expect(birthday_list).to respond_to(:add_name).with(1).argument
	# end

	it 'can store a name to birthday' do 
		name = "Lauren"
		expect(birthday_list.add_name(name)).to include("Lauren")
	end

	it 'can store name and birthday in a hash' do
		new_list = birthday_list.store_birthday("lauren","22-09-1991")

		expect(new_list).to eq([{name: "lauren", date: "22-09-1991" }])
	end
end