<?php
/**
* @file 		/controller/Controleur_Usagers.php
* @brief 		Projet WEB 2
* @details								
* @author       Bourihane Salim, Massicotte Natasha, Mercier Renaud, Romodina Yuliya - 15612
* @version      v.1 | fevrier 2018 	
*/

	/**
    * @class    Controleur_Usagers - herite de la classe BaseController
    * @details 	
    *
    *   ... methodes  |   traite(), afficheListeUsagers()
    */
	class Controleur_Usagers extends BaseControleur
	{	
		/**
		* @brief      methode traite - methode abstraite redéfinie par les classes heritant de BaseControleur
		* @details    gere les actions (switch case) ainsi que les parametres envoyes
		* @param      <array>  	$params 	les parametres envoyes
		* @return     <...>  	( tout depend du case )
		*/	
		public function traite(array $params)
		{
            /*
                initialiser les messages à afficher à l'usager
                par rapport à son statut, son état de connexion
                et ses droits sur le site
            */
            $data = $this->initialiseMessages();
            //
            // afficher le header
            $this->afficheVue("header", $data);
            //
			//si le paramètre action existe
			if(isset($params["action"]))
			{
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue et obtient le modèle
				switch($params["action"])
				{
					case "login":
						$this->afficheVue("AfficheLogin");
						break;
						
					case "logout":
						session_destroy();
						header('location:index.php');
						break;
						
					case "authentifier":
						if(isset($params["username"]) && isset($params["password"]))
						{
							//si la session n'existe pas, on authentifier l'usager
							if (!isset($_SESSION["username"]))
							{
								$modeleUsagers = $this->getDAO("Usagers");
								$data = $modeleUsagers->authentification($params["username"], $params["password"]);
								//si l'usager est authentifié
								if($data)
								{
									//session_start();
                                    $data = $modeleUsagers->obtenir_par_id($params["username"]);
									//on crée la session
									$_SESSION["username"] = $data->getUsername();
									$_SESSION["nom"] = $data->getNom();
									$_SESSION["prenom"] = $data->getPrenom();
									$_SESSION["isBanned"] = $data->getBanni();
                                    foreach($data->roles as $role)
                                    {
									   $_SESSION["role"][] = $role->id_nomRole;
                                    }
									//on affiche la liste des sujets en respectant les droits d'usager
									 header('location:index.php');
								}
								else
								{
									//si l'usager n'est pas authentifié
									$data="<p class='alert alert-warning'>Username ou password invalide!</p>";
									$this->afficheVue("AfficheLogin", $data);
								}
							}
							else
							{
								//si la session existe déjà
								$data="<p class='alert alert-warning'>Session déjà ouverte!</p>";
								$this->afficheVue("AfficheLogin", $data);
							}
						}
						break;

					case "afficheListeUsagers":
						if(isset($_SESSION["username"]) && $_SESSION["isAdmin"] ==1 && $_SESSION["isBanned"] ==0)
						{
							//affiche tous les usagers
							$this->afficheListeUsagers();
						}
						else
						{
							//affiche page d'erreur
							parent::affiche404();
						}
						break;

					case "affiche":
						if(isset($_SESSION["username"]) && $_SESSION["isAdmin"] ==1 && $_SESSION["isBanned"] ==0)
						{
							if(isset($params["idUsager"]))
							{
								//affiche details du profil d'usager
								$modeleUsagers = $this->getDAO("Usagers");
								$data = $modeleUsagers->obtenir_par_id($params["idUsager"]);
								$this->afficheVue("AfficheUsager", $data);
							}
							else
							{
								trigger_error("Pas d'id spécifié...");
							}
						}
						else
						{
							//affiche page d'erreur
							parent::affiche404();
						}
						break;
												
					case "inversBan":
						if(isset($_SESSION["username"]) && in_array(1,$_SESSION["role"]) && $_SESSION["isBanned"] ==0)
						{
							if(isset($params["idUsager"]))
							{
								//réhabiliter l'usager
								$modeleUsagers = $this->getDAO("Usagers");							
								$data = $modeleUsagers->banirRehabiliter('banni', 'NOT banni' , $params["idUsager"]);
								$this->afficheListeUsagers();
							}
							else
							{
								trigger_error("Pas d'id spécifié...");
							}
						}
						else
						{
							parent::affiche404();
						}
						break;
						
						case "inversAdmin":
						if(isset($_SESSION["username"]) && in_array(1,$_SESSION["role"]) && $_SESSION["isBanned"] ==0)
						{
							if(isset($params["idUsager"]))
							{
								//enleve les droits d'admin
								$modeleUsagers = $this->getDAO("Usagers");							
								$data = $modeleUsagers->banirRehabiliter('isAdmin', 'NOT isAdmin' , $params["idUsager"]);
								$this->afficheListeUsagers();
							}
							else
							{
								trigger_error("Pas d'id spécifié...");
							}
						}
						else
						{
							$this->afficheVue("404");
						}
						break;

					default:
						trigger_error("Action invalide.");		
				}				
			}
			else
			{
                // redirection temporaire a completer
                $this->afficheListeUsagers();

				/*
                
                //action par défaut - afficher la liste des sujets/usagers
				if(isset($_SESSION["username"]) && $_SESSION["isAdmin"] ==1 && $_SESSION["isBanned"] ==0)
				{
					$this->afficheListeUsagers();
				}
				else
				{
					//action par défaut - afficher la liste des sujets
					header('location:index.php?Sujets');
				}
                
                */
			}
            //
            // afficher le footer
            $this->afficheVue("footer");
		}

		/**
		* @brief 		Affichage de la liste de tous les usagers
		* @return		la vue
		*/	
		private function afficheListeUsagers()
		{
			$modeleUsagers = $this->getDAO("Usagers");
			$data["usagers"] = $modeleUsagers->obtenir_tous();
			$this->afficheVue("AfficheListeUsagers", $data);
		}
	}
?>