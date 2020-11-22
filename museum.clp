;;; --------------------------------------------------
;;;                  	ontology
;;; --------------------------------------------------

; Sat Nov 21 13:54:17 CET 2020
; 
;+ (version "3.3.1")
;+ (build "Build 430")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot visita_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot grado
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot ha_pintado
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot pintado_por)
		(create-accessor read-write))
	(single-slot museum_Slot_16
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ano
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot pref_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(inverse-slot estilo_pref)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_de_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
;+		(inverse-slot estilo_cuadro)
		(create-accessor read-write))
	(multislot epoca_artista
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(inverse-slot pertenece_a)
		(create-accessor read-write))
	(multislot tematica_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot es_de_tematica)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_de_epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
;+		(inverse-slot epoca_cuadro)
		(create-accessor read-write))
	(multislot pref_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(inverse-slot tematica_pref)
		(create-accessor read-write))
	(multislot epoca_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(inverse-slot pref_epoca)
		(create-accessor read-write))
	(multislot pref_artist
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(inverse-slot artist_pref)
		(create-accessor read-write))
	(single-slot nombre_epoca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot pref_epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(inverse-slot epoca_pref)
		(create-accessor read-write))
	(multislot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(inverse-slot epoca_artista)
		(create-accessor read-write))
	(single-slot grado_conocimiento
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_estilo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot num_dias
		(type INTEGER)
		(range 1 7)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nombre_artista
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot epoca_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot es_de_epoca)
		(create-accessor read-write))
	(multislot estilo_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
;+		(inverse-slot es_de_estilo)
		(create-accessor read-write))
	(single-slot tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tematica_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(inverse-slot pref_tematica)
		(create-accessor read-write))
	(multislot artist_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(inverse-slot pref_artist)
		(create-accessor read-write))
	(single-slot pintado_por
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(cardinality 0 1)
;+		(inverse-slot ha_pintado)
		(create-accessor read-write))
	(multislot estilo_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(inverse-slot pref_estilo)
		(create-accessor read-write))
	(single-slot es_de_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(cardinality 0 1)
;+		(inverse-slot tematica_cuadro)
		(create-accessor read-write))
	(single-slot complejidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horas_dia
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Visita "información sobre la visita"
	(is-a USER)
	(role concrete)
	(single-slot num_dias
		(type INTEGER)
		(range 1 7)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot visita_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot grado_conocimiento
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horas_dia
		(type INTEGER)
		(range 1 8)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Cuadro "informacion de un cuadro"
	(is-a USER)
	(role concrete)
	(single-slot dimensiones
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_de_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot complejidad
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot pintado_por
		(type INSTANCE)
;+		(allowed-classes Artista)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_de_epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot relevancia
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot ano
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sala
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot es_de_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Artista "informacion de un artista"
	(is-a USER)
	(role concrete)
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot artist_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
		(create-accessor read-write))
	(multislot ha_pintado
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write))
	(multislot pertenece_a
		(type INSTANCE)
;+		(allowed-classes Epoca)
		(create-accessor read-write))
	(single-slot nombre_artista
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Preferencia
	(is-a USER)
	(role concrete)
	(multislot pref_artist
		(type INSTANCE)
;+		(allowed-classes Artista)
		(create-accessor read-write))
	(multislot pref_epoca
		(type INSTANCE)
;+		(allowed-classes Epoca)
		(create-accessor read-write))
	(multislot pref_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
		(create-accessor read-write))
	(multislot pref_estilo
		(type INSTANCE)
;+		(allowed-classes Estilo)
		(create-accessor read-write)))

(defclass Tematica
	(is-a USER)
	(role concrete)
	(multislot tematica_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
		(create-accessor read-write))
	(single-slot nombre_tematica
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot tematica_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write)))

(defclass Estilo
	(is-a USER)
	(role concrete)
	(multislot estilo_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write))
	(multislot estilo_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
		(create-accessor read-write))
	(single-slot nombre_estilo
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Epoca
	(is-a USER)
	(role concrete)
	(multislot epoca_cuadro
		(type INSTANCE)
;+		(allowed-classes Cuadro)
		(create-accessor read-write))
	(multislot epoca_artista
		(type INSTANCE)
;+		(allowed-classes Artista)
		(create-accessor read-write))
	(single-slot nombre_epoca
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot epoca_pref
		(type INSTANCE)
;+		(allowed-classes Preferencia)
		(create-accessor read-write)))


