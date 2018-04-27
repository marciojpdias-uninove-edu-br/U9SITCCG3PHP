<?php 

recuperaBeneficiario( $_POST['numeroCarteiraPlanoSaude'] );

function recuperaBeneficiario( $numeroCarteiraPlanoSaude )
{

	$serverName = "u9sitccg3dsv.database.windows.net";
	$connectionInfo = array( "Database"=>"U9SITCCG3Database", "UID"=>"U9SITCCG3Root", "PWD"=>"U9SITCCG3Senha");
	$conn = sqlsrv_connect( $serverName, $connectionInfo );
	if( $conn === false )
	{
		die( print_r( sqlsrv_errors(), true));
	}

	$sql = "SELECT NumeroCarteira, Nome, DataNascimento, Sexo, CPF, NumeroRG, DigitoRG, EstadoRG, Email, Logradouro, Numero, Complemento, Bairro, Cidade, CEP, UF, TelefoneDDD, TelefoneNumero FROM dbo.Beneficiario WHERE NumeroCarteira = '" . $numeroCarteiraPlanoSaude  . "'" ;
	$stmt = sqlsrv_query( $conn, $sql );
	if( $stmt === false)
	{
		die( print_r( sqlsrv_errors(), true) );
	}

	while( $row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC) )
	{
		echo $row['NumeroCarteira'].",".$row['Nome'].",".$row['DataNascimento'].",".$row['Sexo'].",".$row['CPF'].",".$row['NumeroRG'].",".$row['DigitoRG'].",".$row['EstadoRG'].",".$row['Email'].",".$row['Logradouro'].",".$row['Numero'].",".$row['Complemento'].",".$row['Bairro'].",".$row['Cidade'].",".$row['CEP'].",".$row['UF'].",".$row['TelefoneDDD'].",".$row['TelefoneNumero'];
	}

	sqlsrv_free_stmt( $stmt );

}
?>
