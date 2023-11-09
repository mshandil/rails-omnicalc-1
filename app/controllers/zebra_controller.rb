class ZebraController < ApplicationController
  def hp
    render template: "templates/homepage"
  end

  def square
    @num_dice = params.fetch("square").to_f
    @result = @num_dice * @num_dice
    render template: "templates/results"
  end

  def root
    render template: "templates/root"
  end

  def sq_root
    @num_dice = params.fetch("root").to_f
    @result = @num_dice**0.5
    render template: "templates/results2"
  end

  def payment
    render template: "templates/payment"
  end

  def pay_result
    @APR = params.fetch("APR").to_f
    @years = params.fetch("years").to_f
    @Principal = params.fetch("Principal").to_f
    @result = @Principal * @APR / (@APR**@years)

    render template: "templates/results3"
  end

  def random
    render template: "templates/random"
  end

  def random_res
    @num1 = params.fetch("min").to_f
    @num2 = params.fetch("max").to_f
    @rand = rand(@num1..@num2)
    render template: "templates/results4"
  end
end
