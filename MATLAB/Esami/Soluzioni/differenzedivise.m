for i=2:5
    ff(i-1)=(sin(3*eq(i-1))-sin(3*eq(i)))/(eq(i-1)-eq(i))
end

for i=1:3
    fff(i)=(ff(i+1)-ff(i+2))/(eq(i+1)-eq(i+2))
end