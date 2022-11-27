class BirdsController < ApplicationController
    # GET all the Birds /birds ---route
    def index
        birds = Bird.all
        render json: birds
    end

    def show 
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else 
            render json: {
                err: "Bird not found"
            },
            status: :not_found
        end
    end
end