;;; --------------------------------------------------
;;;                  	instances
;;; --------------------------------------------------

; Sat Nov 21 13:54:17 CET 2020
; 
;+ (version "3.3.1")
;+ (build "Build 430")


(definstances instancias
	([museum_Instance_0] of  Cuadro

		(ano 1500)
		(dimensiones "220 x 389")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_5])
		(es_de_tematica [museum_Instance_1])
		(pintado_por [museum_Instance_3])
		(titulo "Triptico del Jardin de las Delicias"))

	([museum_Instance_1] of  Tematica

		(nombre_tematica "Alegoria")
		(tematica_cuadro
			[museum_Instance_0]
			[museum_Instance_61]
			[museum_Instance_74]))

	([museum_Instance_10] of  Estilo

		(estilo_cuadro
			[museum_Instance_6]
			[museum_Instance_74])
		(nombre_estilo "Simbolismo"))

	([museum_Instance_11] of  Cuadro

		(ano 1872)
		(dimensiones "48 x 63")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_13])
		(titulo "Amanecer"))

	([museum_Instance_12] of  Tematica

		(nombre_tematica "Paisajes")
		(tematica_cuadro
			[museum_Instance_11]
			[museum_Instance_22]
			[museum_Instance_32]
			[museum_Instance_48]
			[museum_Instance_54]
			[museum_Instance_58]
			[museum_Instance_70]))

	([museum_Instance_13] of  Artista

		(ha_pintado
			[museum_Instance_11]
			[museum_Instance_15])
		(nacionalidad "Frances")
		(nombre_artista "Claude Monet")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_14] of  Estilo

		(estilo_cuadro
			[museum_Instance_11]
			[museum_Instance_15]
			[museum_Instance_22]
			[museum_Instance_24]
			[museum_Instance_58]
			[museum_Instance_60])
		(nombre_estilo "Impresionismo"))

	([museum_Instance_15] of  Cuadro

		(ano 1875)
		(dimensiones "100 x 82")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_13])
		(titulo "Mujer con sombrilla"))

	([museum_Instance_16] of  Tematica

		(nombre_tematica "Retrato")
		(tematica_cuadro
			[museum_Instance_15]
			[museum_Instance_17]
			[museum_Instance_38]
			[museum_Instance_42]
			[museum_Instance_47]
			[museum_Instance_55]
			[museum_Instance_57]
			[museum_Instance_60]))

	([museum_Instance_17] of  Cuadro

		(ano 1507)
		(dimensiones "77 x 53")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_19])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_18])
		(titulo "La Gioconda"))

	([museum_Instance_18] of  Artista

		(ha_pintado
			[museum_Instance_17]
			[museum_Instance_20])
		(nacionalidad "Italiano")
		(nombre_artista "Leonardo Da Vinci")
		(pertenece_a [museum_Instance_2]))

	([museum_Instance_19] of  Estilo

		(estilo_cuadro
			[museum_Instance_17]
			[museum_Instance_20])
		(nombre_estilo "Realismo"))

	([museum_Instance_2] of  Epoca

		(epoca_artista
			[museum_Instance_3]
			[museum_Instance_18]
			[museum_Instance_71]
			[museum_Instance_52])
		(epoca_cuadro
			[museum_Instance_0]
			[museum_Instance_17]
			[museum_Instance_20]
			[museum_Instance_51]
			[museum_Instance_61]
			[museum_Instance_70])
		(nombre_epoca "Renacimiento"))

	([museum_Instance_20] of  Cuadro

		(ano 1495)
		(dimensiones "460 x 880")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_19])
		(es_de_tematica [museum_Instance_21])
		(pintado_por [museum_Instance_18])
		(titulo "La ultima cena"))

	([museum_Instance_21] of  Tematica

		(nombre_tematica "Interiores")
		(tematica_cuadro
			[museum_Instance_20]
			[museum_Instance_24]
			[museum_Instance_35]))

	([museum_Instance_22] of  Cuadro

		(ano 1889)
		(dimensiones "73 x 92")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_23])
		(titulo "La noche estrellada"))

	([museum_Instance_23] of  Artista

		(ha_pintado
			[museum_Instance_22]
			[museum_Instance_24])
		(nacionalidad "Neerlandes")
		(nombre_artista "Vincent Van Gogh")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_24] of  Cuadro

		(ano 1888)
		(dimensiones "72 x 90")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_21])
		(pintado_por [museum_Instance_23])
		(titulo "El dormitorio de Van Gogh en Arle"))

	([museum_Instance_25] of  Cuadro

		(ano 1819)
		(dimensiones "146 x 83")
		(es_de_epoca [museum_Instance_27])
		(es_de_estilo [museum_Instance_29])
		(es_de_tematica [museum_Instance_26])
		(pintado_por [museum_Instance_28])
		(titulo "Saturno devorando a su hijo"))

	([museum_Instance_26] of  Tematica

		(nombre_tematica "Mitologia")
		(tematica_cuadro
			[museum_Instance_25]
			[museum_Instance_51]))

	([museum_Instance_27] of  Epoca

		(epoca_artista
			[museum_Instance_28]
			[museum_Instance_33])
		(epoca_cuadro
			[museum_Instance_25]
			[museum_Instance_30]
			[museum_Instance_32])
		(nombre_epoca "Clasicismo"))

	([museum_Instance_28] of  Artista

		(ha_pintado
			[museum_Instance_25]
			[museum_Instance_30])
		(nacionalidad "Frances")
		(nombre_artista "Francisco de Goya")
		(pertenece_a
			[museum_Instance_27]
			[museum_Instance_36]))

	([museum_Instance_29] of  Estilo

		(estilo_cuadro
			[museum_Instance_25]
			[museum_Instance_30])
		(nombre_estilo "Romanticismo"))

	([museum_Instance_3] of  Artista

		(ha_pintado [museum_Instance_0])
		(nacionalidad "Neerlandes")
		(nombre_artista "El Bosco")
		(pertenece_a [museum_Instance_2]))

	([museum_Instance_30] of  Cuadro

		(ano 1800)
		(dimensiones "97 x 190")
		(es_de_epoca [museum_Instance_27])
		(es_de_estilo [museum_Instance_29])
		(es_de_tematica [museum_Instance_31])
		(pintado_por [museum_Instance_28])
		(titulo "La maja desnuda"))

	([museum_Instance_31] of  Tematica

		(nombre_tematica "Desnudos")
		(tematica_cuadro [museum_Instance_30]))

	([museum_Instance_32] of  Cuadro

		(ano 1753)
		(dimensiones "174 x 123")
		(es_de_epoca [museum_Instance_27])
		(es_de_estilo [museum_Instance_34])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_33])
		(titulo "The Bathing Pool"))

	([museum_Instance_33] of  Artista

		(ha_pintado
			[museum_Instance_32]
			[museum_Instance_35])
		(nacionalidad "Frances")
		(nombre_artista "Hubert Robert")
		(pertenece_a
			[museum_Instance_27]
			[museum_Instance_36]))

	([museum_Instance_34] of  Estilo

		(estilo_cuadro [museum_Instance_32])
		(nombre_estilo "Neoclasicismo"))

	([museum_Instance_35] of  Cuadro

		(ano 1706)
		(dimensiones "115 x 145")
		(es_de_epoca [museum_Instance_36])
		(es_de_estilo [museum_Instance_37])
		(es_de_tematica [museum_Instance_21])
		(pintado_por [museum_Instance_33])
		(titulo "The Grande Galerie"))

	([museum_Instance_36] of  Epoca

		(epoca_artista
			[museum_Instance_28]
			[museum_Instance_33])
		(epoca_cuadro [museum_Instance_35])
		(nombre_epoca "Rococo"))

	([museum_Instance_37] of  Estilo

		(estilo_cuadro [museum_Instance_35])
		(nombre_estilo "Rococo"))

	([museum_Instance_38] of  Cuadro

		(ano 1664)
		(dimensiones "46 x 40")
		(es_de_epoca [museum_Instance_39])
		(es_de_estilo [museum_Instance_41])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_40])
		(titulo "La joven de la perla"))

	([museum_Instance_39] of  Epoca

		(epoca_artista
			[museum_Instance_40]
			[museum_Instance_56])
		(epoca_cuadro
			[museum_Instance_38]
			[museum_Instance_42]
			[museum_Instance_55]
			[museum_Instance_57])
		(nombre_epoca "Barroco"))

	([museum_Instance_40] of  Artista

		(ha_pintado
			[museum_Instance_38]
			[museum_Instance_42])
		(nacionalidad "Neerlandes")
		(nombre_artista "Johannes Vermeer")
		(pertenece_a [museum_Instance_39]))

	([museum_Instance_41] of  Estilo

		(estilo_cuadro
			[museum_Instance_38]
			[museum_Instance_42]
			[museum_Instance_55]
			[museum_Instance_57])
		(nombre_estilo "Barroco"))

	([museum_Instance_42] of  Cuadro

		(ano 1658)
		(dimensiones "44 x 41")
		(es_de_epoca [museum_Instance_39])
		(es_de_estilo [museum_Instance_41])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_40])
		(titulo "La lechera"))

	([museum_Instance_43] of  Cuadro

		(ano 1937)
		(dimensiones "349 x 777")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_46])
		(es_de_tematica [museum_Instance_44])
		(pintado_por [museum_Instance_45])
		(titulo "Guernica"))

	([museum_Instance_44] of  Tematica

		(nombre_tematica "Guerra")
		(tematica_cuadro [museum_Instance_43]))

	([museum_Instance_45] of  Artista

		(ha_pintado
			[museum_Instance_43]
			[museum_Instance_47])
		(nacionalidad "Espanol")
		(nombre_artista "Pablo Picasso")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_46] of  Estilo

		(estilo_cuadro
			[museum_Instance_43]
			[museum_Instance_47])
		(nombre_estilo "Cubismo"))

	([museum_Instance_47] of  Cuadro

		(ano 1937)
		(dimensiones "60 x 49")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_46])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_45])
		(titulo "La mujer que llora"))

	([museum_Instance_48] of  Cuadro

		(ano 1931)
		(dimensiones "24 x 33")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_50])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_49])
		(titulo "La persistencia de la memoria"))

	([museum_Instance_49] of  Artista

		(ha_pintado
			[museum_Instance_48]
			[museum_Instance_54])
		(nacionalidad "Espanol")
		(nombre_artista "Salvador Dali")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_5] of  Estilo

		(estilo_cuadro
			[museum_Instance_0]
			[museum_Instance_70])
		(nombre_estilo "Escuela Flamenca"))

	([museum_Instance_50] of  Estilo

		(estilo_cuadro
			[museum_Instance_48]
			[museum_Instance_54]
			[museum_Instance_72])
		(nombre_estilo "Surrealismo"))

	([museum_Instance_51] of  Cuadro

		(ano 1482)
		(dimensiones "172 x 278")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_53])
		(es_de_tematica [museum_Instance_26])
		(pintado_por [museum_Instance_52])
		(titulo "El nacimiento de Venus"))

	([museum_Instance_52] of  Artista

		(ha_pintado
			[museum_Instance_51]
			[museum_Instance_61])
		(nacionalidad "Italiano")
		(nombre_artista "Sandro Botticelli")
		(pertenece_a [museum_Instance_2]))

	([museum_Instance_53] of  Estilo

		(estilo_cuadro
			[museum_Instance_51]
			[museum_Instance_61])
		(nombre_estilo "Escuela Florentina"))

	([museum_Instance_54] of  Cuadro

		(ano 1944)
		(dimensiones "49 x 60")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_50])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_49])
		(titulo "Los Elefantes"))

	([museum_Instance_55] of  Cuadro

		(ano 1642)
		(dimensiones "359 x 439")
		(es_de_epoca [museum_Instance_39])
		(es_de_estilo [museum_Instance_41])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_56])
		(titulo "La ronda de noche"))

	([museum_Instance_56] of  Artista

		(ha_pintado
			[museum_Instance_55]
			[museum_Instance_57])
		(nacionalidad "Neerlandes")
		(nombre_artista "Rembrandt")
		(pertenece_a [museum_Instance_39]))

	([museum_Instance_57] of  Cuadro

		(ano 1626)
		(dimensiones "25 x 32")
		(es_de_epoca [museum_Instance_39])
		(es_de_estilo [museum_Instance_41])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_56])
		(titulo "El pintor en su estudio"))

	([museum_Instance_58] of  Cuadro

		(ano 1902)
		(dimensiones "74 x 93")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_59])
		(titulo "Chateau Noir"))

	([museum_Instance_59] of  Artista

		(ha_pintado
			[museum_Instance_58]
			[museum_Instance_60])
		(nacionalidad "Frances")
		(nombre_artista "Paul Cezanne")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_6] of  Cuadro

		(ano 1907)
		(dimensiones "180 x 180")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_10])
		(es_de_tematica [museum_Instance_7])
		(pintado_por [museum_Instance_9])
		(titulo "El Beso"))

	([museum_Instance_60] of  Cuadro

		(ano 1880)
		(dimensiones "33 x 26")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_14])
		(es_de_tematica [museum_Instance_16])
		(pintado_por [museum_Instance_59])
		(titulo "Autoretrato"))

	([museum_Instance_61] of  Cuadro

		(ano 1477)
		(dimensiones "203 x 314")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_53])
		(es_de_tematica [museum_Instance_1])
		(pintado_por [museum_Instance_52])
		(titulo "Alegoria de la primavera"))

	([museum_Instance_62] of  Cuadro

		(ano 1911)
		(dimensiones "140 x 189")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_65])
		(es_de_tematica [museum_Instance_63])
		(pintado_por [museum_Instance_64])
		(titulo "Vaca Amarilla"))

	([museum_Instance_63] of  Tematica

		(nombre_tematica "Animales")
		(tematica_cuadro
			[museum_Instance_62]
			[museum_Instance_69]))

	([museum_Instance_64] of  Artista

		(ha_pintado
			[museum_Instance_62]
			[museum_Instance_69])
		(nacionalidad "Aleman")
		(nombre_artista "Franz Marc")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_65] of  Estilo

		(estilo_cuadro
			[museum_Instance_62]
			[museum_Instance_66]
			[museum_Instance_69])
		(nombre_estilo "Expresionismo"))

	([museum_Instance_66] of  Cuadro

		(ano 1913)
		(dimensiones "200 x 300")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_65])
		(es_de_tematica [museum_Instance_67])
		(pintado_por [museum_Instance_68])
		(titulo "Composicion VII"))

	([museum_Instance_67] of  Tematica

		(nombre_tematica "Abstracto")
		(tematica_cuadro
			[museum_Instance_66]
			[museum_Instance_72]))

	([museum_Instance_68] of  Artista

		(ha_pintado [museum_Instance_66])
		(nacionalidad "Ruso")
		(nombre_artista "Vasili Kandinski")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_69] of  Cuadro

		(ano 1913)
		(dimensiones "200 x 130")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_65])
		(es_de_tematica [museum_Instance_63])
		(pintado_por [museum_Instance_64])
		(titulo "La torre de los caballos azules"))

	([museum_Instance_7] of  Tematica

		(nombre_tematica "Amor")
		(tematica_cuadro [museum_Instance_6]))

	([museum_Instance_70] of  Cuadro

		(ano 1565)
		(dimensiones "117 x 162")
		(es_de_epoca [museum_Instance_2])
		(es_de_estilo [museum_Instance_5])
		(es_de_tematica [museum_Instance_12])
		(pintado_por [museum_Instance_71])
		(titulo "Los cazadores en la nieve"))

	([museum_Instance_71] of  Artista

		(ha_pintado [museum_Instance_70])
		(nacionalidad "Belga")
		(nombre_artista "Pieter Brueghel")
		(pertenece_a [museum_Instance_2]))

	([museum_Instance_72] of  Cuadro

		(ano 1923)
		(dimensiones "65 x 100")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_50])
		(es_de_tematica [museum_Instance_67])
		(pintado_por [museum_Instance_73])
		(titulo "El cazador"))

	([museum_Instance_73] of  Artista

		(ha_pintado [museum_Instance_72])
		(nacionalidad "Espanol")
		(nombre_artista "Joan Miro")
		(pertenece_a [museum_Instance_8]))

	([museum_Instance_74] of  Cuadro

		(ano 1908)
		(dimensiones "178 x 178")
		(es_de_epoca [museum_Instance_8])
		(es_de_estilo [museum_Instance_10])
		(es_de_tematica [museum_Instance_1])
		(pintado_por [museum_Instance_9])
		(titulo "Tod und Leben"))

	([museum_Instance_8] of  Epoca

		(epoca_artista
			[museum_Instance_13]
			[museum_Instance_64]
			[museum_Instance_9]
			[museum_Instance_73]
			[museum_Instance_45]
			[museum_Instance_59]
			[museum_Instance_49]
			[museum_Instance_68]
			[museum_Instance_23])
		(epoca_cuadro
			[museum_Instance_6]
			[museum_Instance_11]
			[museum_Instance_15]
			[museum_Instance_22]
			[museum_Instance_24]
			[museum_Instance_43]
			[museum_Instance_47]
			[museum_Instance_48]
			[museum_Instance_54]
			[museum_Instance_58]
			[museum_Instance_60]
			[museum_Instance_62]
			[museum_Instance_66]
			[museum_Instance_69]
			[museum_Instance_72]
			[museum_Instance_74])
		(nombre_epoca "Modernismo"))

	([museum_Instance_9] of  Artista

		(ha_pintado
			[museum_Instance_6]
			[museum_Instance_74])
		(nacionalidad "Austriaco")
		(nombre_artista "Gustav Klimt")
		(pertenece_a [museum_Instance_8]))
)



