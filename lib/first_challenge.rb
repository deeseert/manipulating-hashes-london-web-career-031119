def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
contacts.each do |persona, data|
  data.each do |attribute, value|
    if attribute == :favorite_icecream_flavors
      value.delete_if do |flavor|
        flavor == "strawberry"
      end
    end
  end
end

#Second solution - level of abstruction low, however, shorter than the first one
# contacts["Freddy Mercury"][:favorite_icecream_flavors].delete_if do |num|
#     num == "strawberry"
#   end

  #remember to return your newly altered contacts hash!
  contacts
end
