
;;; ---------------------------------------------------------
;;; ontologiaIA.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologiaIA.ttl
;;; :Date 02/05/2024 10:12:21

; Classe exercici
;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologiaIA.ttl
;;; :Date 26/05/2024 17:47:35

(defclass Objectius "Classe per representar els objectius que pot tenir un entrenament juntament amb el seu temps objectiu."
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

(defclass Equilibir
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

(defclass Exercici "Classe per representar els exercicis que es poden fer en un etrenament."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; Dificultat d'un exercici, pot ser facil, moderada o dificil.
    (slot Dificultat
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Duracio maxima d'un exercici.
    (slot DuracioMax
        (type INTEGER)
        (create-accessor read-write))
    ;;; Duracio minima d'un exercici.
    (slot DuracioMin
        (type INTEGER)
        (create-accessor read-write))
    ;;; Grups musculars que un exercici treballa. Els grups musculars s'han dividit en Cames, Abdominals, Esquena, Pit i Bracos.
    (slot GrupsMusculars
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Kcal consumides per minut per un exercici.
    (multislot KcalMinut
        (type INTEGER)
        (create-accessor read-write))
    ;;; Nombre maxim de repeticions que es poden fer per un exercici.
    (slot RepsMax
        (type INTEGER)
        (create-accessor read-write))
    ;;; Nombre minim de repeticions que es poden fer per un exercici.
    (slot RepsMin
        (type INTEGER)
        (create-accessor read-write))
    ;;; Liista d'objectius pels quals es bo l'exercici.
    (multislot objectiusExercici
        (type STRING)
        (create-accessor read-write))
    ;;; L'exercici es valid, per defecte els exercicis dificils es posen a no i la resta a si.
    (multislot esValid
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Cardio "Subclasse d'exercici que conte els exercicis de cardio."
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flex "Subclasse d'exercici que conte els exercicis de flexibilitat."
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Forca "Subclasse d'exercici que conte els exercicis de forca."
    (is-a Exercici)
    (role concrete)
    (pattern-match reactive)
)

(defclass Entrenament "Classe per representar entrenaments. Un entrenament te un objectiu i un conjunt d'exercicis assignats."
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

(defclass Persona "Classe per representar una persona o usuari que demana un entrenament."
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Solicita
        (type INSTANCE)
        (create-accessor read-write))
    ;;; Amb un valor del 1 al 5 es represent com d'activa es una persona al seu dia a dia, ja sigui per la seva feina, aficions, tasques dom�stiques, etc.
    (slot ActivitatFisica
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Altura en centimetres de la persona.
    (slot Altura
        (type FLOAT)
        (create-accessor read-write))
    ;;; Edat de la persona.
    (slot Edat
        (type INTEGER)
        (create-accessor read-write))
    ;;; IMC de la persona calculat a partir de l'alcada i el pes.
    (slot IMC
        (type FLOAT)
        (create-accessor read-write))
    ;;; Pes en kilograms de la persona.
    (slot Pes
        (type FLOAT)
        (create-accessor read-write))
    ;;; Valor maxim de la presio sanguinia (sistolica).
    (slot PressioSangMax
        (type FLOAT)
        (create-accessor read-write))
    ;;; Valor minim de la presio sanguinia (diastolica).
    (slot PressioSangMin
        (type FLOAT)
        (create-accessor read-write))
    ;;; En cas de que l'usuari decideixi fer un minut de carrera sostinguda aquest atribut correspon al nombre de pulsacions per minut despres del minut de carrera.
    (slot PulsacionsXMin
        (type INTEGER)
        (create-accessor read-write))
    ;;; En cas de que l'usuari decideixi fer un minut de carrera sostinguda pren per valor si o no segons si te sensacio de cansament/mareig.
    (slot SensacioCansament
        (type SYMBOL)
        (create-accessor read-write))
    ;;; En cas de que l'usuari decideixi fer un minut de carrera sostinguda pren per valor si o no segons si te tibantor muscular.
    (multislot TibantorMuscular
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Entre Baix, Normal i Alt representa l'impacte caloric de la dieta de la persona.
    (multislot impacteDieta
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Representa el mal (si te alguna lesio, problema muscular, etc.) que li fan els abdominals a la persona en un rang del 0 (gens de mal) al 3 (incapac de entrenar el grup muscular en concret).
    (multislot malAbdominals
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Simbolitza si la persona te algun problema/dolor a les articulacions.
    (multislot malArticulacions
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Representa el mal (si te alguna lesio, problema muscular, etc.) que li fan els bracos a la persona en un rang del 0 (gens de mal) al 3 (incapac d'entrenar el grup muscular en concret).
    (multislot malBracos
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Representa el mal (si te alguna lesio, problema muscular, etc.) que li fan les cames a la persona en un rang del 0 (gens de mal) al 3 (incapac d'entrenar el grup muscular en concret).
    (multislot malCames
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Representa el mal (si te alguna lesio, problema muscular, etc.) que li fa l'esquena a la persona en un rang del 0 (gens de mal) al 3 (incapac d'entrenar el grup muscular en concret).
    (multislot malEsquena
        (type SYMBOL)
        (create-accessor read-write))
    ;;; Representa el mal (si te alguna lesio, problema muscular, etc.) que li fa el pit a la persona en un rang del 0 (gens de mal) al 3 (incapac d'entrenar el grup muscular en concret).
    (multislot malPit
        (type SYMBOL)
        (create-accessor read-write))
)

;------------------------EXERCICIS------------------------
; musculacio posar_en_forma baixar_pes equilibrat flexibilitat manteniment
; un exercici no pot ser equilibrat per si sol, equilibrat vol dir que un conjunt d'exercicis utilitzen diferents grups musculars.
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
        (ObjectiusComplerts manteniment baixar_pes posar_en_forma)
        (TeImpacte si))
        

    (sprint of Cardio
        (Dificultat moderate)
        (DuracioMax 5)
        (DuracioMin 2)
        (GrupsMusculars cames)
        (KcalMinuteMax 19)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts baixar_pes posar_en_forma musculacio)
        (TeImpacte si))

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
        (ObjectiusComplerts manteniment baixar_pes)
        (TeImpacte si))

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
        (RepsMax 30)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (press-banca-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 30)
        (RepsMin 10)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (sentadilles-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 10)
        (RepsMax 45)
        (RepsMin 15)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (sentadilles-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames abd)
        (KcalMinuteMax 9)
        (RepsMax 30)
        (RepsMin 10)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (flexions-amb-genolls of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 5)
        (RepsMax 60)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (flexions of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 6)
        (RepsMax 50)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma))

    (flexions-amb-pes of Forca
        (Dificultat hard)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 8)
        (RepsMax 40)
        (RepsMin 5)
        (EsValid no)
        (ObjectiusComplerts posar_en_forma)
        (TeImpacte si))

    (rem-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 45)
        (RepsMin 15)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (rem-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 8)
        (RepsMax 30)
        (RepsMin 10)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (curl-biceps-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 45)
        (RepsMin 15)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (curl-biceps-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 30)
        (RepsMin 10)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (press-militar-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 7)
        (RepsMax 30)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (press-militar-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 8)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (extensio-triceps-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 45)
        (RepsMin 15)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (extensio-triceps-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 30)
        (RepsMin 10)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (aixecament-lateral-lleuger of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 5)
        (RepsMax 30)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (aixecament-lateral-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 6)
        (RepsMax 24)
        (RepsMin 8)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
    
    (aixecament-lateral-pesat of Forca
        (Dificultat hard)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars bracos)
        (KcalMinuteMax 7)
        (RepsMax 10)
        (RepsMin 5)
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (lunges-amb-pes-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 8)
        (RepsMax 30)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))
        
    (lunges-amb-pes-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars cames)
        (KcalMinuteMax 9)
        (RepsMax 24)
        (RepsMin 8)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (pes-mort-lleuger of Forca
        (Dificultat easy)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 7)
        (RepsMax 20)
        (RepsMin 10)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma))

    (pes-mort-moderat of Forca
        (Dificultat moderate)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames esquena abd)
        (KcalMinuteMax 9)
        (RepsMax 16)
        (RepsMin 8)
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
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma)
        (TeImpacte si))

    (abdominals of Forca
        (Dificultat easy)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars abd)
        (KcalMinuteMax 6)
        (RepsMax 50)
        (RepsMin 15)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment))

    (abdominals-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 15)
        (DuracioMin 5)
        (GrupsMusculars abd)
        (KcalMinuteMax 6)
        (RepsMax 24)
        (RepsMin 8)
        (EsValid si)
        (ObjectiusComplerts musculacio posar_en_forma manteniment))

    (burpees of Forca
        (Dificultat moderate)
        (DuracioMax 10)
        (DuracioMin 5)
        (GrupsMusculars cames bracos pit abd)
        (KcalMinuteMax 15)
        (RepsMax 16)
        (RepsMin 8)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment)
        (TeImpacte si))

    (planxa of Forca
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd )
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma baixar_pes manteniment))

    (planxa-amb-pes of Forca
        (Dificultat moderate)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd )
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
        (RepsMax 15)
        (RepsMin 5)
        (EsValid si)
        (ObjectiusComplerts posar_en_forma  manteniment))

    (dominades of Forca
        (Dificultat hard)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos esquena abd)
        (KcalMinuteMax 10)
        (RepsMax 15)
        (RepsMin 2)
        (EsValid no)
        (ObjectiusComplerts musculacio posar_en_forma))

    (estirament-cames-1 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-cames-2 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-cames-3 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-bracos-esquena of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-cames-4 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))      
      
    (estirament-cames-esquena of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-cames-5 of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-bracos of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))

    (estirament-esquena-bracos-cames of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars esquena bracos cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-esquena of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-bracos-pit of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars bracos pit)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-pit of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars pit)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-pit-abdominals-cames of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars pit abd cames)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-abdominals of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
    
    (estirament-abdominals-pit-esquena of Flex
        (Dificultat easy)
        (DuracioMax 5)
        (DuracioMin 1)
        (GrupsMusculars abd pit esquena)
        (KcalMinuteMax 4)
        (RepsMax 1)
        (RepsMin 1)
        (EsValid si)
        (ObjectiusComplerts flexibilitat))
)

