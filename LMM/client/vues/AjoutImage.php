<!-- affichage des messages d'erreur a l'usager (temporaire) - concernant ses actions -->
  <div class="row">
    <div id="message" class="col-sm-12 text-center">
       <?= isset($data['erreurs']) ? $data['erreurs'] : '' ?>
       <?= isset($data['succes']) ? $data['succes'] : '' ?>
    </div>
    <div id="photo" value="false"></div>
  </div> <!-- fin div row -->

<!-- ref: https://www.formget.com/ajax-image-upload-php/ -->
<div class="container ajoutImg">	
	<form <?= (isset($data['idApt'])) ? 'id="uploadimage"' : 'id="uploadimageProfil"' ?> action="" method="post" enctype="multipart/form-data">
		<div class="panel panel-image">
			<div class="panel-header text-center">Ajouter des images à mon logement</div>
				<div class="panel-body pb-0">
		<?php	if(isset($data['idApt'])) { ?>
				<h4 class="text-center mb-3">Veuillez choisir l'une des options suivantes:</h4>
				<div class="form-check">
				    <label class="form-check-label">
				        <input type="radio" class="form-check-input" name="modifPP" id="modifPP" checked/>&nbsp;Ajout/Modification de la photo principale ET ajout de photos supplémentaires
				    </label>
				</div>
				<div class="form-check">
				    <label class="form-check-label">
				        <input type="radio" class="form-check-input" name="modifPP" value="">&nbsp;Ajout de photos supplémentaires seulement
				    </label>
				</div>
		<?php   } 
				else { ?>
					<a href="index.php?Usagers&action=afficheUsager&idUsager=<?= $data['idPhotoUsager'] ?>&message=nouvelUsager"><button class="btn-plusTard btn btn-primary" type="button" id="btnSansImg">Plus tard</button></a>
		<?php	} ?>
				<h5 class="titrePhotoPrincipale text-center mt-3"><?= (isset($data['idApt'])) ? 'Photo principale de l\'appartement' : 'Photo du profil' ?></h5>
				<hr>
				<div id="image_preview" class="text-center"><img id="previewing" src="" /><br><small></small></div>
				<hr>
				
				<div id="selectImage">
					<div id="ajoutImage">
						<label id="inputFile" class="btn btn-primary">Sélectionner une image<input type="file" name="file[]" id="file" required /></label>
					</div>
					<input type="hidden" name="action" value="ajouterPhoto" required />
					<input type="hidden" id="idApt" name="idApt" value="<?= isset($data['idApt']) ? $data['idApt'] : '' ?>"/>
					<input type="hidden" name="idPhotoUsager" value="<?= isset($data['idPhotoUsager']) ? $data['idPhotoUsager'] : '' ?>"/>
				</div>

				<div>
					<input class="pull-right btn btn-primary btn-primary mt-3" type="submit" value="Sauvegarder les images" class="submit" />
					<?php if(isset($data['idApt'])) { ?>
						<button class="pull-right btn btn-orange btn-primary mt-3" type="button" id="btnAjoutImage">Ajouter une image</button>
					<?php } ?>
				</div>	
			</div>
		</div>	
	</form>
	<input id="temp" name="temp" value="" type="hidden"/>
</div>