class AnswersController < ApplicationController
  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      respond_to do |format|
        format.html { redirect_to edit_survey_url(id: @answer.question.survey.id), notice: "Answer was successfully destroyed." }
        format.json { head :no_content }
        format.js
      end
    end
  end
end
