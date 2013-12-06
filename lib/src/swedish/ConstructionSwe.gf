--# -path=.:../abstract

concrete ConstructionSwe of Construction = CatSwe ** 
  open SyntaxSwe, ParadigmsSwe, (L = LexiconSwe), (E = ExtraSwe), (G = GrammarSwe), Prelude in {


lin
  hungry_VP = mkVP (mkA "hungrig") ;
  thirsty_VP = mkVP (mkA "törstig") ;
  has_age_VP card = mkVP (lin AP (mkAP (lin AdA (mkUtt (mkNP <lin Card card : Card> L.year_N))) L.old_A)) ;

  have_name_Cl x y = mkCl (mkNP (E.GenNP x) L.name_N) (lin NP y) ;
  married_Cl x y = mkCl (lin NP x) L.married_A2 (lin NP y) | mkCl (mkNP and_Conj (lin NP x) (lin NP y)) (mkA "gift") ;

  what_name_QCl x = mkQCl (mkIComp whatSg_IP) (mkNP (E.GenNP x) L.name_N) ;
  how_old_QCl x = mkQCl (E.ICompAP (mkAP L.old_A)) (lin NP x) ;
  how_far_QCl x = mkQCl (E.IAdvAdv L.far_Adv) (mkCl (mkVP (SyntaxSwe.mkAdv to_Prep (lin NP x)))) ;

-- some more things
  weather_adjCl ap = mkCl (mkVP (lin AP ap)) ;
   
  is_right_VP = mkVP have_V2 (mkNP (ParadigmsSwe.mkN "rätt")) ;
  is_wrong_VP = mkVP have_V2 (mkNP (ParadigmsSwe.mkN "fel")) ;

  n_units_AP card cn a = mkAP (lin AdA (mkUtt (mkNP <lin Card card : Card> (lin CN cn)))) (lin A a) ;
  
}