<?php 

$serverName = "u9sitccg3dsv.database.windows.net";
$connectionInfo = array( "Database"=>"U9SITCCG3Database", "UID"=>"U9SITCCG3Root", "PWD"=>"U9SITCCG3Senha");
$conn = sqlsrv_connect( $serverName, $connectionInfo );
if( $conn === false )
{
	die( print_r( sqlsrv_errors(), true));
}

$sql = "INSERT INTO dbo.ClienteComIntegracao
(NumeroCarteiraPlanoSaude, Nome, DataNascimento, Sexo, CPF, NumeroRG, DigitoRG, EstadoRG, Email, Logradouro, Numero, Complemento, Bairro, Cidade, CEP, UF, TelefoneDDD, TelefoneNumero, DigitacaoInicio, DigitacaoTermino )
VALUES ('".$_POST["NumeroCarteiraPlanoSaude"]."','".$_POST["Nome"]."','".$_POST["DataNascimento"]."','".$_POST["Sexo"]."','".$_POST["CPF"]."','".$_POST["NumeroRG"]."','".$_POST["DigitoRG"]."','".$_POST["EstadoRG"]."','".$_POST["Email"]."','".$_POST["Logradouro"]."','".$_POST["Numero"]."','".$_POST["Complemento"]."','".$_POST["Bairro"]."','".$_POST["Cidade"]."','".$_POST["CEP"]."','".$_POST["UF"]."','".$_POST["TelefoneDDD"]."','".$_POST["TelefoneNumero"]."','".$_POST["DigitacaoInicio"]."','".$_POST["DigitacaoTermino"]."')";
$stmt = sqlsrv_query( $conn, $sql);
if ( $stmt )
{
	$blSucesso = 1;
}
else
{
	$blSucesso = 0;
	echo "Error in statement execution.\n";
	die( print_r( sqlsrv_errors(), true));
}

if ( $blSucesso = 1 )
{
	echo "Cadastro de " . $_POST["NumeroCarteiraPlanoSaude"] . " efetuado com sucesso";
}

sqlsrv_free_stmt( $stmt );

?>
