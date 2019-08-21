def read_alum(file_name)
file = File.open(file_name, 'r')
alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
file.close
alum
end


choice = 0
while choice != 4
  puts(
    'Resumen Academico
    1 Promedio del alumno.-
    2 Inasistencias del alumno.-
    3 Alumnos Aprovados.-
    4 Salir del menu.-')

    choice = gets.chomp.to_i

    def average
      grades = read_alum('alumnos.csv')
      puts grades
    end

    case choice
    when 1
      average
    when 2
      average
    when 3
      average
    when 4
      puts '¡Hasta Pronto!'
    else
      puts ' Selecciona un numeros entre 1 y 4'
    end
end
