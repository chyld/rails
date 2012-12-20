class Work
  def compute(calc)
    result = eval(calc)
    Computation.create(:name => calc, :result => result)
  end
end
