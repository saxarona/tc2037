#lang racket

;; the factorial

(define (factorial n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))
    )
)

;; get a list of integer and returns a list of even numbers

(define (evenfilter mylist)
    (if (null? mylist)
        '()
        (if (= (remainder (car mylist) 2) 0)
         (cons (car mylist) (evenfilter (cdr mylist)))
         (evenfilter (cdr mylist))
        )
    )
)

;; get a list of integers and return the list of its squares

(define (squaremylist mylist)
    (if (null? mylist)
        '()
        (cons (* (car mylist) (car mylist)) (squaremylist (cdr mylist)))
    )
)

;;test cases

(factorial 6)
(evenfilter '(1 2 3 4 5 6 7 8 9 10))
(squaremylist '(1 2 3 4 5 6 7 8 9 10))