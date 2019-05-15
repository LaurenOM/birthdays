require 'birthday_list'
require 'timecop'

describe BirthdayList do 
	let (:birthday_list) { BirthdayList.new }

	before do
		Timecop.freeze(Time.local(2019,5,15))
	  end
	
	  after do
		Timecop.return
	  end

	it 'can recognise the Birthday_List class' do
		expect(birthday_list).to be_a_kind_of(BirthdayList)
	end 

	it 'can store name and birthday in a hash' do
		new_list = birthday_list.store_birthday("lauren","22-09")

		expect(new_list).to eq([{name: "lauren", date: "22-09" }])
	end
	
	it 'prints each name and birthday in a nice way' do 
		
		birthday_list.store_birthday("Lauren", "22-09-1991")
		birthday_list.store_birthday("Nino", "19-12-1991")

		expect{birthday_list.print_birthdays}.to output("Lauren: 22-09-1991\nNino: 19-12-1991\n").to_stdout
	end 

	it "can check for today's date" do 

		expect(birthday_list.today).to eq("15-05")
	end

	it "can check for someone's age" do 

		birthday_list.store_birthday("Lauren","15-05-1991")

		expect(birthday_list.check_age).to eq(28)
	end
	it "can check who's birthday is today and return a message" do 

		birthday_list.store_birthday("Lauren", "15-05-1991")

		expect(birthday_list.birthdays_today).to eq("It's Lauren's birthday today! They are 28 years old!")
	end 
end