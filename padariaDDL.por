programa
{//
	inclua biblioteca Tipos
	inclua biblioteca Util --> U
	
	funcao inicio()
	{ 
		
		inteiro opcao_menu
		  	cadeia nomeProduto,valorProduto, quantProduto, custoProduto
		cadeia matriz
		[4][5]
		matriz[0][0]="Prod:"
		matriz[0][1]="R$"
		matriz[0][2]="Cod:"
		matriz[0][3]="Quant:"
		matriz[0][4]="Custo:"
	//	real somaDeProdutos=0.0 , valorTemp=0.0

		escreva("********** Bem vindo(a) a padaria Pão Quente **********\n")
		faca{
	  faca{
	 	retornaMenu()
	   leia(opcao_menu)
	     se(opcao_menu < 1 ou opcao_menu > 4) {
	     	escreva("Opção de menu invalida! Digite uma opção valida: \n")
	     	}
	  }enquanto(opcao_menu < 1 ou opcao_menu > 4)
	  escolha(opcao_menu){
	  	caso 1:
         
		
		para(inteiro i=1;i<3;i++){
		
			//escreva(valorTemp,"<- valorTemp e soma dos prod -> ", somaDeProdutos)
		escreva("\nEscreva o nome do produto para cadastrar:  ")
		leia (nomeProduto)
		matriz[i][0]=nomeProduto
		escreva("\nValor do produto:  ")
		leia (valorProduto)
		matriz[i][1]=valorProduto 
		escreva("Digite a quantidade em estoque: ")
		leia(quantProduto)
		matriz[i][3]=quantProduto
          escreva("Digite o custo do Produto:  ")
          leia(custoProduto)
          matriz[i][4]=custoProduto
          //escreva("Digite o codigo do produto:  ")
          //leia(codProduto)
          //matriz[i][2] = codProduto
          	}

		para (inteiro i=1;i<3;i++){
		//valorTemp = Tipos.cadeia_para_real(matriz[i][1])
			//somaDeProdutos=somaDeProdutos+valorTemp
			matriz[i][2] = Tipos.inteiro_para_cadeia(U.sorteia(100, 300), 10) 
			//matriz[3][1]=Tipos.real_para_cadeia(somaDeProdutos)
			//escreva ("O Valor total dos produtos é:  ",somaDeProdutos, "\n")
			
		}
		
		para (inteiro l=0;l<4;l++){
		para (inteiro c=0;c<5;c++){

		 escreva("\t|",matriz[l][c])
      }
      escreva("\n")
	}

	  	pare
	  	caso 2:
	  	
	  	 inteiro cod_produto, qnt_produto, qnt_estoque, atualizaEstoque=0
	  	 real saldoCaixa, atualizarSaldoCaixa, valorVenda
           para (inteiro l=0;l<3;l++){
		 para (inteiro c=0;c<3;c++){

		 escreva("\t|",matriz[l][c])
}
          escreva("\n")
}
		
          escreva("Digite o código do produto que deseja comprar: \n--> ")
          leia(cod_produto)
          escreva("Digite a quantidade que deseja comprar: \n--> ")
          leia(qnt_produto)
         para (inteiro l=1;l<3;l++){
          se(cod_produto == Tipos.cadeia_para_inteiro(matriz[l][2], 10)){
          	escreva("Processando compra...\n\n")
          }
           se (qnt_produto > Tipos.cadeia_para_inteiro(matriz[l][3], 10) ){
           	escreva("Quantidade insulficiente no estoque. \n")
           	}
         senao{ qnt_estoque = Tipos.cadeia_para_inteiro(matriz[l][3], 10) 
         atualizaEstoque = qnt_estoque - qnt_produto 
         matriz[l][3]  =  Tipos.inteiro_para_cadeia(atualizaEstoque, 10)
         }
          escreva("\n\n Você comprou ",qnt_produto," ", matriz[l][0], " e ainda restam ", atualizaEstoque, matriz[l][0], " no estoque \n")
          valorVenda = Tipos.cadeia_para_real(matriz[l][1]) 
          valorVenda = valorVenda * qnt_produto
		atualizarSaldoCaixa = valorVenda
			//atualizarSaldoCaixa = saldoDoCaixa
          
          escreva ("\n\n O valor a ser cobrado pelo produto:  ", matriz[l][0],qnt_produto," unidades \n O valor da venda ficou um total de R$:",valorVenda,"\n\n")
         	
          
         }
        // para (inteiro l=1;l<4;l++){
         //	qnt_produto
        // }
        	//inicio()
	  	pare
	  	caso 3: 
		
	  	pare

	  	}
	}enquanto(opcao_menu != 4)
	}
	
  funcao vazio retornaMenu(){
  	escreva(" Digite: \n(1) Cadastrar Produto \n(2) Realizar Venda \n(3) Relatório Atual \n(4) Fechar Caixa e Sair\n --->")
  	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3108; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 11, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */