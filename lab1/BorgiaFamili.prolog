spouse(domingo_de_dorja,francina_llancol).
spouse(francina_llancol,domingo_de_dorja).
spouse(isabel_borgia,jofre_godofredo).
spouse(jofre_godofredo,isabel_borgia).
spouse(rodrigo_borgia,vanozza_dei_gattanei).
spouse(vanozza_dei_gattanei,rodrigo_borgia).
spouse(lucrecia_borgia_duquesa_de_modena_y_ferarra,juan_sforza_senor_de_pesaro).
spouse(juan_sforza_senor_de_pesaro,lucrecia_borgia_duquesa_de_modena_y_ferarra).
spouse(lucrecia_borgia_duquesa_de_modena_y_ferarra,alfonso_hijo_de_alfonso_II_rey_de_napoles).
spouse(juan_sforza_senor_de_pesaro,lucrecia_borgia_duquesa_de_modena_y_ferarra).
spouse(juan_bordia_2_duque_de_gandia,maria_henriquez_de_luna_prima_de_fernando_el_catolico).
spouse(maria_henriquez_de_luna_prima_de_fernando_el_catolico,juan_bordia_2_duque_de_gandia).
spouse(jofre_godofredo_principle_de_esquilache,sancha_hija_de_alfonso_II_rey_de_napoles).
spouse(sancha_hija_de_alfonso_II_rey_de_napoles,jofre_godofredo_principle_de_esquilache).
spouse(juan_borgia_3_degue_de_gandia,juana_nieta_de_fernando_el_catolico).
spouse(juana_nieta_de_fernando_el_catolico,juan_borgia_3_degue_de_gandia).

parent(domingo_de_dorja,isabel_borgia).
parent(domingo_de_dorja,alonso_de_borjia).
parent(domingo_de_dorja,catalina).
parent(domingo_de_dorja,juana).
parent(domingo_de_dorja,francisca).
parent(francina_llancol,isabel_borgia).
parent(francina_llancol,alonso_de_borjia).
parent(francina_llancol,catalina).
parent(francina_llancol,juana).
parent(francina_llancol,francisca).
parent(jofre_godofredo,rodrigo_borgia).
parent(jofre_godofredo,beartiz).
parent(jofre_godofredo,pedro_luis).
parent(jofre_godofredo,tecla).
parent(jofre_godofredo,juana).
parent(isabel_borgia,rodrigo_borgia).
parent(isabel_borgia,beartiz).
parent(isabel_borgia,pedro_luis).
parent(isabel_borgia,tecla).
parent(isabel_borgia,juana).
parent(catalina,cardenal_luis_juan_mila).
parent(catalina,pedro).
parent(juana_2,jofre).
parent(rodrigo_borgia,cesar_bordgia_duque_de_romana).
parent(rodrigo_borgia,lucrecia_borgia_duquesa_de_modena_y_ferarra).
parent(rodrigo_borgia,jofre_godofredo_principle_de_esquilache).
parent(rodrigo_borgia,juan_bordia_2_duque_de_gandia).
parent(vanozza_dei_gattanei,cesar_bordgia_duque_de_romana).
parent(vanozza_dei_gattanei,lucrecia_borgia_duquesa_de_modena_y_ferarra).
parent(vanozza_dei_gattanei,jofre_godofredo_principle_de_esquilache).
parent(vanozza_dei_gattanei,juan_bordia_2_duque_de_gandia).
parent(jofre,pedro_luis_borgia_llancol_cardenal).
parent(jofre,juan_borgia_llancol_cardenal).
parent(lucrecia_borgia_duquesa_de_modena_y_ferarra,anfonso_i_este_deque_de_modena).
parent(juan_sforza_senor_de_pesaro,anfonso_i_este_deque_de_modena).
parent(lucrecia_borgia_duquesa_de_modena_y_ferarra,rodrigo).
parent(juan_sforza_senor_de_pesaro,rodrigo).
parent(juan_bordia_2_duque_de_gandia,juan_borgia_3_degue_de_gandia).
parent(maria_henriquez_de_luna_prima_de_fernando_el_catolico,juan_borgia_3_degue_de_gandia).
parent(juan_borgia_3_degue_de_gandia,san_francisco_de_borja_4_deque_de_gandia).
parent(juana_nieta_de_fernando_el_catolico,san_francisco_de_borja_4_deque_de_gandia).

gender(domingo_de_dorja,male).
gender(francina_llancol,female).
gender(isabel_borgia,female).
gender(alonso_de_borjia,male).
gender(catalina,female).
gender(juana,female).
gender(francisca,female).
gender(rodrigo_borgia,male).
gender(beartiz,female).
gender(pedro_luis,male).
gender(tecla,male).
gender(juana_2,female).
gender(cardenal_luis_juan_mila,male).
gender(pedro,male).
gender(jofre,male).
gender(cesar_bordgia_duque_de_romana,male).
gender(lucrecia_borgia_duquesa_de_modena_y_ferarra,female).
gender(jofre_godofredo_principle_de_esquilache,male).
gender(juan_bordia_2_duque_de_gandia,male).
gender(pedro_luis_borgia_llancol_cardenal,male).
gender(juan_borgia_llancol_cardenal,male).
gender(anfonso_i_este_deque_de_modena,male).
gender(rodrigo,male).
gender(juan_borgia_3_degue_de_gandia,male).
gender(juan_borgia_3_degue_de_gandia,male).




mother(X,Y) :- parent(X,Y),gender(X,female).
father(X,Y) :- parent(X,Y),gender(X,male).
daughter(X,Y) :- parent(Y,X),gender(X,female).
son(X,Y) :- parent(Y,X),gender(X,male).
sister(X,Y) :- parent(Z,X),parent(Z,Y),gender(X,female).
brother(X,Y) :- parent(Z,X),parent(Z,Y),gender(X,male).
grand_mother(X,Y) :- parent(Z,Y),parent(X,Z),gender(X,female).
grand_father(X,Y) :- parent(Z,Y),parent(X,Z),gender(X,female).
wife(X,Y) :- spouse(X,Y),gender(X,female).
husband(X,Y) :- spouse(X,Y),gender(X,male).