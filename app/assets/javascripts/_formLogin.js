//Verificando se o campo data foi preenchido
if (data == ""){
	alert ('Preencha a Data por favor.');    
	form_registra_entrada.data.focus();
	return false;
}
// Verificar se o formato da data digitada está correto		
var patternData = /^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$/;
if(!patternData.test(data)){
    alert("Digite a data no formato Dia/Mês/Ano");
	form_registra_entrada.data.focus();
    return false;
}