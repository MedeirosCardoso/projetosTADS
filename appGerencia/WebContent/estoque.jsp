<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8"/>
	<link rel="stylesheet" type="text/css" href="css/estilizacao.css">
	<link rel="stylesheet" type="text/css" href="css/estiloTelaEstoque.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="javaScript/scripts.js"></script>
	<style>
		#estoqueNav {
		 background-color: grey;
		 color: white;
		}
	</style>
	<title>Estoque</title>
</head>
<body>
	<main>
		<c:import url="menuPrincipal.jsp" />
		
		<section id="sectionEstoque">
			<h1>ESTOQUE</h1>
			<form>
				<nav class="subMenu">
					<ul>
						<li>
							<input type="radio" name="tabs" id="inputEntradaProduto" class="cInputSubMenu" checked>
							<label for="inputEntradaProduto">Entrada</label>
							<div class="contentArticle">
								<article id="entradas" class="conteudoTab">
									<input list="produtosEntrada" id="inputListaProdutosEntrada" name="inputlistaProdutoEntrada" placeholder="Produto">
										<datalist id="produtosEntrada">
											<option value="Farinha"></option>
											<option value="A�ucar"></option>
										</datalist><br>
									<label>Quantidade:</label>
									<br>
									<input id="inputQuantidadeProdEntrada" type="number" name="inputQuantidadeProdEntrada" min="1" placeholder="Gramas">
									<br>
									<label>Valor do produto:</label><br>
									<input id="inputValorProdEntrada" type="number" name="inputValorProdEntrada" min="1" placeholder="R$">
									<br>
									<input id="inputSalvarEntradaProduto" type="button" name="salvarEntradaProduto" value="Salvar">
									<input id="inputCancelarEntradaProduto" type="reset" name="cancelarEntradaProduto" value="Cancelar">	
								</article>
							</div>
						</li>
						<li>
							<input type="radio" name="tabs" id="inputSaidaProduto" class="cInputSubMenu">
							<label for="inputSaidaProduto">Sa�da</label>
							<div class="contentArticle">
								<article id="saidas" class="conteudoTab" style="margin-left: -16.2%;">
									<input list="produtosSaida" id="inputListaProdutosSaida" name="inputlistaProdutoSaida" placeholder="Produtos">
										<datalist id="produtosSaida">
											<option value="Bolo"></option>
											<option value="Salgado"></option>
										</datalist><br>
									<label>Quantidade:</label>
									<br>
									<input id="inputQuantidadeProdSaida" type="number" name="inputQuantidadeProdSaida" min="1" placeholder="und">
									<br>
									<label>Data:</label><br>
									<input id="inputDataSaidaProd" type="date" name="inputDataSaidaProd" min="1" placeholder="dd/mes/ano">
									<br>
									<input id="inputSalvarSaidaProduto" type="button" name="salvarSaidaProduto" value="Salvar">
									<input id="inputCancelarSaidaProduto" type="reset" name="cancelarSaidaProduto" value="Cancelar">
								</article>
							</div>
						</li>
						<li>
							<input type="radio" name="tabs" id="inputCadastroProduto" class="cInputSubMenu">
							<label for="inputCadastroProduto">Cadastro</label>
							<div class="contentArticle">
								<article id="cadastro" class="conteudoTab" style="margin-left: -29%;">
									<fieldset id="cadastroTipoProduto">
										<legend>Tipo:</legend>
										<input id="tipoIngrediente" type="radio" name="tipodeProduto" value="ingrediente">
										<label>&nbsp; Ingrediente</label>

										<input id="tipoBolo" type="radio" name="tipodeProduto" value="bolo" style="margin-left: 9%;">
										<label>&nbsp; Bolo</label>
										<br>
										<input id="tipoEmbalagem" type="radio" name="tipodeProduto" value="embalagem">
										<label>&nbsp; Embalagem</label>

										<input id="tipoSalgado" type="radio" name="tipodeProduto" value="salgado">
										<label>&nbsp; Salgado</label>
									</fieldset>
									<input id="inputDescricaoProduto" class="cInputCadastroProduto" type="text" name="inputDescricaoProduto" placeholder="Descri��o">
									<input id="inputEstoqueMinProduto" class="cInputCadastroProduto" type="number" name="estoqueMinProduto" placeholder="Estoque m�nimo">
									<select id="inputTipoUnitario" name="tipoUnitario" style="margin-left: 5%; width: 18%;">
										<option disabled selected>Tipo Un�tario</option>
										<option value="gramas">Gramas</option>
										<option value="unidade">Unidade</option>
									</select>
									<br>
									<input list="ingredientes" id="inputListaingrediente" class="cInputCadastroProduto" name="listaIngrediente" placeholder="Ingrediente / Embalagem">
										<datalist id="ingredientes">
											<option value="Farinha"></option>
											<option value="A�ucar"></option>
											<option value="Pote 250ml"></option>
										</datalist>
									<input id="inputQuantidadeIngrediente" class="cInputCadastroProduto" type="number" name="quantidadeIngrediente" placeholder="Quantidade" min="1">
									<input id="botaoAdicionarIngrediente" type="button" name="adicionarIngrediente" value="Adicionar" style="width: 18%;">
									<br>
									<table id="tableListaIngredProd">
										<tr>
											<th>Descri��o</th>
											<th>Quantidade</th>
										</tr>
									</table>
									<br>
									<input id="inputSalvarCadastroProduto" type="button" name="salvarCadastroProduto" value="Salvar">
									<input id="inputCancelarCadastroProduto" type="reset" name="cancelarCadastroProduto" value="Cancelar">
								</article>
							</div>
						</li>
						<li>
							<input type="radio" name="tabs" id="inputConsultaProduto" class="cInputSubMenu">
							<label for="inputConsultaProduto">Consulta</label>
							<div class="contentArticle">
								<article id="consulta" class="conteudoTab" style="margin-left: -41.7%;">
									<table id="tableConsultaEstoque" style="margin-top: 1.5%;">
										<tr>
											<th>C�digo</th>
											<th>Produto</th>
											<th>Estoque M�nimo</th>
											<th>Estoque Atual</th>
											<th>Valor</th>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</table>
								</article>
							</div>
						</li>
					</ul>
				</nav>
			</form>	
		</section>
	</main>
</body>
</html>