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
  for pet in pet_shop[:pets]
    if name == pet[:name]
      p pet
      hash.delete(pet[:name])

      # return msg = nil
    end
  end
end
#
# def find_pet_by_name(pet_shop, name)
#   for pet in pet_shop[:pets]
#     if name == pet[:name]
#       pet[:name].delete()
#     end
#   end
# end
