# class ScoreSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :score
#   belongs_to :game
#   belongs_to :player 
# end

class ScoreSerializer
  def initialize(score_object)
    @score = score_object
  end

  def to_serialized_json
    options = {
      include: {
        player: {
          only: [:name, :id]
        },
        game: {
          only: [:id, :created_at]
        }
      },
      except: [:updated_at],
    }
    @score.to_json(options)
  end

end
