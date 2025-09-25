;; 1) Створення списку згідно умови завдання
CL-USER> (defvar mylist)
(setq mylist (cons 'A (cons 25 (cons '(X Y) (cons '() (list 'B))))))
(A 25 (X Y) NIL B)

;; 2) Отримання голови списку
CL-USER> (car mylist)
A

;; 3) Отримання хвосту списку
CL-USER> (cdr mylist)
(25 (X Y) NIL B)

;; 4) Отримання третього елементу списку
CL-USER> (nth 2 mylist)
(X Y)

;; 5) Отримання останнього елементу списку.
CL-USER> (car (last mylist))
B

;; 6.1) Використання предикати atom
CL-USER> (atom (car mylist))
T

CL-USER> (atom (nth 1 mylist))
T

CL-USER> (atom (nth 2 mylist))
NIL

;; 6.2) Використання предикати listp
CL-USER> (listp (car mylist))
NIL

CL-USER> (listp (nth 2 mylist))
T

CL-USER> (listp (nth 3 mylist))
T

;; 7) Використання інших предикат
CL-USER> (numberp (nth 1 mylist))
T

CL-USER> (equal (nth 2 mylist) '(X Y))
T

CL-USER> (null (nth 3 mylist))
T

;; 8) Об'єднання списків
CL-USER> (append mylist (nth 2 mylist))
(A 25 (X Y) NIL B X Y)