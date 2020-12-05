<?php 

include "../layout/layout.php";
require_once "../database/servicio.php";
require_once "../database/Iserviciobase.php";
require_once "partidoservice.php";
require_once "../database/Context.php";
require_once "../database/FileHandler.php";
require_once "../database/JsonFileHandler.php";
require_once "partido.php";

$service = new partidoservice("database");

$listarpartido = $service->Getlista();


?>
<body class="text-center">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-10%">
    <div class="inner">
      <nav class="nav nav-masthead justify-content-center">
        <a class="nav-link active" href="../admin/admin.php">Atras</a>
      </nav>
    </div>
<?php printHeader(true); ?>






<h3 class="font-weight-bold">Partidos</h3>
<br>


<div class="row">

<?php foreach ($listarpartido as $partido) : ?>
    <div class="card text-white bg-dark cover-container" style=" width: 14rem";>
 <img class="bd-placeholder-img card-img-top" src="<?php echo "imagenes/partido/" .  $partido->Logo_Partido ?>" width="100%" height="150" role="img" aria-label="Placeholder: Thumbnail">

                 <div class="card-body">
                       <h5 class="card-title"> <?php echo $partido->Nombre?></h5>
                       <h5 class="card-subtitle mb-2"><?php echo $partido->Descripcion?></h5>
                      <h6 class="card-text">Estado: <?php if ($partido->Estado == 1): ?>

<td>Activo</td>
<?php else: ?>

    <td>Inactivo</td>

<?php endif ?></h6>
                      <a href="editarpartido.php?id=<?php echo $partido->ID; ?>" class="card-link btn btn-outline-primary">Editar</a>
                      <a href="eliminarpartido.php?id=<?php echo $partido->ID; ?>" class="card-link btn btn-outline-danger"
                                    onclick="return confirmar()">Eliminar</a>
                                    </div>

             </div>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

             <?php endforeach; ?>
             </div>

<?php printFooter(true); ?>
<script type="text/javascript">
    function confirmar() {
        var respuesta = confirm("Seguro de eliminar a este Candidato?");
        if (respuesta == true) {
            return true;
        } else {
            return false;
        }
    }
  
 
    </script>