;;; --------------------------------------------------
;;;                  modulo MAIN
;;; --------------------------------------------------
(defmodule MAIN (export ?ALL))

;;; regla inicial en el modulo MAIN
(defrule MAIN::init
	(declare (salience 10)) ; pondemos prioridad 10 para que sea la primera regla que se ejecute
	=>
	(printout t crlf crlf)
	(printout t "Bienvenido al Museo!" crlf "Responde las siguientes preguntas para conseguir una visita personalizada!")
	(printout t crlf crlf)
	(focus recoger-datos)
)

;;; templates del modulo
(deftemplate MAIN::grupo
	(slot tipo (type STRING) (default "tipo"))
	(slot num_dias (type INTEGER) (default -1))
	(slot horas_dia (type INTEGER) (default -1))
	(slot grado_conocimiento (type INTEGER) (default -1))
)

(deftemplate MAIN::preferencias-grupo
	(multislot pref_artistas (type INSTANCE) )
	(multislot pref_tematicas (type INSTANCE) )
	(multislot pref_epocas (type INSTANCE) )
	(multislot pref_estilos (type INSTANCE) )
)

(deftemplate MAIN::solucion
	(multislot cuadros (type INSTANCE))
)

;;; --------------------------------------------------
;;;                  functions
;;; --------------------------------------------------

