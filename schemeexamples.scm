; crie uma função que calcula a área de um trapézio
(define area (lambda (h b bb) (* h (/ (+ b bb) 2) ) ))
(area 2 4 6)

; crie uma função que calcula as raízes de uma equação do segundo grau
(define delta (lambda (b a c) (- (* b b  ) (* 4 a c))))
(define raiz (lambda (b a c op)  (* (op (- b) (sqrt (delta b a c)))) (/ 1 (* 2 a)) ))
(define raizPos (lambda (b a c) (raiz b a c +) ))
(define raizNeg (lambda (b a c) (raiz b a c -) ))
(raizPos 4 1 4)
(raizNeg 4 1 4)
(delta 4 1 4)

; Crie uma função que calcule a média de 3 notas e diga se o aluno
; está reprovado ( nota < 4 ), em reforço ( nota >= 4 e nota < 6 ) ou aprovado ( nota >= 6 )
(define nota (lambda (x) (if (< x  4) "Reprovado" (if (< x  6) "Reforço" "Aprovado"))))
(nota 3)
(nota 5)
(nota 7)
(define media (lambda (a b c) (nota (/ (+ a b c) 3))) )
(media 5 5 6)
(media 6 6 6)
(media 6 0 10)

; Crie uma função que retorne o 3º elemento da lista
(define terceiro (lambda (L) (caddr L)))
(terceiro '(1 2 3))

; Crie uma função que retorne a soma dos 4 primeiros elementos da lista
(define soma4 (lambda (L) (+ (car L) (cadr L) (caddr L) (caddr L) )))
(soma4 '(1 2 3 4))

;Crie uma função que retorna uma lista substituindo o segundo e o terceiro
;elementos pelo elemento fornecido
(define insere23 (lambda (x L) (cons (car L) (cons x (cons x (cddr L) )) )))
(insere23 8 '(1 2 3 4 5 6 7) )

