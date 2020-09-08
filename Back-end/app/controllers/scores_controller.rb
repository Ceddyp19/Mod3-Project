class ScoresController < ApplicationController
    # def index 
    #     scores = Score.all 
    #     options = {
    #         include: [:player, :game]
    #     }
    #     render json: ScoreSerializer.new(scores, options)
    # end

    # def show 
    #     score = Score.find_by(params[:id])
    #     options = {
    #         include: [:player, :game]
    #     }
    #     render json: ScoreSerializer.new(score, options)
    # end

      def index
        scores = Score.all
        render json: ScoreSerializer.new(scores).to_serialized_json
      end
     
      def show
        score = Score.find_by(id: params[:id])
        render json: ScoreSerializer.new(score).to_serialized_json
      end
    
end
