class CreatePerson
  def initialize(people)
    @people = people
  end

  def create_person
    input = collect_input
    case input
    when 1
      new_student = create_student
      add_to_collection(new_student)

    when 2
      new_teacher = create_teacher
      add_to_collection(new_teacher)

    else
      puts 'Invalid input option'
      create_person
    end
  end

  private

  def collect_input
    print 'Do you want to create a student (1) or a teacher (2)? [input a number]:'
    gets.chomp.to_i
  end