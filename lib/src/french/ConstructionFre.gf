--# -path=alltenses:.:../abstract

concrete ConstructionFre of Construction = CatFre ** 
  open SyntaxFre, ParadigmsFre, (L = LexiconFre), (E = ExtraFre), Prelude in {


lin
  hungry_VP = mkVP have_V2 (mkNP (ParadigmsFre.mkN "faim" feminine)) ;
  thirsty_VP = mkVP have_V2 (mkNP (ParadigmsFre.mkN "soif" feminine)) ;
  has_age_VP card = mkVP have_V2 (mkNP <lin Card card : Card> L.year_N) ;

  have_name_Cl x y = mkCl x (mkV2 (reflV (mkV "appeler"))) y ;
  married_Cl x y = mkCl (lin NP x) L.married_A2 (lin NP y) | mkCl (mkNP and_Conj (lin NP x) (lin NP y)) (mkA "marié") ;

  what_name_QCl x = mkQCl how_IAdv (mkCl (lin NP x) (reflV (mkV "appeler"))) ;
  how_old_QCl x = mkQCl (mkIP whichSg_IDet (mkN "âge" masculine)) (lin NP x) have_V2 ;
  how_far_QCl x = mkQCl (mkIAdv dative (mkIP which_IDet (mkN "distance"))) x ;

-- some more things
  weather_adjCl ap = mkCl (mkVP (lin AP ap)) ;
   
  is_right_VP = mkVP have_V2 (mkNP (mkN "raison")) ;
  is_wrong_VP = mkVP have_V2 (mkNP (mkN "tort")) ;

  n_units_AP card cn a = mkAP (lin AdA (mkUtt (mkNP <lin Card card : Card> (lin CN cn)))) (lin A a) ;
  
}