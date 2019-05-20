# 1000.times do 

#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   contact = Contact.new(
#                         first_name: first_name,
#                         middle_name: Faker::Name.middle_name,
#                         last_name: last_name,
#                         email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number,
#                         bio: Faker::Hacker.say_something_smart
#                         )

#   contact.save
# end


# Contact.all each do |contact|

Group.create(name: "Family")
Group.create(name: "Work")
Group.create(name: "Chicago")
Group.create(name: "Don't Like")
Group.create(name: "Good Dresser")

groups = Group.all 
contacts = Contact.all

contacts.each do |contact|
  selected_groups = groups.sample(rand(2..4))


  selected_groups.each do |group|
    ContactGroup.create(contact_id: contact.id, group_id: group.id)
  end
end