
;;; ---------------------------------------------------------
;;; ontologiaIA.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologiaIA.ttl
;;; :Date 02/05/2024 10:12:21

(defclass Exercici
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Nom
        (type SYMBOL)
        (create-accessor read-write))
    (slot Dificultat
        (type SYMBOL)
        (create-accessor read-write))
    (slot DuracioMax
        (type INTEGER)
        (create-accessor read-write))
    (slot DuracioMin
        (type INTEGER)
        (create-accessor read-write))
    (multislot GrupsMusculars
        (type SYMBOL) ; Corrected syntax
        (create-accessor read-write))
    (slot IndicatGentGran
        (type SYMBOL)
        (create-accessor read-write))
    (slot KcalMinuteMax
        (type INTEGER)
        (create-accessor read-write))
    (slot KcalMinuteMin
        (type INTEGER)
        (create-accessor read-write))
    (slot RepsMax
        (type INTEGER)
        (create-accessor read-write))
    (slot RepsMin
        (type INTEGER)
        (create-accessor read-write))
    (slot EsValid
        (type SYMBOL)
        (create-accessor read-write))
    (multislot ObjectiusComplerts
        (type SYMBOL)
        (create-accessor read-write))
)

;;; Define other classes after Exercici
(defclass Cardio
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flex
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Forca
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Salut
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Dieta
    (is-a Salut)
    (role concrete)
    (pattern-match reactive)
    (slot IngestaCalorica
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Problemes_articulars
    (is-a Salut)
    (role concrete)
    (pattern-match reactive)
)

(defclass Problemes_musculars
    (is-a Salut)
    (role concrete)
    (pattern-match reactive)
    (slot GrupsMusculars
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Objectius
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Objectiu de temps diari d'entrenement en minuts
    (slot TempsDiari
        (type INTEGER)
        (create-accessor read-write))
)

(defclass BaixarPes
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass EnForma
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Equilibri
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flexibilitat
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Manteniment
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Musculacio
    (is-a Objectius)
    (role concrete)
    (pattern-match reactive)
)

(defclass Entrenament
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Busca
        (type INSTANCE)
        (create-accessor read-write))
    (multislot FormatPer
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Persona "Classe per representar les persones/usuaris"
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Solicita
        (type INSTANCE)
        (create-accessor read-write))
    (slot Te
        (type INSTANCE)
        (create-accessor read-write))
    (slot ActivitatFisica
        (type SYMBOL)
        (create-accessor read-write))
    (slot Altura
        (type FLOAT)
        (create-accessor read-write))
    (slot Edat
        (type INTEGER)
        (create-accessor read-write))
    (slot IMC
        (type FLOAT)
        (create-accessor read-write))
    (slot Pes
        (type FLOAT)
        (create-accessor read-write))
    (slot PulsacionsXMin
        (type INTEGER)
        (create-accessor read-write))
    (slot SensacioCansament
        (type SYMBOL)
        (create-accessor read-write))
    (multislot TibantorMuscular
        (type SYMBOL)
        (create-accessor read-write))
    (slot PressioSangMax
        (type FLOAT)
        (create-accessor read-write))
    (slot PressioSangMin
        (type FLOAT)
        (create-accessor read-write))
)

musculacio posar_en_forma baixar_pes equilibrat flexibilitat manteniment
; un exercici no pot ser equilibrat per si sol, equilibrat vol dir que un conjunt d'exercicis utilitzen diferents grups musculars
(definstances my-exercises
    (caminar of Cardio
        (Dificultat easy)
        (DuracioMax 30)
        (DuracioMin 10)
        (GrupsMusculars cames)
        (KcalMinuteMax 6)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes))

    (correr of Cardio
        (Dificultat easy)
        (DuracioMax 30)
        (DuracioMin 10)
        (GrupsMusculars cames)
        (KcalMinuteMax 10)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes))

    (correr-intens of Cardio
        (Dificultat moderate)
        (DuracioMax 30)
        (DuracioMin 10)
        (GrupsMusculars cames)
        (KcalMinuteMax 15)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes posar_en_forma))

    (sprint of Cardio
        (Dificultat moderate)
        (DuracioMax 5)
        (DuracioMin 2)
        (GrupsMusculars cames)
        (KcalMinuteMax 19)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts baixar_pes posar_en_forma musculacio))

    (bicicleta of Cardio
        (Dificultat easy)
        (DuracioMax 30)
        (DuracioMin 10)
        (GrupsMusculars cames)
        (KcalMinuteMax 8)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes))

    (bicicleta-intensa of Cardio
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 16)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes posar_en_forma musculacio))

    (rem of Cardio
        (Dificultat easy)
        (DuracioMax 20)
        (DuracioMin 10)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes posar_en_forma))

    (rem-intens of Cardio
        (Dificultat moderate)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 15)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes posar_en_forma musculacio))

    (stepper of Cardio
        (Dificultat easy)
        (DuracioMax 20)
        (DuracioMin 10)
        (GrupsMusculars cames)
        (KcalMinuteMax 12)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes))

    (eliptica of Cardio
        (Dificultat easy)
        (DuracioMax 30)
        (DuracioMin 10)
        (GrupsMusculars bracos cames)
        (KcalMinuteMax 11)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts manteniment baixar_pes))

    (press-banca of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (sentadilles-amb-pes of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 10)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (flexions of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 5)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (rem-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (curl-biceps of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (press-militar of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (extensio-triceps of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (aixecament-lateral of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 6)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (lunges-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 9)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (pes-mort of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 11)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (abdominals of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars abdominals)
        (KcalMinuteMax 6)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment))

    (burpees of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames bracos pit abd)
        (KcalMinuteMax 15)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment))

    (planxa of Forca
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd bracos)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment))

    (dominades of Forca
        (Dificultat hard)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos esquena abd)
        (KcalMinuteMax 10)
        (RepsMax 20)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma  manteniment))

    (estirament1 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament2 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament3 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament4 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament5 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))      
      
    (estirament6 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament7 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament8 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))

    (estirament9 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars esquena bracos cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat manteniment))
)