; funcion para preguntas que reciben como respuesta numeros. extraida de FAQ-CLIPS
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "¿%s? [%d, %d]" ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

; funcion para preguntas numericas con multiple solucion
(deffunction pregunta-numerica-mult (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?list_resp (readline))
	(bind ?respuesta (str-explode ?list_resp))
	?respuesta
)

; funcion para preguntas con diferentes opciones
(deffunction MAIN::pregunta-opciones (?pregunta $?opciones)
	(printout t ?pregunta crlf)
	(bind ?i 1)
	(progn$ (?op ?opciones)
		(format t "%d - %s" ?i ?op)
		(printout t crlf)
		(bind ?i (+ ?i 1))
	)
	(bind ?respuesta (pregunta-numerica "Escoge una opcion:" 1 (length$ ?opciones)))
	?respuesta
)

; funcion para preguntas de tipo si/no
(deffunction MAIN::pregunta-binaria (?pregunta)
	(bind ?respuesta (pregunta-opciones ?pregunta si no s n))
	(if (or (eq ?respuesta si) (eq ?respuesta s))
		then TRUE
		else FALSE
	)
)

; funcion para preguntas con diferentes opciones con respuesta multiple
(deffunction MAIN::pregunta-opciones-mult (?pregunta $?opciones)
	(printout t ?pregunta crlf)
	(bind ?i 1)
	(progn$ (?op ?opciones)
		(format t "%d - %s" ?i ?op)
		(printout t crlf)
		(bind ?i (+ ?i 1))
	)
	(bind ?respuesta (pregunta-numerica-mult "Escribe las respuestas separadas por un espacio:" 1 (length$ ?opciones)))
	?respuesta
)