; funcio per veure si un element forma part d'una llista
(deffunction member (?item $?list)
    (if (lexemep ?item)
        then (bind ?item (lowcase ?item)))
    (return (member$ ?item ?list)))

; funcio per fer preguntes i rebre un string
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

; funcio per fer preguntes de si o no
(deffunction yes-or-no-p(?question)
    (bind ?answer (ask-question ?question yes no y n si ))
    (if (or(eq ?answer yes) (eq ?answer y) (eq ?answer si))
         then TRUE
         else FALSE))

; funcio per fer preguntes i rebre un enter
(deffunction ask-integer-question (?question)
    (printout t ?question)
    (bind ?answer (read))
    (while (not (integerp ?answer)) do
        (printout t "Resposata inv�lida. Siusplau entra un valor enter." crlf)
        (printout t ?question)
        (bind ?answer (read)))
    ?answer)

;------------------------DEMANAR-DADES-PERSONA------------------------
; funcions per obtenir les dades sobre una persona

(defglobal ?*persona* = (make-instance [you] of Persona))

(defrule determina-edat
   =>
   (bind ?answer (ask-integer-question "Quants anys tens? "))
   (send ?*persona* put-Edat ?answer)
   (if (> ?answer 65) then 
       (assert (personaEsGran))))

(defrule determina-altura
   =>
   (bind ?answer (ask-integer-question "Quant medeixes? (cm) "))
   (send ?*persona* put-Altura ?answer)
   (assert (alturaAssignada)))

