data=open('ventas_base.db').read.split(',')

def projection(info)
    primer_semestre = []
    segundo_semestre = []
    suma_primer_semestre = 0
    suma_segundo_semestre = 0
    #half = info.each_slice(6).to_a
    n = info.count 
    n.times do |i|
        if i <= 5 
            primer_semestre.push info[i].to_i 
        else
            segundo_semestre.push info[i].to_i
        end
     
    end
    primer_semestre.each do |i|
        suma_primer_semestre += i 
    end
    segundo_semestre.each do |i|
        suma_segundo_semestre += i 
    end
    one = suma_primer_semestre * 1.1 + suma_segundo_semestre
    two = suma_segundo_semestre * 1.2 + suma_primer_semestre
    
    add_1 = []
    add_1.push one.truncate(2), two.truncate(2)

    File.write('resultados.data', add_1)

end

projection(data)
 
   