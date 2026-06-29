;------------ TEMPLATE DEL VEHICULO --------------

(deftemplate vehiculo
   (slot tipo-dano)
   (slot zona)
   (slot pintura)
   (slot abolladura)
   (slot vidrio)
   (slot dano-estructural)
)

;---------------- HECHOS ----------------

(deffacts datos-iniciales

   (vehiculo
      (tipo-dano leve)
      (zona capot)
      (pintura rayada)
      (abolladura no)
      (vidrio si)
      (dano-estructural no)
   )

   (vehiculo
      (tipo-dano medio)
      (zona puerta)
      (pintura desprendida)
      (abolladura si)
      (vidrio no)
      (dano-estructural no)
   )

   (vehiculo
      (tipo-dano fuerte)
      (zona lateral)
      (pintura dañada)
      (abolladura si)
      (vidrio no)
      (dano-estructural si)
   )
)

;---------------- REGLAS ----------------

(defrule dano-leve
   (vehiculo
      (tipo-dano leve)
      (pintura rayada))
=>
   (printout t "Recomendacion: pulido y retoque de pintura." crlf)
)

(defrule dano-medio
   (vehiculo
      (tipo-dano medio)
      (abolladura si))
=>
   (printout t "Recomendacion: enderezado de chaperia y pintura parcial." crlf)
)

(defrule dano-fuerte
   (vehiculo
      (tipo-dano fuerte))
=>
   (printout t "Recomendacion: reparacion completa de chaperia y pintura." crlf)
)

(defrule dano-estructural
   (vehiculo
      (dano-estructural si))
=>
   (printout t "Recomendacion: revisar chasis y piezas danadas." crlf)
)

(defrule vidrio-roto
   (vehiculo
      (vidrio si))
=>
   (printout t "Recomendacion: reemplazar vidrio danado." crlf)
)