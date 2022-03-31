class ProdutoController < ApplicationController
before_action :carregar_produtos, execept: [:incluir, :salvar]

	def index
      # produto=Produto2.new
  # produto.nome="João"
  # produto.telefone=98073
  # produto.save
   # produto=Produto2.find(1)
   # produto.nome="João Dória Da Sila Santos"
   # produto.save
   # @produtos=Produto2.all
  end



  def incluir
     produto=Produto2.new
     produto.nome = params[:nome]
     produto.telefone = params[:telefone]
     produto.save
     
     redirect_to "/produto"
  end


  def alterar
    #carrego meu objeto pelo ID
    @produto=Produto2.find(params[:id])
   render :index
  end
  
  def excluir
    #carrego meu objeto pelo ID
   @produto=Produto2.find (params[:id])
   @produto.destroy

   redirect_to "/produto"
  
  end


   def salvar 
    produto=Produto2.find(params[:id])
    produto.nome = params[:nome]
    produto.telefone = params[:telefone]
    produto.save
    redirect_to "/produto"
   end 




  def carregar_produtos
    @produtos=Produto2.all   
 end


end
