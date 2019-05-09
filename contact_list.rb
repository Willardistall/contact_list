
@contacts = ["Mary", "Sarah", "Matt", "Jacob"]


def main_menu 
  puts "---Ruby Contact List---"
  puts "1) Create Contact"
  puts "2) View Contact"
  puts "3) Edit Contact"
  puts "4) Delete Contact"
  puts "5) Exit"

  input = gets.strip

  case input
  when "1"
    create_contacts
  when "2"
    view_contacts
  when "3"
    edit_contacts
  when "4"
    delete_contacts  
  when "5"
    exit_list
  else
    puts "Invalid Entry, Try Again."
    main_menu
  end
end

def create_contacts
  puts "Enter Your New Contact Name"
  input = gets.strip
  @contacts.push(input)
   puts main_menu

end

def view_contacts
  puts "View Contacts:"
    @contacts.each_with_index do |a, i|
    puts "#{i + 1}) #{a}"  
    end
    main_menu 
end

def edit_contacts
   puts "Edit Who?"
     @contacts.each_with_index do |a, i|
     puts "#{i + 1}) #{a}" 
     end
     input = gets.strip.to_i
     index = input-1 
   puts "Enter New Name"
      name_edit = gets.strip
      @contacts.delete_at(index)
      @contacts.insert(index, name_edit)
     
   view_contacts

 end

def delete_contacts
  puts "Delete Who?"
     @contacts.each_with_index do |a, i|
     puts "#{i + 1}) #{a}" 
     end
     input = gets.strip.to_i
     index = input-1 
   puts "U sure dawg? (y/n)"
      u_sure = gets.strip.downcase
     if u_sure == "y"
      @contacts.delete_at(index)
      puts "----DELETED----"
    
   view_contacts
  end
end


def exit_list
  puts ".:Later Bro:."
end


main_menu

