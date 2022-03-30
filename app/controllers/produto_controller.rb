class ProdutoController < ApplicationController
	def index
      # produto=Produto2.new
  # produto.nome="João"
  # produto.telefone=98073
  # produto.save
    produto=Produto2.find(1)
    produto.nome="João Dória Da Sila Santos"
    produto.save
    @produtos=Produto2.all
  end

  def incluir
     produto=Produto2.new
     produto.nome=params[:nome]
     produto.telefone=params[:telefone]
     produto.save
     
     redirect_to "/produto"
  end
end
