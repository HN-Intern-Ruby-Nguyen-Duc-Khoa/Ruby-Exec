line1 = "Cats is abc"
line2 = "Dogs is dvd"

p line1 =~ /Cats(.*)/

p "OK" if (line1 =~ /Cats(.*)/)

# m modifier

a = "khod ís abc".sub(/a.*/m,"X")
p a