
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
    (slot Nom
        (type SYMBOL)
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

;musculacio posar_en_forma baixar_pes equilibrat flexibilitat manteniment
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

    (press-banca-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (press-banca-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (press-banca-pesat of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (sentadilles-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 10)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (sentadilles-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 9)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (sentadilles-amb-pes-pesat of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 10)
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (flexions-amb-genolls of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 5)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (flexions of Forca
        (Dificultat moderat)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 6)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (flexions-amb-pes of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (rem-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (rem-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (rem-amb-pes-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 10)
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (curl-biceps-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (curl-biceps-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (curl-biceps-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 6)
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (press-militar-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (press-militar-moderat of Forca
        (Dificultat moderat)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (press-militar-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 9)
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (extensio-triceps-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (extensio-triceps-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (extensio-triceps-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 7)
        (RepsMax 10)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (aixecament-lateral-lleuger of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 20)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (aixecament-lateral-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 6)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (aixecament-lateral-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (lunges-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
        
    (lunges-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 9)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (lunges-amb-pes-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 12)
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (pes-mort-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (pes-mort-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 9)
        (RepsMax 20)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (pes-mort-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 11)
        (RepsMax 10)
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

    (abdominals-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars abdominals)
        (KcalMinuteMax 6)
        (RepsMax 50)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma manteniment))

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

    (planxa-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd bracos)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma musculacio manteniment))

    (dominades-assistides of Forca
        (Dificultat moderate)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena abd)
        (KcalMinuteMax 8)
        (RepsMax 20)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma  manteniment))

    (dominades of Forca
        (Dificultat hard)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos esquena abd)
        (KcalMinuteMax 10)
        (RepsMax 20)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

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
    (bind ?answer (ask-question ?question yes no y n si ))
    (if (or(eq ?answer yes) (eq ?answer y) (eq ?answer si))
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

(defrule determina-cansament
   =>
   (if (yes-or-no-p "Despres d'un minut de carrera sostinguda, tens sensació de cansament/mareig? ")  then (assert (cansamentMareig)))
)
   

(defrule determina-exercicis-cansament
   ?e <- (object (is-a Cardio)
           (Dificultat ?dificultad)
           (Nom ?exerciseName))
   (cansamentMareig)
   (test (not(eq ?dificultad easy)))
   =>
   (send ?e put-EsValid no))

(defrule determina-impacte-caloric
   =>
   (bind ?answer (ask-question "Quin impacte caloric diries que te la teva dieta actual? (baix, normal, alt) " baix normal alt))
   (assert (impacte ?answer)))

    
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
	then (make-instance [Musculacio] of Musculacio)
    (send [Musculacio] put-Nom Musculacio))
   (if (eq ?answer posar_en_forma) 
	then (make-instance [EnForma] of EnForma)
    (send [EnForma] put-Nom EnForma))
   (if (eq ?answer baixar_pes) 
	then (make-instance [BaixarPes] of BaixarPes)
    (send [BaixarPes] put-Nom BaixarPes))
   (if (eq ?answer equilibrat) 
	then (make-instance [Equilibri] of Equilibri)
    (send [Equilibri] put-Nom Equilibri))
   (if (eq ?answer flexibilitat) 
	then (make-instance [Flexibilitat] of Flexibilitat)
    (send [Flexibilitat] put-Nom Flexibilitat))
   (if (eq ?answer manteniment) 
	then (make-instance [Manteniment] of Manteniment)
    (send [Manteniment] put-Nom Manteniment))
)

(defrule definir-temps-diari
   ?obj <- (object (is-a Objectius)
                (TempsDiari ?temps&:(eq ?temps 0)))
    =>
    (bind ?answer (ask-integer-question "Defineix el número de minuts que tens disponibles al dia: "))
    (printout t ?answer crlf)
    (send ?obj put-TempsDiari ?answer)
)

(defrule elimina-exercicis-alts-en-kcal-si-objectiu-diff-baixar_pes
   ?e <- (object (is-a Exercici)
           (KcalMinuteMax ?kcalmax)
           (Nom ?exerciseName))
   ?obj <- (object (is-a Objectius)
            (Nom ?nomObj))
       
   (impacte baix)
   (test (> ?kcalmax 12))
   (test(not(eq ?nomObj BaixarPes)))
   =>
   (send ?e put-EsValid no))

(deffunction obtener-ejercicio-por-objetivo (?obj)

    (bind ?nomObj (send ?obj get-Nom))
    (if (eq ?nomObj Manteniment) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ manteniment (send ?e get-ObjectiusComplerts)))))
                
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (printout t "Ejercicio" ?nomObj ?ejercicio crlf)
        (return ?ejercicio)
    )
    (if (eq ?nomObj Musculacio) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ musculacio (send ?e get-ObjectiusComplerts)))))
                
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (printout t "Ejercicio" ?nomObj ?ejercicio crlf)
        (return ?ejercicio)
    )
    (if (eq ?nomObj EnForma) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ posar_en_forma (send ?e get-ObjectiusComplerts)))))
                
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (printout t "Ejercicio" ?nomObj ?ejercicio crlf)
        (return ?ejercicio)
    )
    (if (eq ?nomObj BaixarPes) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ baixar_pes (send ?e get-ObjectiusComplerts)))))
                
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (printout t "Ejercicio" ?nomObj ?ejercicio crlf)
        (return ?ejercicio)
    )
    (if (eq ?nomObj Flexibilitat) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ flexibilitat (send ?e get-ObjectiusComplerts)))))
                
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (printout t "Ejercicio" ?nomObj ?ejercicio crlf)
        (return ?ejercicio)
    )

    (return nil)
)

