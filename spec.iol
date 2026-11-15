;; IOL : Instruction-Oriented-Lisp Spec

;; instructional function
(myInstruction(): 
  struct f[]:
   :var :integer i = 1,
  end ::f
 :instruct[::i += 2],
 :instruct[
  :conditional(::i == 2):
   :print("My i equals", ::conditional)
  end :conditional
 ],
 #return: :{}

 end ::myInstruction() 
).

; operator list

== ; comparison 
= ; assignment
+= ; compound assignment (addition)
-= ; compound assignment (subtraction)
<= ; less than equals
>= ; more than equals

- ; subtraction
+ ; addition
* ; multiply
/ ; division 
> ; more than 
< ; less than
++ ; iterator up
-- ; iterator down
% ; modulo

: ; line begin 
:: ; reference
. ; function end 
end ; ends something
#return ; returns

; for loop

:for(:var :integer U = 1, I <= 100, I++): 
    :conditional(I % 15 == 0):
        :print("FizzBuzz\n")
    end :else_conditional(I % 3 == 0):
        :print("Fizz\n")
    end :else_conditional(I % 5 == 0):
        :print("Buzz\n")
    end :else: 
        :print("\n",I)
    end ::conditional
end ::for
