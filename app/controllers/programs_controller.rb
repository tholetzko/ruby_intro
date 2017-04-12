class ProgramsController < ApplicationController
  def home
    # Your code goes below.

    my_birthday = Time.parse("October 21, 1989")
    today = Time.now
    seconds_since_i_was_born = today - my_birthday

    @your_output = seconds_since_i_was_born

    first = "Tobias"
    last = "Holetzko"

    @first_then_last = first + " " + last

    @last_then_first = last + ", " + first

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.

    choice = ["rock", "paper", "scissor"]
    achoice = choice.sample
    if achoice == "rock"
      @your_output = achoice + " tie"
    elsif achoice == "paper"
      @your_output = achoice + " win"
    else achoice == "scissor"
      @your_output = achoice + " lost"
    end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
    squared_numbers = []            # Create an empty array

    our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      square = num * num            # Square the number
      squared_numbers.push(square)  # Push it into the squared_numbers array
    end

    @your_output = squared_numbers.sum  # Sum the squares

    render("programs/second_program.html.erb")
  end

  def third_program
    b = 1000-1
    numbers_3 = (1..b/3).to_a
    numbers_5 = (1..b/5).to_a
    numbers_15 = (1..b/15).to_a

    multiple_3 = []            # Create an empty array
    multiple_5 = []
    multiple_15 = []

    numbers_3.each do |num|       # For each element in numbers, (refer to it as "num")
      calc_3 = 3 * num            # Square the number
      multiple_3.push(calc_3)  # Push it into the squared_numbers array
    end

    numbers_5.each do |num|       # For each element in numbers, (refer to it as "num")
      calc_5 = 5 * num            # Square the number
      multiple_5.push(calc_5)  # Push it into the squared_numbers array
    end

    numbers_15.each do |num|       # For each element in numbers, (refer to it as "num")
      calc_15 = 15 * num            # Square the number
      multiple_15.push(calc_15)  # Push it into the squared_numbers array
    end

    @your_output = multiple_3.sum + multiple_5.sum - multiple_15.sum

    render("programs/third_program.html.erb")
  end
end