(deffunction member (?item $?list)
    (if (lexemep ?item)
        then (bind ?item (lowcase ?item)))
    (return (member$ ?item ?list)))


(deffunction ask-question (?question $?allowed-values) 
    (printout t ?question)
    (bind ?answer (read))
    (if (lexemep ?answer)
        then (bind ?answer (lowcase ?answer))) 
    (while (not (member ?answer $?allowed-values)) do
        (printout t ?question)
        (printout t $?allowed-values)
        (bind ?answer (read))
        (if (lexemep ?answer)
            then (bind ?answer (lowcase ?answer))))
?answer)


(deffunction yes-or-no-p(?question)
    (bind ?answer (ask-question ?question yes no y n))
    (if (or(eq ?answer yes) (eq ?answer y))
         then TRUE
         else FALSE))

(deffunction ask-integer-question (?question)
    (printout t ?question)
    (bind ?answer (read))
    (while (not (integerp ?answer)) do
        (printout t "Invalid answer. Please enter a valid integer." crlf)
        (printout t ?question)
        (bind ?answer (read)))
    ?answer)

(defglobal ?*persona* = (make-instance [you] of Persona))

(defrule determina-edat
   =>
   (bind ?answer (ask-integer-question "Please enter your age: (years)"))
   (send ?*persona* put-Edat ?answer)
   (if (> ?answer 65) then 
       (assert (personaEsGran))))

(defrule determina-altura
   =>
   (bind ?answer (ask-integer-question "Please enter your height: (cm)"))
   (send ?*persona* put-Altura ?answer)
   (assert (alturaAssignada)))

(defrule determina-pes
   =>
   (bind ?answer (ask-integer-question "Please enter your weight: (Kg)"))
   (send ?*persona* put-Pes ?answer)
   (assert (pesAssignat)))


(defrule calcula-IMC
   ?p <- (object (is-a Persona)
           (name ?name)
           (Pes ?pes&:(<> ?pes 0))
           (Altura ?altura&:(<> ?altura 0)))
   (alturaAssignada)
   (pesAssignat)
   =>
   (bind ?imc (/ ?pes (* (/ ?altura 100) (/ ?altura 100))))
   (send ?p put-IMC ?imc)
   (if (> ?imc 30) then (assert(personaTeObesitat)))
   (if (and(< ?imc 30) (> ?imc 25)) then (assert(personaTeSobrePes)))
   (if (< ?imc 20) then (assert(personaTeInfraPes)))
   (printout t "The IMC of " ?name " is " ?imc crlf))
    
