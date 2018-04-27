<!doctype html>
<html lang="pt">
<head>
	<style>
		body {
			background-color: #000000;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="menus.css">
	<link rel="stylesheet" type="text/css" href="side-menu.css">
	<script src="jquery-3.3.1.js"></script>
	<title>TCC</title>
</head>
<body>

<div id="layout">
	<a href="#menu" id="menuLink" class="menu-link">
		<span></span>
	</a>

	<div id="menu">
		<div class="pure-menu">
			<a class="pure-menu-heading" href="frmInicial.html" target="iframe_a">TCC</a>
			<ul class="pure-menu-list">
				<li class="pure-menu-item"><a href="frmOperadora.html" target="iframe_a" class="pure-menu-link">Operadora</a></li>
			</ul>
			<ul class="pure-menu-list">
				<li class="pure-menu-item"><a href="frmClinicaSemIntegracao.html" target="iframe_a" class="pure-menu-link">Clinica sem integração</a></li>
				<li class="pure-menu-item"><a href="frmLaboratorioSemIntegracao.html" target="iframe_a" class="pure-menu-link">Laboratório sem integração</a></li>
			</ul>
			<ul class="pure-menu-list">
				<li class="pure-menu-item"><a href="frmClinicaComIntegracao.html" target="iframe_a" class="pure-menu-link">Clinica com integração</a></li>
				<li class="pure-menu-item"><a href="frmLaboratorioComIntegracao.html" target="iframe_a" class="pure-menu-link">Laboratório com integração</a></li>
			</ul>
		</div>
	</div>

	<div id="main">
		<iframe src="frmInicial.html" name="iframe_a" height="800px" width="90%" ></iframe>
	</div>

</body>
</html>
