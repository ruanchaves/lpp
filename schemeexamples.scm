(define area (lambda (h b bb) (* h (/ (+ b bb) 2) ) ))
(area 2 4 6)

(define delta (lambda (b a c) (- (* b b  ) (* 4 a c))))
(define raiz (lambda (b a c op)  (* (op (- b) (sqrt (delta b a c)))) (/ 1 (* 2 a)) ))
(define raizPos (lambda (b a c) (raiz b a c +) ))
(define raizNeg (lambda (b a c) (raiz b a c -) ))
(raizPos 4 1 4)
(raizNeg 4 1 4)
(delta 4 1 4)

(define nota (lambda (x) (if (< x  4) "Reprovado" (if (< x  6) "Reforço" "Aprovado"))))
(nota 3)
(nota 5)
(nota 7)