(defrule determina-pes
   =>
   (bind ?answer (ask-integer-question "Quant peses? (kg) "))
   (send ?*persona* put-Pes ?answer)
   (assert (pesAssignat)))

(defrule determina-PressioSangMin
    =>
    (bind ?answer (ask-integer-question "Quina �s la teva pressi� sangu�nia m�nima? (mmHg) " ))
    (send ?*persona* put-PressioSangMin ?answer)
)

(defrule determina-PressioSangMax
    =>
    (bind ?answer (ask-integer-question "Quina �s la teva pressi� sangu�nia m�xima? (mmHg) " ))
    (send ?*persona* put-PressioSangMax ?answer)
)

(defrule pressio-baixa
    ?p <- (object (is-a Persona)
            (PressioSangMax ?max)
            (PressioSangMin ?min))
    (test (or (< ?max 90) (< ?min 60)))
    =>
    (assert (personaTePressioBaixa))
)
(defrule pressio-alta
    ?p <- (object (is-a Persona)
            (PressioSangMax ?max)
            (PressioSangMin ?min))
    (test (or (> ?max 130) (> ?min 90)))
    =>
    (assert (personaTePressioAlta))
)

(defrule pressio-molt-alta
    ?p <- (object (is-a Persona)
            (PressioSangMax ?max)
            (PressioSangMin ?min))
    (test (and (> ?max 145) (> ?min 95)))
    =>
    (assert (personaTePressioMoltAlta))
)

(defrule determinar-aptitud-pressio-baixa
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultat)
            (Nom ?exerciseName))
    (personaTePressioBaixa)
    (test (eq ?dificultat hard))
    =>
    (send ?e put-EsValid no)
)

(defrule determinar-aptitud-pressio-alta
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultat)
            (Nom ?exerciseName))
    (personaTePressioAlta)
    (test (eq ?dificultat hard))
    =>
    (send ?e put-EsValid no)
)

(defrule determinar-aptitud-pressio-molt-alta
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultat)
            (Nom ?exerciseName))
    (personaTePressioMoltAlta)
    (test (eq ?dificultat moderate))
    =>
    (send ?e put-EsValid no)
)

(defrule calcula-IMC
   ?p <- (object (is-a Persona)
           (name ?name)
           (Pes ?pes)
           (Altura ?altura))
   (alturaAssignada)
   (pesAssignat)
   =>
   (bind ?imc (/ ?pes (* (/ ?altura 100) (/ ?altura 100))))
   (send ?p put-IMC ?imc)
   (if (> ?imc 30) then (assert(personaTeObesitat)))
   (if (and(< ?imc 30) (> ?imc 25)) then (assert(personaTeSobrePes)))
   (if (< ?imc 20) then (assert(personaTeInfraPes)))
   (printout t "El teu IMC �s " ?imc crlf)
)

