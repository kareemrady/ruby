def alphabetize(array, rev=false)
if rev==true

array.sort.reverse!
else

array.sort! 

end


end
puts alphabetize(["a", "b", "c", "d"])
puts
puts alphabetize(["a", "b", "c", "d"], rev=true)
