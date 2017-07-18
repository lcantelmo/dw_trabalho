<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cadastro</title>
</head>
<script>
    function limpa_formulário_cep() {
        //Limpa valores do formulário de cep.
        document.getElementById('rua').value=("");
        document.getElementById('bairro').value=("");
        document.getElementById('cidade').value=("");
        document.getElementById('uf').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }

    function pesquisacep(valor) {

        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{8}$/;

            //Valida o formato do CEP.
            if(validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";

                //Cria um elemento javascript.
                var script = document.createElement('script');

                //Sincroniza com o callback.
                script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callback';

                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);

            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    };



    function optionCheck(){
        var option = document.getElementById("hospedeiro").value;
        if(option == "false"){
            document.getElementById("option_qnt_hospedes").style.visibility ="hidden";
        }
        if(option == "true"){
            document.getElementById("option_qnt_hospedes").style.visibility ="visible";
        }
    }
</script>
<body>
    <h2>Cadastro</h2>
    <form action="cadastro" method="post">
        <label for="email">E-mail:</label>
        <input type="email" name="email" required id="email" />
        <br>
        <label for="password">Senha:</label>
        <input type="password"  name="password" required id="password">
        <br>
        <label for="nome">Nome:</label>
        <input type="text" name="nome" required id="nome">
        <br>
        <label for="cep">CEP:</label>
        <input name="cep" required id="cep" maxlength="9" onblur="pesquisacep(this.value);">
        <br>
        <label for="pais">País:</label>
        <input type="text" name="pais" required id="pais" maxlength="2">
        <br>
        <label for="uf">Estado:</label>
        <input type="text" name="uf" required id="uf">
        <br>
        <label for="rua">Rua:</label>
        <input type="text" name="rua" required id="rua">
        <br>
        <label for="numero">Nº:</label>
        <input type="number" name="numero" required id="numero">
        <br>
        <label for="Complemento">Complemento:</label>
        <input type="text" name="complemento" id="complemento">
        <br>
        <label for="bairro">Bairro:</label>
        <input type="text" name="bairro" required id="bairro">
        <br>
        <label for="cidade">Cidade:</label>
        <input type="text" name="cidade" required id="cidade">
        <br>
        <label for="data_nasc">Data de Nascimento:</label>
        <input type="date" name="data_nasc" required id="data_nasc">
        <br>
        <label for="esporte">Esporte Favorito:</label>
        <input type="text" name="esporte" required id="esporte">
        <br>
        <label for="hospedeiro">Deseja receber Hóspedes?</label>
        <select name="hospedeiro" required id="hospedeiro" onchange="optionCheck()">
            <option value="false">Não</option>
            <option value="true">Sim</option>
        </select>
    <br>
        <div id="option_qnt_hospedes" style="visibility:hidden">
            <label for="qnt_hospedes">Quantos Hóspedes você pode receber na sua casa:</label>
            <input type="number" name="qnt_hospedes" id="qnt_hospedes">
            <br>
        </div>
        <input type="submit" value="Cadastrar">
    </form>
</body>
</html>
