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
      end
      average = sum / total_grades.to_f
      if sum_grades[0] == 'Macarena'
        puts "El promedio de la alumna #{sum_grades [0]} es #{average}"
      elsif sum_grades[0] == 'Rocio'
        puts "El promedio de la alumna #{sum_grades [0]} es #{average}"
      else
        puts "El promedio del alumno #{sum_grades [0]} es #{average}"
      end
    end
  end

  def absence
    grades = read_alum('alumnos.csv')
    grades.each do |unattended|
      count = 0
      unattended.each_with_index do|grades, index|
        count += 1 if grades == 'A' && index != 0
      end
      if unattended[0] == 'Macarena' && count == 1
      puts "La alumna #{unattended [0]} tuvo #{count} inasistencia"
      elsif count == 1
        puts "El alumno #{unattended [0]} tuvo #{count} inasistencia"
      elsif unattended[0] == 'Rocio'
        puts "La alumna #{unattended [0]} tuvo #{count} inasistencias"
      else
        puts "El alumno #{unattended [0]} tuvo #{count} inasistencias"
      end
    end
  end

  def approval
    grades = read_alum('alumnos.csv')
    puts 'Ingresa una nota entre 0 y 10, al presionar enter la nota sera 5.0'
    num = gets.chomp.to_f
    while 0..10
    sume.each do |sume_grades|
      sum = 0
      total_grades = sum_grades.size -1
      sum_grades.each_with_index do |grades, index|
        sum += grades.to_i if index !=0
      end
      average = sum / total_grades.to_f
      puts "El alumno #{sume_grades [0]}aprovo con nota #{average}" if num !=0 && average >= num
      puts "El alumno #{sume_grades [0]}aprovo con notan#{average}" if num = 0 && average >= 5 
    end
    end




  end

  case choice
  when 1
    average
    puts '-----------------------------------------------------'
  when 2
    absence
    puts '-----------------------------------------------------'
  when 3
    approval
    puts '-----------------------------------------------------'
  when 4
    puts '¡Hasta Pronto!'
  else
    puts ' Selecciona un numeros entre 1 y 4'
    puts '-----------------------------------------------------'
  end
end
