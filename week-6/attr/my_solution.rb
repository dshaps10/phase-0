#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData

end


class Greetings

end



# Reflection
=begin

---Release 1---

Q: What are these methods doing?
A: The what_is_name, what_is_age, and what_is_occupation methods are getter
methods that exist to call the return values outside of the class.  This
would be the same as using an attr_reader method. The other three methods
are setter methods and allow the programmer to make changes to the
instance's attributes.

Q: How are they modifying or returning the value of instance variables?
A: These instance variables are defined and assigned values in the
initialize method, however, you can't simply call the instance variables
at this point. The getter methods explictly return the values of the
instance variables and allow them to be invoked on the object and called
outside of the class.  Similarly, setter methods allow for the instance
variables, which are initially defined and set in the initialize method,
to be called on the object and set outside of the class at any point in
the program.

---Release 2---

Q: What changed between the last release and this release?
A: In release 2, instead of using getter method, what_is_age, the
programmer used an attr_reader method to create :age. This also meant
that when the age getter method was calledo n the object outside the class,
the programmer only had to reference .age from the reader method instead
of .what_is_my_age.

Q: What was replaced?
A: The getter method what_is_age was replaced with an attr_reader method
which created the symbol :age.  In relation to this, when the programmer
wanted to find out the age of the person outside of the class, he/she
simple had to invoke .age instead of the longer .what_is_age on the object.

Q: Is this code simpler than the last?
A: Absolutely! This code makes the getter method easier to read by creating
a simpler, one line attr_reader method instead.  It also means that when
the method is called, the .age method is much simpler than the .what_is_age
method.

---Release 3---

Q: What changed between the last release and this release?
A: The programmer added an attr_writer method for :age and got rid of the
change_my_age setter method

Q: What was replaced?
A: The programmer replaced the change_my_age setter method with an
attr_writer method that created the symbol :age.

Q: Is this code simpler than the last?
A: With this code, both the getter and setter methods for the @age
instance variable have been changed to attr_reader and attr_writer methods
respectively.  This makes it easier to read the class and easier to invoke
both methods when calling them outside of the class and invoking them on
an instance of that class.

---Release 6---

Q: What is a reader method?
A: A reader method is a method that allows the attribute to be referenced
and viewed, yet not changed.

Q: What is a writer method?
A: a writer method is a method that allows the attribute to be referenced
and changed, yet not viewed.

Q: What do the attr methods do you for?
A: The attr_ methods eliminate the need to use getter and setter methods.
This makes the class more readable and more easily accessible.  The
attr_accessor method allows you to create a viewable and mutable attribute
without having to write multiple lines of code.

Q: Should you always use an accessor to cover your bases? Why or why not?
A: It's generally a good idea to use an accessor method instead of a
getter or setter method as it is easier to read and is more efficient to
write.  However, it is likely that you don't want every instance varaible
to be mutable.  In this case, you are better off using an attr_reader
method, so that you can read the method attribute without changing it.

Q: What is confusing to you about these methods?
A: There really isn't anything confusing about them to me.

=end