;;; --------------------------------------------------
;;;                 modulo recoger-datos
;;; --------------------------------------------------

;;; modulo para recoger datos del grupo de visita. exportamos todo
(defmodule recoger-datos (import MAIN ?ALL) (export ?ALL))

;;; templates del modulo

;;; reglas del modulo
; primera pregunta, que tipo de grupo es
(defrule recoger-datos::pregunta-grupo
	(not (grupo)) 
	=>
	(bind ?i_resp (pregunta-opciones "¿Que tipo de grupo sois?" Individual Familia Grupo-Pequeno Grupo-Grande))
	; asignar el tipo correcto a la visita
	(switch ?i_resp
		(case 1 then (bind ?respuesta "Individual"))
		(case 2 then (bind ?respuesta "Familia"))
		(case 3 then (bind ?respuesta "Grupo Pequeno"))
		(case 4 then (bind ?respuesta "Grupo Grande"))
		(default (printout t "error" crlf))
	)
	(printout t crlf)
	(assert (grupo (tipo ?respuesta)) )
)

; preguntar dias de visita
(defrule recoger-datos::pregunta-dias
	?grupo <- (grupo (num_dias ?num_dias))
	(test (< ?num_dias 0))
	=>
	(bind ?resp (pregunta-numerica "¿Cuantos dias visitareis el museo?" 1 7))
	; modificar el numero de dias del hecho
	(printout t crlf)
	(modify ?grupo (num_dias ?resp))
)