(deffunction obtener-ejercicio-aleatorio ()
    (bind ?ejercicios (find-all-instances ((?e Exercici)) (eq (send ?e get-EsValid) si)))
    (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
    (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
    (return ?ejercicio)
)

(deffunction calcular-duracion_repes (?ejercicio ?temps-max)
    (bind ?Dmin (send ?ejercicio get-DuracioMin))
    (bind ?Dmax (send ?ejercicio get-DuracioMax))

    (bind ?Rmin (send ?ejercicio get-RepsMin))
    (bind ?Rmax (send ?ejercicio get-RepsMax))
    (bind ?scale-factor (/ (- ?temps-max 30) 90))

    (bind ?adjusted-Dmax (integer(+ ?Dmin (* ?scale-factor (- ?Dmax ?Dmin)))))

    (bind ?duracion ?adjusted-Dmax)
    (bind ?reps (integer(+ ?Rmin (* ?scale-factor (- ?Rmax ?Rmin)))))
    (return (create$ ?duracion ?reps))
)

(defrule generar-ejercicios-lunes-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    =>
    (printout t "Entrenament Dilluns Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dillunsGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-dimarts-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dillunsGenerat)
    =>
    (printout t "Entrenament Dimarts Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dimartsGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-dimecres-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dimartsGenerat)
    =>
    (printout t "Entrenament Dimecres Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dimecresGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-dijous-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dimecresGenerat)
    =>
    (printout t "Entrenament Dijous Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dijousGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-divendres-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dijousGenerat)
    =>
    (printout t "Entrenament Divendres Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (divendresGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-dissabte-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (divendresGenerat)
    =>
    (printout t "Entrenament Dissabte Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dissabteGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-diumenge-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dissabteGenerat)
    =>
    (printout t "Entrenament Diumenge Objectiu: " crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil)) (not (member$ ?ejercicio $?ejercicios-seleccionados))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio))
    (while (and(> ?tiempo-disponible -10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "Exercici: " ?ejercicio ", Temps: " ?duracion " minuts, Reps: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio))
    )

    (assert (dissabteGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
)