(defrule determina-exercicis-IMC

   (or (personaTeInfraPes) (personaTeObesitat) (personaTeSobrePes))
   ?e <- (object (is-a Exercici)
           (Dificultat ?dificultad)
           (Nom ?exerciseName))
    (test(eq ?dificultad hard))
   =>
   (send ?e put-EsValid no)
)

  
(defrule determina-exercici-extra
    =>
    (printout t "Com a informaci� addicional et demanem que facis un minut de carrera sostinguda o pugis i baixis escales" crlf)
    (printout t "per tal d'obtenir algunes dades adicions als, si no pots o no vols pots passar directament al seg�ent pas." crlf)
    (if (yes-or-no-p "Vols fer un minut de carrera o pujar i baixar escales? ") then (assert (ferExerciciExtra)))
)

(defrule determina-dades-extra
    (ferExerciciExtra)
    => 
    (bind ?answer (ask-integer-question "Despr�s d'un minut de carrera, quines s�n les teves pulsacions per minut? " )) 
    (if (yes-or-no-p "Despr�s d'un minut de carrera, tens sensaci� de cansament/mareig? ")  
        then 
            (assert (cansamentMareig))
            (send ?*persona* put-SensacioCansament si)
        else
            (send ?*persona* put-SensacioCansament no))

    (if (yes-or-no-p "Despr�s d'un minut de carrera, tens alguna tibantor muscular? ")  
        then 
            (assert (tibantorMuscular))
            (send ?*persona* put-TibantorMuscular si)
        else 
            (send ?*persona* put-TibantorMuscular no))
    (send ?*persona* put-PulsacionsXMin ?answer)
    (assert (dadesExtraAssignades))
)

(defrule determina-aptitud-tibantor-muscular
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultad)
            (TeImpacte ?impacte))
    (tibantorMuscular)
    (test (or (eq ?dificultad hard) (eq ?impacte si)))
    =>
    (send ?e put-EsValid no)
)

(defrule determina-aptitud-cansament-mareig
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultad)
            (TeImpacte ?impacte))
    (cansamentMareig)
    (test (or (eq ?dificultad hard) (eq ?impacte si)))
    =>
    (send ?e put-EsValid no) 

)

(defrule determina-frequencia-cardiaca-alta
    ?p <- (object (is-a Persona)
            (Edat ?edat)
            (PulsacionsXMin ?pulsacions))
    (dadesExtraAssignades)
    =>
    (if (> ?pulsacions (- 220 ?edat)) then (assert (personaTeFrequenciaCardiacaAlta)))   
)

(defrule determina-aptitud-frequencia-cardiaca-alta
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultad)
            (Nom ?exerciseName)
            (KcalMinuteMax ?kcal))
    (personaTeFrequenciaCardiacaAlta)
    (test (or (eq ?dificultad hard) (>= ?kcal 12)))
    =>
    (send ?e put-EsValid no)   
)

(defrule determina-exercicis-cansament
    ?e <- (object (is-a Cardio)
            (Dificultat ?dificultad)
            (Nom ?exerciseName))
    (cansamentMareig)
    (test (not(eq ?dificultad easy)))
    =>
    (send ?e put-EsValid no))

(defrule determina-problemes-articulars
    =>
    (if (yes-or-no-p "Tens problemes articulars? ")  then (assert (problemesArticulars)))
)

(defrule determina-exercicis-articulars
    ?e <- (object (is-a Exercici)
            (TeImpacte ?impacte)
            (Nom ?exerciseName))
    (problemesArticulars)
    (test (eq ?impacte si))
    =>
    (send ?e put-EsValid no))

(defrule determina-impacte-caloric
   =>
    (bind ?answer (ask-question "Quin impacte cal�ric diries que te la teva dieta actual? (baix, normal, alt) " baix normal alt))
    (assert (impacte ?answer)))

    
(defrule determina-aptitud-ejercicio-edad
    ?e <- (object (is-a Exercici)
            (Dificultat ?dificultad)
            (Nom ?exerciseName)
            (TeImpacte ?impacte))
    (personaEsGran)
    (test (or(eq ?dificultad hard) (eq ?impacte si)))
    =>
    (send ?e put-EsValid no))

(defrule determina-activitat-fisica
   =>
   (bind ?answer (ask-question "Del 1 al 5 com valores el nivell d'activitat f�sica que fas al dia a dia? (a la feina, aficions, tasques dom�stiques...) " 1 2 3 4 5))
   (send ?*persona* put-ActivitatFisica ?answer)
   (assert (activitatFisicaAssignada))
)

;----------------ASSIGNAR-EXERCICIS-VALIDS-SEGONS-MAL----------------

(defrule deterimar-si-noapte-es-apte
   (activitatFisicaAssignada)
   ?e <- (object (is-a Exercici)
           (Dificultat ?dificultad))
    ?p <- (object (is-a Persona)
           (ActivitatFisica ?actFis))
   (or (test (eq ?actFis 5)) (test (eq ?actFis 4)) )
   (not (problemesArticulars))
   (not (cansamentMareig))
   (not (personaTePressioMoltAlta))
   (not (personaEsGran))
   =>
   (send ?e put-EsValid si)
   (assert (deterimar-si-noapte-es-apte))
)

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
    (test (member$ abd $?grup))
    =>
    (send ?e put-EsValid no))
