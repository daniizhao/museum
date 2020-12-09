
; funcion para determinar el tiempo de visita de cada cuadro
(deffunction MAIN::determina-tiempo-por-cuadro (?cuadro)
	?grupo <- (grupo (tipo ?tip) (grado_conocimiento ?gc))
	;(test (< ?gc 0))
	?c <-(object (is-a Cuadro) (complejidad ?cmp) (titulo ?cuadro))
	(bind ?coneix 1)
	(if (not (eq ?gc 1))
		then (bind ?coneix (+ ?coneix (/ ?gc 10)))
	)
	(switch ?tip
		(case "Individual" then (switch ?cmp
						(case (and (> ?cmp 0) (or (eq ?cmp 0.01) (> 0.01 ?cmp))) then (bind ?temps 5))
						(case (and (> ?cmp 0.01) (or (eq ?cmp 0.1) (> 0.1 ?cmp))) then (bind ?temps 7))
						(case (and (> ?cmp 0.1) (or (eq ?cmp 0.5) (> 0.5 ?cmp))) then (bind ?temps 10))
						(case (and (> ?cmp 0.5) (or (eq ?cmp 1) (> 1 ?cmp))) then (bind ?temps 20))
					))
		(case "Familia" then (switch ?cmp
						(case (and (> ?cmp 0) (or (eq ?cmp 0.01) (> 0.01 ?cmp))) then (bind ?temps 7))
						(case (and (> ?cmp 0.01) (or (eq ?cmp 0.1) (> 0.1 ?cmp))) then (bind ?temps 9))
						(case (and (> ?cmp 0.1) (or (eq ?cmp 0.5) (> 0.5 ?cmp))) then (bind ?temps 15))
						(case (and (> ?cmp 0.5) (or (eq ?cmp 1) (> 1 ?cmp))) then (bind ?temps 25))
					))
		(case "Grupo Pequeno" then (switch ?cmp
						(case (and (> ?cmp 0) (or (eq ?cmp 0.01) (> 0.01 ?cmp))) then (bind ?temps 12))
						(case (and (> ?cmp 0.01) (or (eq ?cmp 0.1) (> 0.1 ?cmp))) then (bind ?temps 15))
						(case (and (> ?cmp 0.1) (or (eq ?cmp 0.5) (> 0.5 ?cmp))) then (bind ?temps 20))
						(case (and (> ?cmp 0.5) (or (eq ?cmp 1) (> 1 ?cmp))) then (bind ?temps 30))
					))
		(case "Grupo Grande" then (switch ?cmp
						(case (and (> ?cmp 0) (or (eq ?cmp 0.01) (> 0.01 ?cmp))) then (bind ?temps 20))
						(case (and (> ?cmp 0.01) (or (eq ?cmp 0.1) (> 0.1 ?cmp))) then (bind ?temps 25))
						(case (and (> ?cmp 0.1) (or (eq ?cmp 0.5) (> 0.5 ?cmp))) then (bind ?temps 30))
						(case (and (> ?cmp 0.5) (or (eq ?cmp 1) (> 1 ?cmp))) then (bind ?temps 40))
					))
		(default (printout t "error" crlf))
	)
	(return (* ?temps ?coneix))
)