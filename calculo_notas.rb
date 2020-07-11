data = File.open('notas.data.txt').readlines
data.map!{|line| line.split(",")}


def nota_mas_alta(grades)
    "la nota mas alta de #{grades[0]} es #{grades.map{|x| x.to_i}.max}"
end

pp nota_mas_alta(data[3])