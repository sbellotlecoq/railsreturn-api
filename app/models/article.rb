class Article < ApplicationRecord

    belongs_to :user

def create
    # Création de l'article
  end

  def edit
    # Édition de l'article
  end

  def update
    # Mise à jour de l'article
  end

  def destroy
    # Suppression de l'article
  end

	  private

  def set_article
    @article = Article.find(params[:id])
  end

  def authorize_user!
    unless current_user == @article.user
      render json: { error: "Vous n'êtes pas autorisé à effectuer cette action" }, status: :unauthorized
    end
  end

end
