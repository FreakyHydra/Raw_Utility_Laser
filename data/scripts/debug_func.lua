function myDebug(variable)
    print(">>>>>>>>>>>>>>")
    print("type is: " .. type(variable))
    for key,value in pairs(getmetatable(variable)) do
        print(key, value)
    end
    print("<<<<<<<<<<<<<<")
end