(defrule determina-aptitud-ejercicio-edad
   ?e <- (object (is-a Exercici)
           (Dificultat ?dificultad)
           (Nom ?exerciseName))
   (personaEsGran)
   (test (eq ?dificultad hard))
   =>
   (send ?e put-EsValid no))

(defrule esquena-dolor-3
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal esq 3)
   (test (or (eq ?dif hard) (eq ?dif moderate) (eq ?dif easy)) )
   (test (member$ esquena $?grup))
   =>
   (send ?e put-EsValid no))
(defrule esquena-dolor-2
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal esq 2)
   (test (or (eq ?dif hard) (eq ?dif moderate)) )
   (test (member$ esquena $?grup))
   =>
   (send ?e put-EsValid no))
(defrule esquena-dolor-1
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal esq 1)
   (test (eq ?dif hard))
   (test (member$ esquena $?grup))
   =>
   (send ?e put-EsValid no))

(defrule bracos-dolor-3
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal bra 3)
   (test (or (eq ?dif hard) (eq ?dif moderate) (eq ?dif easy)) )
   (test (member$ bracos $?grup))
   =>
   (send ?e put-EsValid no))
(defrule bracos-dolor-2
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal bra 2)
   (test (or (eq ?dif hard) (eq ?dif moderate)) )
   (test (member$ bracos $?grup))
   =>
   (send ?e put-EsValid no))
(defrule bracos-dolor-1
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal bra 1)
   (test (eq ?dif hard))
   (test (member$ bracos $?grup))
   =>
   (send ?e put-EsValid no))

(defrule cames-dolor-3
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal cam 3)
   (test (or (eq ?dif hard) (eq ?dif moderate) (eq ?dif easy)) )
   (test (member$ cames $?grup))
   =>
   (send ?e put-EsValid no))
(defrule cames-dolor-2
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal cam 2)
   (test (or (eq ?dif hard) (eq ?dif moderate)) )
   (test (member$ cames $?grup))
   =>
   (send ?e put-EsValid no))
(defrule cames-dolor-1
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal cam 1)
   (test (eq ?dif hard))
   (test (member$ cames $?grup))
   =>
   (send ?e put-EsValid no))

(defrule pit-dolor-3
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal pit 3)
   (test (or (eq ?dif hard) (eq ?dif moderate) (eq ?dif easy)) )
   (test (member$ pit $?grup))
   =>
   (send ?e put-EsValid no))
(defrule pit-dolor-2
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal pit 2)
   (test (or (eq ?dif hard) (eq ?dif moderate)) )
   (test (member$ pit $?grup))
   =>
   (send ?e put-EsValid no))
(defrule pit-dolor-1
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (name ?exerciseName))
   (fa-mal pit 1)
   (test (eq ?dif hard))
   (test (member$ pit $?grup))
   =>
   (send ?e put-EsValid no))

(defrule abdominals-dolor-3
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal abd 3)
   (test (or (eq ?dif hard) (eq ?dif moderate) (eq ?dif easy)) )
   (test (member$ abdominals $?grup))
   =>
   (send ?e put-EsValid no))
(defrule abdominals-dolor-2
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal abd 2)
   (test (or (eq ?dif hard) (eq ?dif moderate)) )
   (test (member$ abdominals $?grup))
   =>
   (send ?e put-EsValid no))
(defrule abdominals-dolor-1
   ?e <-(object (is-a Exercici)
           (Dificultat ?dif)
           (GrupsMusculars $?grup)
           (Nom ?exerciseName))
   (fa-mal abd 1)
   (test (eq ?dif hard))
   (test (member$ abdominals $?grup))
   =>
   (send ?e put-EsValid no))


;  (defrule imprimir-ejercicios-aptos
;     (declare (salience -10))
;     (object (is-a Exercici)
;             (name ?exerciseName))
;     (not (nopotfer ?exerciseName))
;     =>
;     (printout t "El ejercicio " ?exerciseName " es apto." crlf))

(defrule mal-esquena
   =>
   (bind ?answer (ask-question "Quant de mal et fa l'esquena del 0 (minim) al 3 (maxim): " 0 1 2 3))
   (assert (fa-mal esq ?answer)))

(defrule mal-bracos
   =>
   (bind ?answer (ask-question "Quant de mal et fan els bracos del 0 (minim) al 3 (maxim): " 0 1 2 3))
   (assert (fa-mal bra ?answer)))

