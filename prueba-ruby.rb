def read_alum(file_name)
file = File.open(file_name, 'r')
alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
file.close
alum
end


choice = 0
while choice != 4
  puts(
    '    Resumen Academico
    1)  Promedio del alumno.-
    2)  Inasistencias del alumno.-
    3)  Alumnos Aprovados.-
    4)  Salir del menu.-')

    choice = gets.chomp.to_i

    def average
      grades = read_alum('alumnos.csv')
      grades.each do |sum_grades|
        sum = 0
        total_grades = sum_grades.size - 1
        sum_grades.each_with_index do |grades, index|
          sum += grades.to_i if index != 0
          sum = 0 if grades == 'A'
        end
        average = sum / total_grades.to_f
        puts "El promedio del alumno #{sum_grades [0]} es #{average}"
      end
    end

    case choice
    when 1
      average
      puts '-----------------------------------------------------'
    when 2
      average
      puts '-----------------------------------------------------'
    when 3
      average
      puts '-----------------------------------------------------'
    when 4
      puts '¡Hasta Pronto!'
    else
      puts ' Selecciona un numeros entre 1 y 4'
      puts '-----------------------------------------------------'
    end
end