; preguntar horas de visita cada dia
(defrule recoger-datos::pregunta-horas
	?grupo <- (grupo (horas_dia ?horas))
	(test (< ?horas 0))
	=>
	(bind ?resp (pregunta-numerica "¿Cuantas horas al dia visitareis el mueso?" 1 8))
	; modificar el numero de dias del hecho
	(printout t crlf)
	(modify ?grupo (horas_dia ?resp))
)

(defrule recoger-datos::pregunta-preferencias
	?g <- (grupo (tipo ?t) (num_dias ?nd) (horas_dia ?hd) )
	(test (not(= (str-compare ?t "tipo") 0)))
	(test (> ?nd 0))
	(test (> ?hd 0))
	=>
	(focus recoger-preferencias)
)


;;; --------------------------------------------------
;;;                 modulo recoger-preferencias
;;; --------------------------------------------------
(defmodule recoger-preferencias (import MAIN ?ALL) (import recoger-datos ?ALL) (export ?ALL))

(defrule recoger-preferencias::preguntar-artistas
	(not (preferencias-grupo))
	=>
	(bind ?lista_inst (find-all-instances ((?artista Artista)) TRUE) )
	; obtener los nombres para mostrar al usuario
	(bind ?lista (create$ )) ;inicializar lista vacia
	(bind ?i 1)
	(progn$ (?l ?lista_inst)
		(bind ?nom_art (send ?l get-nombre_artista))
		(bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?nom_art)) ;anadir los nombres
	)
	(bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) "Ninguno")) ;opcion de ninguno
	
	(bind ?i_resp (pregunta-opciones-mult "Escoge tus artistas favoritos: " ?lista))
	; asignar las instancias escogidas
	(bind ?respuestas (create$ ))
	(progn$ (?r ?i_resp) 
		(bind ?inst_artista (nth$ ?r ?lista_inst))
		(bind ?respuestas (insert$ ?respuestas (+ (length$ ?respuestas) 1) ?inst_artista))
	)
	(assert (preferencias-grupo (pref_artistas ?respuestas)) )
)



