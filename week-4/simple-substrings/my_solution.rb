
# Simple Substrings

# I worked on this challenge [with: Jon Norstrom].


# Your Solution Below
def welcome(address)
  if address.to_s.include?("CA")
    return "Welcome to California"
  else
    return "You should move to California"
  end
end
