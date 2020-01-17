def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,amount)
    total_money = pet_shop[:admin][:total_cash] += amount
    return total_money
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sold)
  return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  count_breed = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      count_breed.push(breed)
    end
  end
  return count_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name] #if the name that is given is the same as the one you
      return pet        #can find inside petHashName you can return thefull                   #pet array
    end
  end
  for pet in pet_shop[:pets]
    if name != pet[:name]
      return msg = nil
    end
  end
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete_if {|h| h[:name] == name}
end


def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] += [new_pet]
  return pet_shop[:pets].count()
end

def customer_cash(customers)
    customers[:cash]
end


def remove_customer_cash(customer, money)
  customer[:cash] -= money
end

def customer_pet_count(customer)
  customer[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] += [new_pet]
end


##############################################
#OPTIONAL

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash]>= new_pet[:price]
    return true
  elsif customer[:cash]< new_pet[:price]
    return false
  end

end

#
# def sell_pet_to_customer(pet_shop, pet, customer)
#   # customer_per_count = customer.count()
#   # return customer_per_count
# # total_cash = pet_shop[:admin][:total_cash]
#   for pet_1 in pet_shop[:pets]
#     if pet_1 == pet
#
#       pet_shop[:admin][:pets_sold] += 1
#       pet_shop[:admin][:total_cash] += 900
#       customer[:cash] -= 900
#     end
#   end
# end