(defrule mal-cames
   =>
   (bind ?answer (ask-question "Quant de mal et fan els cames del 0 (minim) al 3 (maxim): " 0 1 2 3))
   (assert (fa-mal cam ?answer)))

(defrule mal-pit
   =>
   (bind ?answer (ask-question "Quant de mal et fan el pit del 0 (minim) al 3 (maxim): " 0 1 2 3))
   (assert (fa-mal pit ?answer)))

(defrule mal-abs
   =>
   (bind ?answer (ask-question "Quant de mal et fan els abdominals del 0 (minim) al 3 (maxim): " 0 1 2 3))
   (assert (fa-mal abd ?answer)))

(defrule dir-objectiu
   =>
   (bind ?answer (ask-question "Quin objectiu tens per l'entrenament (musculacio, posar_en_forma, baixar_pes, equilibrat, flexibilitat o manteniment):" musculacio posar_en_forma baixar_pes equilibrat flexibilitat manteniment))
   (if (eq ?answer musculacio) 
	then (make-instance [Objectiu] of Musculacio))
   (if (eq ?answer posar_en_forma) 
	then (make-instance [Objectiu] of EnForma))
   (if (eq ?answer baixar_pes) 
	then (make-instance [Objectiu] of BaixarPes))
   (if (eq ?answer equilibrat) 
	then (make-instance [Objectiu] of Equilibri))
   (if (eq ?answer flexibilitat) 
	then (make-instance [Objectiu] of Flexibilitat))
   (if (eq ?answer manteniment) 
	then (make-instance [Objectiu] of Manteniment))
)

(defrule definir-temps-diari
   ?obj <- (object (is-a Objectius)
                (TempsDiari ?temps&:(eq ?temps 0)))
    =>
    (bind ?answer (ask-integer-question "Defineix el número de minuts que tens disponibles al dia: "))
    (printout t ?answer crlf)
    (send ?obj put-TempsDiari ?answer)
)

(deffunction obtener-ejercicio-aleatorio ()
   ;; Encuentra todas las instancias de la clase Exercici
   (bind ?ejercicios (find-all-instances ((?e Exercici)) (eq (send ?e get-EsValid) si)))
   ;; Verifica si hay instancias disponibles
      ;; Selecciona un índice aleatorio
    (bind ?index (random 0 (length$ ?ejercicios)))
      ;; Obtiene la instancia de Exercici en el índice aleatorio
    (bind ?ejercicio (nth$ (+ ?index 1) ?ejercicios)) ;; nth$ es 1-indexed
    (return ?ejercicio)

)

(deffunction calcular-duracion-aleatoria (?ejercicio)
    (bind ?mi (send ?ejercicio get-DuracioMin))
    (bind ?ma (send ?ejercicio get-DuracioMax))
    (bind ?duracion (random ?mi ?ma))
    (return ?duracion)
)



(defrule generar-ejercicios-lunes
    ?obj <- (object (is-a Objectiu) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (diaNoGenerat ?dia)
    =>
    (printout t "Entrenament Dilluns: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  ) do
        
        (if (not (member$ ?ejercicio $?ejercicios-seleccionados)) then
            (bind ?duracion (calcular-duracion-aleatoria ?ejercicio))
            (if (<= ?duracion ?tiempo-disponible) then
                (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
                (bind $?duraciones (create$ $?duraciones ?duracion))
                (bind ?duracionTotal (+ ?duracionTotal ?duracion))
                (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
                (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts" crlf)
            )
        )
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )
    (assert (dillunsGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)

)

(defrule generar-ejercicios-martes
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dillunsGenerat) (?dia)
    =>
    (printout t "Entrenament Dimarts: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil)) ) do
        
        (if (not (member$ ?ejercicio $?ejercicios-seleccionados)) then
            (bind ?duracion (calcular-duracion-aleatoria ?ejercicio))
            (if (<= ?duracion ?tiempo-disponible) then
                (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
                (bind $?duraciones (create$ $?duraciones ?duracion))
                (bind $?duracionTotal (+ ?duracionTotal ?duracion))
                (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
                (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts" crlf)
            )
        )
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
        ;(bind ?ejercicioNombre (send ?ejercicio get-Nom))
    )
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)

)





