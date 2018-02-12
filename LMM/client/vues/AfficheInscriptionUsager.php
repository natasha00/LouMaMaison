<!--
* @file         /AfficheInscriptionUsager.php
* @brief        Projet WEB 2
* @details      Affichage du formulaire de connexion - vue partielle
* @author       Bourihane Salim, Massicotte Natasha, Mercier Renaud, Romodina Yuliya - 15612
* @version      v.1 | fevrier 2018
-->

<div class="container">
    
    <div class="row">
      <div class="col-sm-12">
         <?= isset($data['erreurs']) ? $data['erreurs'] : '' ?>
         <?= isset($data['succes']) ? $data['succes'] : '' ?>
      </div>
    </div> <!-- fin div row -->

    <form method="POST" action="index.php?Usagers&action=sauvegarderUsager">

      <!-- Type d'utilisateur -->
      <div class="py-3">
        <label class="form-control-label ">Je veux m'inscrire en tant que</label>
        <div class="form-check">
          <label class="form-check-label">
            <input type="checkbox" name="prestataire" value="3" class="form-check-input">
            Prestataire
          </label>
        </div> 
        <div class="form-check">
          <label class="form-check-label">
            <input type="checkbox" name="client" value="4" class="form-check-input">
            Client
          </label>
        </div> 
      </div>
          
      <!-- Nom d'utilisateur -->
      <div class="form-group">
          <label for="username" class="form-control-label ">Nom d'utilisateur</label>
          <div class="row">
            <input type="text" name="username" class="col-sm-12 form-control" id="username" value="<?= isset($data['username']) ? $data['username'] : '' ?>"  placeholder="exigences du username.." aria-describedby="aideUsername">
            <small class="form-text text-muted" id="aideUsername"></small> 
        </div>
      </div> 

      <!-- Nom -->
      <div class="form-group">
          <label for="nom" class="form-control-label ">Nom</label>
          <div class="row">
            <input type="text" name="nom" class="col-sm-12 form-control" id="nom" value="<?= isset($data['nom']) ? $data['nom'] : '' ?>" placeholder="exigences du nom.." aria-describedby="aideNom">
            <small class="form-text text-muted" id="aideNom"></small> 
        </div>
      </div>

      <!-- Prenom -->
      <div class="form-group">
          <label for="prenom" class="form-control-label ">Prenom</label>
          <div class="row">
            <input type="text" name="prenom" class="col-sm-12 form-control" id="prenom" value="<?= isset($data['prenom']) ? $data['prenom'] : '' ?>" placeholder="exigences du prenom.." aria-describedby="aidePrenom">
            <small class="form-text text-muted" id="aidePrenom"></small> 
        </div>
      </div>

      <!-- Adresse -->
      <div class="form-group">
          <label for="adresse" class="form-control-label ">Adresse</label>
          <div class="row">
            <input type="text" name="adresse" class="col-sm-12 form-control" id="adresse" value="<?= isset($data['adresse']) ? $data['adresse'] : '' ?>" placeholder="exigences de l'adresse.." aria-describedby="aideAdresse">
            <small class="form-text text-muted" id="aideAdresse"></small> 
        </div>
      </div>

      <!-- Telephone -->
      <div class="form-group">
          <label for="telephone" class="form-control-label ">Téléphone</label>
          <div class="row">
            <input type="text" name="telephone" class="col-sm-12 form-control" id="telephone" value="<?= isset($data['telephone']) ? $data['telephone'] : '' ?>" placeholder="exigences du telephone.." aria-describedby="aideTel">
            <small class="form-text text-muted" id="aideTel"></small> 
        </div>
      </div>

      <!-- mot de passe -->
      <div class="form-group">
          <label for="pwd0" class="form-control-label ">Mot de passe</label>
          <div class="row">
<!--type:pwd--> <input type="text" name="pwd0" class="col-sm-12 form-control" id="pwd0" placeholder="exigences du mot de passe.." aria-describedby="aidePwd0">
            <small class="form-text text-muted" id="aidePwd0"></small> 
        </div>
      </div>

      <!-- confirmation du mot de passe -->
      <div class="form-group">
          <label for="pwd1" class="form-control-label ">Confirmer le mot de passe</label>
          <div class="row">
<!--type:pwd--> <input type="text" name="pwd1" class="col-sm-12 form-control" id="pwd1" placeholder="confirmer le mot de passe.." aria-describedby="aidePwd1">
            <small class="form-text text-muted" id="aidePwd1"></small> 
        </div>
      </div>

      <!-- Mode de paiement -->
      <div class="form-group">
        <label for="modePaiement" class="form-control-label my-1 mr-sm-2">Type de paiement</label>
        <div class="row">
        <select class="col-sm-12 custom-select my-1 mr-sm-2" name="modePaiement" id="modePaiement">
        <?= (isset($data['modePaiement'])) ? '<option value="0">-- Choisir un mode de paiement --</option>' : '<option value="0" selected>-- Choisir un mode de paiement --</option>' ?>
      <?php foreach($data['paiement'] AS $p) {
              if(isset($data['modePaiement'])) { 
                if($data['modePaiement'] == $p['id']) { ?>
                  <option selected value=<?= $p['id'] ?>><?= $p['modePaiement'] ?></option>
      <?php     } 
                else { ?>
                  <option value=<?= $p['id'] ?>><?= $p['modePaiement'] ?></option>
      <?php     }
              } 
              else { ?>
                <option value=<?= $p['id'] ?>><?= $p['modePaiement'] ?></option>
      <?php   }
            } ?>
        </select>
        </div>
      </div>

      <!-- Moyen de communication -->
      <div class="form-group">
        <label for="moyenComm" class="form-control-label my-1 mr-sm-2">Moyen de communication</label>
        <div class="row">
        <select class="col-sm-12 custom-select my-1 mr-sm-2" name="moyenComm" id="moyenComm">
        <?= (isset($data['moyenComm'])) ? '<option value="0">-- Choisir un moyen de communication --</option>' : '<option value="0" selected>-- Choisir un moyen de communication --</option>' ?>
        <?php foreach($data['communication'] AS $c) { 
                if(isset($data['moyenComm'])) { 
                  if($data['moyenComm'] == $c['id']) { ?>
                    <option selected value=<?= $c['id'] ?>><?= $c['moyenComm'] ?></option>
        <?php     } 
                  else { ?>
                  <option value=<?= $c['id'] ?>><?= $c['moyenComm'] ?></option>
        <?php     }
                } 
                else { ?>
                  <option value=<?= $c['id'] ?>><?= $c['moyenComm'] ?></option>
        <?php   }
              } ?>
        </select>
        </div>
      </div>

      <input type="submit" class="btn btn-primary btn-block btn-lg" value="Sauvegarde">						
    </form>
</div>




