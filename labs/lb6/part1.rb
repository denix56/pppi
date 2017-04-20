class Pupil
  # @whereWanted - could take values :form10 and :colledge
  def initialize sirname, whereWanted, isDone
    abort "Incorrect arguments" if !sirname.is_a? String || whereWanted != :form10 && whereWanted != :colledge || !!isDone != isDone
    @sirname, @whereWanted, @isDone  = sirname, whereWanted, isDone
  end

  def sirname
    @sirname
  end

  def whereWanted
    @whereWanted
  end

  def isDone
    @isDone
  end
end

def Form
  def initialize n
    @n = n
    @pupils = []
  end

  def formNumber
    @n
  end

  def addPupil sirname, whereWanted, isDone
    @pupils << Pupil(sirname, whereWanted, isDone)
  end

  def wantToGoToNextForm
    @pupils.count {|pupil| pupil.whereWanted == :form10}
  end

  def whoJoinedColledge
    @pupils.each.select {|pupil| pupil.whereWanted == :colledge && pupil.isDone}
  end

  def joinedForm10
    @pupils.count {|pupil| pupil.whereWanted == :form10 && pupil.isDone}
  end
end

Max = 25
Min = 15

def count10forms forms
  sum = 0
  forms.each do |form|
    sum += form.joinedForm10
  end
  numberOfClasses = sum / Max
  if (numberOfClasses == 0 && sum % Max < 15)
    0
  else
    numberOfClasses + 1
  end
end



