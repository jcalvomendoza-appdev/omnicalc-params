class CalcController < ApplicationController
  def flex_square
    @num = params.fetch("the_num").to_i
    @answer_equals = @num**2
    render("calc_templates/flex_square.html.erb")
  end
  def flex_square_root
    @num = params.fetch("the_num").to_i
    @answer_equals = Math.sqrt(@num)
    render("calc_templates/flex_square_root.html.erb")
  end
  def flex_payment
    @interest = params.fetch("interest").to_f/100
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_i
    @monthly_payment = ((((@interest/100)/12)*@principal)/(1-(1+((@interest/100)/12))**(@years*-12))).round(2)
    render("calc_templates/flex_payment.html.erb")
  end 
  def flex_random
    @start = params.fetch("start").to_i
    @end = params.fetch("end").to_i
    @random_number = rand(@start..@end)
    render("calc_templates/flex_random.html.erb")
  end
  def square_form_results
    @the_input_number = params.fetch("user_number").to_f
    @the_answer = @the_input_number**2
    render("/calc_templates/square_results.html.erb")
  end
  def blank_square_form
    render("/calc_templates/square_form.html.erb")
  end
  def blank_square_root_form
    render("/calc_templates/square_root_form.html.erb")
  end
  def square_root_form_results
    @the_input_number = params.fetch("user_number").to_f
    @the_answer = Math.sqrt(@the_input_number)
    render("/calc_templates/square_root_results.html.erb")
  end
  def blank_payment_form
    render("/calc_templates/payment_form.html.erb")
  end
  def payment_results
    @interest = params.fetch("interest").to_f
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_i
    @monthly_payment = ((((@interest/100)/12)*@principal)/(1-(1+((@interest/100)/12))**(@years*-12))).round(2)
    render("/calc_templates/payment_results.html.erb")
  end
  def blank_random_form
    render("/calc_templates/random_form.html.erb")
  end
  def random_results
    @start = params.fetch("start").to_f
    @end = params.fetch("end").to_f
    @random_number = rand(@start..@end)
    render("/calc_templates/random_results.html.erb")
  end 
end