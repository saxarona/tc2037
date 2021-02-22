#lang racket

;; the factorial
;; EZ stuff
(define (factorial n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))
    )
)

;; get a list of integers as a parameter and
;; return even numbers
(define (myfilter mylist)
    (if (null? mylist)
        '()
        (if (= (remainder (car mylist) 2) 0)
            (cons (car mylist) (myfilter (cdr mylist)))
            (myfilter (cdr mylist))
        )
    )
)

;; get a list of integers and return
;; the list of its squaares

(define (squaremylist mylist)
    (if (null? mylist)
        '()
        (cons (* (car mylist) (car mylist)) (squaremylist (cdr mylist)))
    )
)

;; get a list of integers and a number,
;; and return a list of those which are multiples
;; of said number

(define (multiples l x)
    (if (null? l)
        '()
        (if (= (remainder (car l) x) 0)
            (cons (car l) (multiples (cdr l) x))
            (multiples (cdr l) x)
        )
    )
)



(myfilter '(1 2 3 4 5 6 7 8 9 10))
(factorial 7)
(squaremylist '(1 2 3 4 5))
(multiples '(2 3 4 5 6 7 8 9 10 11 12) 3)