(defrule abdominals-dolor-2
    ?e <-(object (is-a Exercici)
            (Dificultat ?dif)
            (GrupsMusculars $?grup)
            (Nom ?exerciseName))
    (fa-mal abd 2)
    (test (or (eq ?dif hard) (eq ?dif moderate)) )
    (test (member$ abd $?grup))
    =>
    (send ?e put-EsValid no))
(defrule abdominals-dolor-1
    ?e <-(object (is-a Exercici)
            (Dificultat ?dif)
            (GrupsMusculars $?grup)
            (Nom ?exerciseName))
    (fa-mal abd 1)
    (test (eq ?dif hard))
    (test (member$ abd $?grup))
    =>
    (send ?e put-EsValid no))

;------------------------DEMANAR-DOLORS------------------------
(defrule mal-esquena
    =>
    (bind ?answer (ask-question "Quant de mal et fa l'esquena del 0 (m�nim) al 3 (m�xim): " 0 1 2 3))
    (assert (fa-mal esq ?answer)))

(defrule mal-bracos
    =>
    (bind ?answer (ask-question "Quant de mal et fan els bracos del 0 (m�nim) al 3 (m�xim): " 0 1 2 3))
    (assert (fa-mal bra ?answer)))

(defrule mal-cames
    =>
    (bind ?answer (ask-question "Quant de mal et fan les cames del 0 (m�nim) al 3 (m�xim): " 0 1 2 3))
    (assert (fa-mal cam ?answer)))

(defrule mal-pit
    =>
    (bind ?answer (ask-question "Quant de mal et fan el pit del 0 (m�nim) al 3 (m�xim): " 0 1 2 3))
    (assert (fa-mal pit ?answer)))

(defrule mal-abs
    =>
    (bind ?answer (ask-question "Quant de mal et fan els abdominals del 0 (m�nim) al 3 (m�xim): " 0 1 2 3))
    (assert (fa-mal abd ?answer)))

;------------------------SELECCIONAR-OBJECTIU------------------------
(defrule dir-objectiu
    =>
    (bind ?answer (ask-question "Quin dels seg�ents objectius s'adequa m�s al teu objectiu per l'entrenament? (musculacio, posar_en_forma, baixar_pes, equilibrat, flexibilitat o manteniment) " musculacio posar_en_forma baixar_pes equilibrat flexibilitat manteniment))
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

;------------------------DEMANAR-TEMPS-OBJECTIU------------------------
(defrule definir-temps-diari
    ?obj <- (object (is-a Objectius)
                    (TempsDiari ?temps&:(eq ?temps 0)))
    =>
    (bind ?answer (ask-integer-question "Quants minuts al dia vols dedicar a l'entrenament? "))
    (printout t ?answer crlf)
    (send ?obj put-TempsDiari ?answer)
)

(defrule elimina-exercicis-alts-en-kcal-si-objectiu-diff-baixar_pes
   ?e <- (object (is-a Exercici)
           (KcalMinuteMax ?kcalmax)
           (Nom ?exerciseName))
   ?obj <- (object (is-a Objectius)
            (Nom ?nomObj))
       
   (or(impacte baix personaTeInfraPes))
   (test (> ?kcalmax 12))
   (test(not(eq ?nomObj BaixarPes)))
   =>
   (send ?e put-EsValid no))

;----------------OBTENIR-EXERCICIS-BONS-DE-CADA-OBJECTIU----------------
(deffunction obtener-ejercicio-por-objetivo (?obj)

    (bind ?nomObj (send ?obj get-Nom))
    (if (eq ?nomObj Manteniment) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ manteniment (send ?e get-ObjectiusComplerts)))))
                
        (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
        else
        (return nil)
        )
    )
    (if (eq ?nomObj Musculacio) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ musculacio (send ?e get-ObjectiusComplerts)))))
                
        (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
        else
        (return nil)
        )
    )
    (if (eq ?nomObj EnForma) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ posar_en_forma (send ?e get-ObjectiusComplerts)))))
                
        (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
        else
        (return nil)
        )
    )
    (if (eq ?nomObj BaixarPes) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ baixar_pes (send ?e get-ObjectiusComplerts)))))
                
        (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
        else
        (return nil)
        )
    )
    (if (eq ?nomObj Flexibilitat) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ flexibilitat (send ?e get-ObjectiusComplerts)))))
                
        (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
        else
        (return nil)
        )
    )


    (return nil)
)

