/**
 * Confirmação de exclusão de um contato
 * @author Douglas Matos da Silva
 * @param {String} idcon 
 */

function confirmar(idcon) {
	let resposta = confirm("Confirmar a exclusão deste contato? ")
	if (resposta === true) {
		window.location.href = "delete?idcon=" + idcon
	}
}