#| Copyright 2017 Darius Barbano

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. |#

#lang racket

(define-namespace-anchor a)
(define ns (namespace-anchor->namespace a))  ;namespace necessary to use eval properly

;eval function is explained here: https://docs.racket-lang.org/guide/eval.html
(define (evaluate stack) ;evaluate the result of either addition or subtraction of two values
    (eval (read (open-input-string (~a stack))) ns)) ; turn list into a string and evaluate

(evaluate (list '+ 5 4)) ; add two numbers

(evaluate (list '- 5 4)) ; subtract two numbers