(deffunction obtener-todos-ejercicios-por-objetivo (?obj)

    (bind ?nomObj (send ?obj get-Nom))
    (if (eq ?nomObj Manteniment) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ manteniment (send ?e get-ObjectiusComplerts)))))
                
        (return ?ejercicios)
    )
    (if (eq ?nomObj Musculacio) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ musculacio (send ?e get-ObjectiusComplerts)))))
                
        (return ?ejercicios)
    )
    (if (eq ?nomObj EnForma) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ posar_en_forma (send ?e get-ObjectiusComplerts)))))
                
        (return ?ejercicios)
    )
    (if (eq ?nomObj BaixarPes) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ baixar_pes (send ?e get-ObjectiusComplerts)))))
                
        (return ?ejercicios)
    )
    (if (eq ?nomObj Flexibilitat) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
            (and
                (eq (send ?e get-EsValid) si)
                (member$ flexibilitat (send ?e get-ObjectiusComplerts)))))
                
        (return ?ejercicios)
    )
    (if (eq ?nomObj Equilibri) then
        (bind ?ejercicios (find-all-instances ((?e Exercici))
                (eq (send ?e get-EsValid) si)
                ))
                
        (return ?ejercicios)
    )

    (return nil)

)



(deffunction obtener-ejercicio-aleatorio ()
    (bind ?ejercicios (find-all-instances ((?e Exercici)) (eq (send ?e get-EsValid) si)))
    (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
    (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
    (return ?ejercicio)
)


(deffunction obtener-ejercicio-aleatorio-forca ()
    (bind ?ejercicios (find-all-instances ((?e Forca)) (eq (send ?e get-EsValid) si)))
    (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
    (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
    (return ?ejercicio)
)

(deffunction obtener-ejercicio-aleatorio-flex ()
    (bind ?ejercicios (find-all-instances ((?e Flex)) (eq (send ?e get-EsValid) si)))
    (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
    (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
    (return ?ejercicio)
)

(deffunction obtener-ejercicio-aleatorio-flex1 ($?ejercicios-seleccionados)
    (bind $?gruposMuscularesSeleccionados (create$))
    (foreach ?ejercicio ?ejercicios-seleccionados
        (bind $?gruposMusculares (union$ ?gruposMuscularesSeleccionados (send ?ejercicio get-GrupsMusculars)))
    )
    (bind ?ejercicios (find-all-instances ((?e Flex))
                        (and
                            (eq (send ?e get-EsValid) si)
                            (neq (intersection$ $?gruposMuscularesSeleccionados (send ?e get-GrupsMusculars)) nil)
                        )))
    (if (> (length$ ?ejercicios) 0) then
        (bind ?i (random 0 (- (length$ ?ejercicios) 1)))
        (bind ?ejercicio (nth$ (+ ?i 1) ?ejercicios)) 
        (return ?ejercicio)
    else
        (return nil)
    )
)

;----------------CALCULAR-DURACIO-I-REPS-D'UN-EXERCICI---------------
(deffunction calcular-duracion_repes (?ejercicio ?temps-max ?persona)
    (bind ?Dmin (send ?ejercicio get-DuracioMin))
    (bind ?Dmax (send ?ejercicio get-DuracioMax))

    (bind ?Rmin (send ?ejercicio get-RepsMin))
    (bind ?Rmax (send ?ejercicio get-RepsMax))
    (bind ?scale-factor (/ (- ?temps-max 30) 90))

    (bind ?adjusted-Dmax (integer(+ ?Dmin (* ?scale-factor (- ?Dmax ?Dmin)))))

    (bind ?duracion ?adjusted-Dmax)
    (bind ?reps (integer(+ ?Rmin (* ?scale-factor (- ?Rmax ?Rmin)))))

    (bind ?act (send ?persona get-ActivitatFisica))

    ;si te sensacio de cansament o tibantor, es redueix el temps d'entrenament coms si fos menys activa
    (bind ?teSC (send ?persona get-SensacioCansament))
    (bind ?teTM (send ?persona get-TibantorMuscular))
    (if (and (or (eq ?teSC si) (eq ?teTM si)) (> ?act 1)) then (bind ?act (- ?act 1))) 

    (bind ?scale (*(- ?act  3) 0.1))
    (bind ?duracion (+ ?duracion (* ?duracion ?scale))) 
    (bind ?reps (+ ?reps (* ?reps ?scale)))
    
    (if (> ?duracion ?Dmax) 
        then (bind ?duracion ?Dmax)
        else (if (< ?duracion ?Dmin) 
            then (bind ?duracion ?Dmin))
    ) 

    (if (> ?reps ?Rmax) 
        then (bind ?reps ?Rmax)
        else (if (< ?reps ?Rmin) 
            then (bind ?reps ?Rmin))
    )

    (return (create$ (integer ?duracion) (integer ?reps)))
)

(deffunction calcular-duracion_repes_estiraments (?ejercicio ?temps-max ?persona)
    (bind ?Dmin (/ (send ?ejercicio get-DuracioMin) 2 )) 
    (bind ?Dmax (/ (send ?ejercicio get-DuracioMax) 2 ))

    (bind ?Rmin (send ?ejercicio get-RepsMin))
    (bind ?Rmax (send ?ejercicio get-RepsMax))
    (bind ?scale-factor (/ (- ?temps-max 30) 90))

    (bind ?adjusted-Dmax (integer(+ ?Dmin (* ?scale-factor (- ?Dmax ?Dmin)))))

    (bind ?duracion ?adjusted-Dmax)
    (bind ?reps (integer(+ ?Rmin (* ?scale-factor (- ?Rmax ?Rmin)))))

    (bind ?act (send ?persona get-ActivitatFisica))

    ;si te sensacio de cansament o tibantor, es redueix el temps d'entrenament coms si fos menys activa
    (bind ?teSC (send ?persona get-SensacioCansament))
    (bind ?teTM (send ?persona get-TibantorMuscular))
    (if (and (or (eq ?teSC si) (eq ?teTM si)) (> ?act 1)) then (bind ?act (- ?act 1))) 

    (bind ?scale (*(- ?act  3) 0.1))
    (bind ?duracion (+ ?duracion (* ?duracion ?scale))) 
    (bind ?reps (+ ?reps (* ?reps ?scale)))
    
    (if (> ?duracion ?Dmax) 
        then (bind ?duracion ?Dmax)
        else (if (< ?duracion ?Dmin) 
            then (bind ?duracion ?Dmin))
    ) 

    (if (> ?reps ?Rmax) 
        then (bind ?reps ?Rmax)
        else (if (< ?reps ?Rmin) 
            then (bind ?reps ?Rmin))
    )

    (return (create$ (integer ?duracion) (integer ?reps)))
)

;--------------------------------ASSIGNACIO-D'EXERCICIS--------------------------------

(defrule exercicis-disponibles
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
=>
    (bind ?ejercicios (find-all-instances ((?e Exercici)) (eq (send ?e get-EsValid) si)))
    (if (>(length$ ?ejercicios ) 5) then (assert(exercicisDisponibles))
    else (assert(exercicisNoDisponibles)))
)
;------------------------DILLUNS------------------------
(defrule generar-ejercicios-lunes-objectiu
    (exercicisDisponibles)
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DILLUNS:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0)  (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10)) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (dillunsGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DIMARTS------------------------
(defrule generar-ejercicios-dimarts-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dillunsGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DIMARTS:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10)) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (dimartsGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DIMECRES------------------------
(defrule generar-ejercicios-dimecres-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dimartsGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DIMECRES:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10)) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (dimecresGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DIJOUS------------------------
(defrule generar-ejercicios-dijous-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dimecresGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DIJOUS:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10)) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (dijousGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DIVENDRES------------------------
(defrule generar-ejercicios-divendres-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (dijousGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DIVENDRES:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10)) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (divendresGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DISSABTE------------------------
(defrule generar-ejercicios-dissabte-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)))
    (divendresGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DISSABTE:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 20)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    (while (and(> ?tiempo-disponible 0) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion (+ ?tiempo-disponible 10))then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
    )

    (assert (dissabteGenerat))
    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

;------------------------DIUMENGE------------------------
(defrule generar-ejercicios-diumenge-objectiu
    ?obj <- (object (is-a Objectius) (TempsDiari ?tiempo-max&:(<> ?tiempo-max 0)) (Nom ?nomObj))
    (dissabteGenerat)
    =>
    (printout t "----------------------------------------" crlf)
    (printout t "ENTRENAMENT DIUMENGE:" crlf)
    (bind ?tiempo-disponible ?tiempo-max)
    (bind $?ejercicios-seleccionados (create$))
    (bind $?ejercicios-objetivo-completos (obtener-todos-ejercicios-por-objetivo ?obj))
    (bind $?duraciones (create$))
    (bind ?duracionTotal 0)

    (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
    else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    
    (while (and(> ?tiempo-disponible 10) (< ?duracionTotal (- ?tiempo-max 10)) (not(eq ?ejercicio nil))  (not(eq (length$ $?ejercicios-seleccionados) (length$ $?ejercicios-objetivo-completos)))) do
 
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (and (<= ?duracion ?tiempo-disponible) (not (member$ ?ejercicio $?ejercicios-seleccionados))) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (if (eq (send ?obj get-Nom) Equilibri) then (bind ?ejercicio (obtener-ejercicio-aleatorio))
        else (bind ?ejercicio (obtener-ejercicio-por-objetivo ?obj)))
    )


    (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 15)) (not(eq ?ejercicio nil))) do
        (bind ?dnr (calcular-duracion_repes ?ejercicio ?tiempo-max ?*persona*))
        (bind ?duracion (nth$ 1 ?dnr))
        (bind ?reps (nth$ 2 ?dnr))
        (if (<= ?duracion ?tiempo-disponible) then
            (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
            (bind $?duraciones (create$ $?duraciones ?duracion))
            (bind ?duracionTotal (+ ?duracionTotal ?duracion))
            (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
            (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
        )
        
        (bind ?ejercicio (obtener-ejercicio-aleatorio-forca))
    )

    (if (neq ?nomObj Flexibilitat)  then
        (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
        (while (and(> ?tiempo-disponible -5) (< ?duracionTotal (- ?tiempo-max 5)) (not(eq ?ejercicio nil))) do
            (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
            (bind ?duracion (nth$ 1 ?dnr))
            (bind ?reps (nth$ 2 ?dnr))
            (if (<= ?duracion ?tiempo-disponible) then
                (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
                (bind $?duraciones (create$ $?duraciones ?duracion))
                (bind ?duracionTotal (+ ?duracionTotal ?duracion))
                (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
                (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
            )
            
            (bind ?ejercicio (obtener-ejercicio-aleatorio-flex1 $?ejercicios-seleccionados))
        )
    )
    else (bind ?ejercicio (obtener-ejercicio-aleatorio-flex))
        (while (and(> ?tiempo-disponible 0)  (not(eq ?ejercicio nil))) do
            (bind ?dnr (calcular-duracion_repes_estiraments ?ejercicio ?tiempo-max ?*persona*))
            (bind ?duracion (nth$ 1 ?dnr))
            (bind ?reps (nth$ 2 ?dnr))
            (if (<= ?duracion (+ ?tiempo-disponible 10)) then
                (bind $?ejercicios-seleccionados (create$ $?ejercicios-seleccionados ?ejercicio))
                (bind $?duraciones (create$ $?duraciones ?duracion))
                (bind ?duracionTotal (+ ?duracionTotal ?duracion))
                (bind ?tiempo-disponible (- ?tiempo-disponible ?duracion))
                (printout t "- " ?ejercicio ", Temps: " ?duracion " minuts, Repeticions: " ?reps  crlf)
            )
            
            (bind ?ejercicio (obtener-ejercicio-aleatorio-flex))
        )
    

    (printout t "Total d'exercicis seleccionats: " (length$ ?ejercicios-seleccionados) crlf)
    (printout t "Temps Total: " ?duracionTotal crlf)
    (printout t crlf)
)

(defrule generar-ejercicios-diumenge-objectiu
    (exercicisNoDisponibles)
    =>
    (printout t "Segons les teves condicions, no hi ha exercicis aptes per a un entrenament" crlf)
)

;------------------------INICI------------------------
(defrule welcome
    (declare (salience 100))
    =>
    (printout t "  ____                                                                  _                              " crlf)          
    (printout t " |  _ \\    ___    ___    ___    _ __ ___     __ _   _ __     __ _    __| |   ___    _ __              " crlf) 
    (printout t " | |_) |  / _ \\  / __|  / _ \\  | '_ ` _ \\   / _` | | '_ \\   / _` |  / _` |  / _ \\  | '__|         " crlf)
    (printout t " |  _ <  |  __/ | (__  | (_) | | | | | | | | (_| | | | | | | (_| | | (_| | | (_) | | |                 " crlf)
    (printout t " |_| \\_\\  \\___|  \\___|  \\___/  |_| |_| |_|  \\__,_| |_| |_|  \\__,_|  \\__,_|  \\___/  |_|        " crlf)
    (printout t "                                                                                                       " crlf)
    (printout t "      _                                                                                                " crlf)
    (printout t "   __| |   ___     _ __    _ __    ___     __ _   _ __    __ _   _ __ ___     ___   ___                " crlf)
    (printout t "  / _` |  / _ \\   | '_ \\  | '__|  / _ \\   / _` | | '__|  / _` | | '_ ` _ \\   / _ \\ / __|          " crlf)
    (printout t " | (_| | |  __/   | |_) | | |    | (_) | | (_| | | |    | (_| | | | | | | | |  __/ \\__ \\             " crlf)
    (printout t "  \\__,_|  \\___|   | .__/  |_|     \\___/   \\__,_| |_|     \\__,_| |_| |_| |_|  \\___| |___/         " crlf)
    (printout t "                  |_|                     |___/                                                        " crlf)
    (printout t "      _   _                  _                                                              _          " crlf)
    (printout t "   __| | ( )   ___   _ __   | |_   _ __    ___   _ __     __ _   _ __ ___     ___   _ __   | |_        " crlf)
    (printout t "  / _` | |/   / _ \\ | '_ \\  | __| | '__|  / _ \\ | '_ \\   / _` | | '_ ` _ \\   / _ \\ | '_ \\  | __|" crlf)
    (printout t " | (_| |     |  __/ | | | | | |_  | |    |  __/ | | | | | (_| | | | | | | | |  __/ | | | | | |_        " crlf)
    (printout t "  \\__,_|      \\___| |_| |_|  \\__| |_|     \\___| |_| |_|  \\__,_| |_| |_| |_|  \\___| |_| |_|  \\__|" crlf crlf)
    (printout t "Benvingut al generador de programes d'entrenament, abans de res et demanem que contestis algunes preguntes per poder adaptar-te al m�xim l'entrenament." crlf crlf)
)