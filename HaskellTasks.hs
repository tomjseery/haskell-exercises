---- Part 1a ----
{-
1. Once applications on the blockchain are deployed, they can never be altered (i.e. it is immutable). Hense, when creating these applications, we need to use a high assurance language that we can trust that the code will work indefinitely. That's why Cardano and other cryptocurrencies
uses haskell for its implementation: So that the programmers can have a high degree of certaincy that their code will work once deployed. This is due to the fact that Haskell primarily uses pure functions, which are functions that cannot alter the internal state of
the system. Meaning the code will always run the same, regardless of the medium it is run on. So if you trust the logic of your code, you can trust that the system will always work.
2. Sigma is a rule engine used to fight spam and malware on facebook servers, which is powered by Haskell. Haskell is a great contender for this due to it being purely functional and strongly typed, meaning the individual rules and policies made in the language won't unintenionally interact
with each other. This is great for identifying the cause of an error as since each rule is isolated from one another, the factor can be resolved by a programmer much more easilly by simply isolating each unit and performing the required tests on it.
Furthermore, Haskell has only implicit concurrency, meaning the programmer can focus on writing policies, without the concern of concurrency occuring, and we can guarentee that concurrency won't occur in places that you don't want it to occur in. 
This will increase the trust of the code and make it easier to understand, as the programmer can guarentee that it won't be clustered with multiple hidden concurrencies that obscure that functionality of the code.
3. Barclays have adopted use in haskell with their Functional Payout Framework. Haskell uses abstract syntaxes, which allows for it to represent multiple versions of a strcture, ignoring nonessential specifics regarding the concrete syntax. 
This allows for it to process multiple interpretations of finantial derivitives. For instance, the company used Abstract-Syntax-Trees (AST) to extract the necessary financial parameters from the object.

Sources:

https://engineering.fb.com/2015/06/26/security/fighting-spam-with-haskell/
https://serokell.io/blog/top-software-written-in-haskell
https://medium.com/@cardano.foundation/why-cardano-chose-haskell-and-why-you-should-care-why-cardano-chose-haskell-and-why-you-should-f97052db2951
http://www.timphilipwilliams.com/slides/HaskellAtBarclays.pdf

---- Part 1b ----

1. Unexpected side effects are much less likely to occur within Functional Programming. This is due to a concept known as referential transparency, which means an function will always return the same output from a given input value,
regardless of any other external events occuring in the code. This is due to the fact that in functional programming, variables cannot modified (i.e. they are immutable), so using them in concurrency with another part won't affect the outcome of your solution.
Take, for example a function addOne. In an imperitive language, This function would take a variable, add one to it and return the modified vriable. This same variable could be used in parallel in other points in the code and cause unexpected errors as the modified 
variable is inadvertently interacting with other parts of the system, instead of the indented original value doing so.
On the other hand, the same function in functional programming would take the argument, add one, and return the argument. The argument passed through hasn't changed value. The function just returns a completely new value of the original being incremented. This means the same variable used
as the argument can be used in parallel in other parts of the code without any concern of potential side effects from the programmer.
2. Functional programming grants simple unit testing and debugging since, as I stated above, functional programming uses pure functions. Meaning the only way to change the result of a function is to change its arguments, since the return value for the same arguments will always
be the same, regardless of any external outcome. Therefore, if you encounter any problems in your code, the underlying issue will revolve around a fault in one of your functions, and the function in fault can be easilly identified by isolating each unit and performing
the required tests on it.
3. Lazy Evaluation is a feature prominent in function programming paradigms. It is the idea that function expressions only evaluate as much that is necessary in order for the entire function to work. This method of evaluation allows for the processing of undefined values (such as infinite loops)
For instance, to get the head element of an infinite list of 1s, it only needs to evaluate what is necessary (i.e. the head element) whilst the tail of the list can stay unevaluated so the the solution can return as 1.
So to conclude, it avoids repeated evaluation of the functions inputs since it only evaluates what is necessary to execute that function, which makes many different processes achievable by programmers of this language.
4. Functional Signatures in functional programming are much more valid, meaningful and concise to programmers. The function signature gives a well structured explanation of how the function works, which gives the programmer a more firm understanding of how the function roughly works,
while hiding the detail of its implementation. It also coincides very closely with normal mathematical functions that humans are quite familliar with. This allows for programmers to bridge the gap between mathematical functions and programmable functions with ease, 
and create functions almost seemlessly.

Sources:
I used some of my own knowlege of properties of functional programming learnt in both A-Levels, Uni, and through general programming experience
https://qvault.io/clean-code/benefits-of-functional-programming/
https://www.unthinkable.co/blog-post/7-unbeatable-advantages-of-functional-programming/ along with these

---- Part 1c ----

A mathematical function, in essense, is a function that uniquely identifies each element in one set (called the Domain), to an element in another set (called the Co-Domain) via a series of calculations. These calculations can include mathematical operations, or (other) function mappings.
Every element in the Domain must be mapped, so there cannot exist an input for the function that has no return value. Also, For each element in the domain, it can only be mapped to one other element (hense, a unique identifier). But, two elements in the domain can map to the same element in the domain.
With haskell functions being pure, they do resemble the same concept of mathematical functions in the way that they focus primarily on the mathematics and logic of the problem, rather than the medium it is executed on. Along with this, Haskell follows the same concepts of not being able to return 
more than one value, on top of two elements in the co-domain being able to have the same mapping in the domain.
In terms of notation, they have the same parameters, with a default mathematical function being y=f(x), whilst a haskell function being f x = y where x is an arbitrary value in the domain, f is the function applied to x, and y is the soltution of that function call.
y in this case, as I said above, can be a veriety of of calculations including mathematical operations, to other function calls, or to calling the function again, until a base case is met where the soltuion will lie (namely, recursion).
The function signature in haskell, represents the sets of the Domain and Co-Domain respectively, along with other sets it uses, which are applied to the function, along with its previous arguments. For instance, a function that takes an integer, and adds one to it, would be defined as addOne :: Int -> Int, 
meaning 'the function addOne takes an element from the set of Integers, and returns and element from the set of integers.'
The function signature can extend to a variety of data types, including Tuples, Lists, Lists of Tuples etc.
Recursion is another property of functions that can be demonstrated with Haskell, which is when a function calls itself, and indefinite amount of times, until a base condition is met, and the value is returned. A famous example of this is the nth term of a fibonacci sequence, where the base cases is
'fib 0 = 0, and fib 1 = 1' and the recursive case is 'fib n = fib (n-2) + fib(n-1) i.e. The next element in the sequence is determined the addition of the previous two elements'
In conclusion, Haskell is able to emulate the same concept of mathematical functions, but uses different notations.

Sources:
I used my knowlege of mathematical functions along with what I've learnt so far in Haskell
-}

---- Part 2 ----
{-
- create_dog_list is a function that takes a list of Strings and Integers, and takes the String and Integer of each common position and returns a list of tuples tuples [(String,Int)], which was defined above as type Dog
    - I first take the head of both of the lists, and make that the head of the list of tuples, and recall the function with the tail of those lists
        - Once there is only one element in both of them, it simply appends that tuple to then end of the list
- sort_dog_list takes the list of Dogs, and returns the list of Dogs, in order of height
    - I've used a quicksort to order the list of Dogs by the integer in each of the tuples
- remove_smallest_dogs takes an integer representing the number of the smallest dogs to remove, followed by the list of Dogs
    - I have used the function above to first order the list of dogs in ascending order of height, and drop the first k elements from the returned sorted list of dogs, which will return a list that contains the dogs, not including k number of the smallest dogs
- remove_tall_dogs takes a list of dogs, and returns a list of dogs, not including any dog with a height over 80
    - I have used list comprehention to return each tuple one by one, with a checker such that if the height of the dog is above 80, it is not included in the returned list
-}
type Dog = (String,Int)

create_dog_list :: [String] -> [Int] -> [Dog]
create_dog_list [x] [y] = [(x,y)]
create_dog_list (x:xs) (y:ys) = (x,y):create_dog_list xs ys 

sort_dog_list :: [Dog] -> [Dog]
sort_dog_list [] = []
sort_dog_list (x:xs) = sort_dog_list [(a,b) | (a,b)<-xs, b<=snd x] ++ [(fst x,snd x)] ++ sort_dog_list [(a,b) | (a,b)<-xs, b>snd x]

remove_smallest_dogs :: Int -> [Dog] -> [Dog] 
remove_smallest_dogs k x = drop k (sort_dog_list x)

remove_tall_dogs :: [Dog] -> [Dog] 
remove_tall_dogs xs = [(a,b) | (a,b)<-xs, b<=80]

---- Part 3a ----
{-
- steps takes 3 different integers m n and p and returns a step pattern of p steps of initial length n and an increment of n, and then going back in reverse
- For any of the inputs equal to 0, I have satisfied these cases with an empty string
- I used list comprehention for the steps going upwards (upstairs), where the list gets every combination of ps<-[1..p], ns<-[1..n], and ms<-[1..m], where ns is less than 2 
    - For the result of the list, I used replicate on space, followed by asterix, also followed by a \n for the next line, to go through each line, one by one, where the replicate would double for both space and asterix after ps is incremented by 1 (since p represents the number of 'steps')
        - Since the values for the replicate of space and asterix and out of sync by a sum of n (if there are 3 spaces on one line, there will be 6 asaterixes following it), I used n*ps to represent the replicate integer for asterix, and n*(ps-1) to represent the replicate integer for space
- For the reverse of this (downstairs), I used the reverse function on the same list, but since I only wanted the direction of the steps to reverse, and not the concatenation of space, followed by asterix, I also flipped the order of space and asterix to be the other way round
    - Since the downstairs would return "\n" first (since the list is reversed) and upstiars would return "\n" last, this would result in two new lines, when I only need one
        - To solve this, I used init on the upstairs list, to remove the last element to prevent a gap in the steps between going up and down
-}
steps :: Int -> Int -> Int -> String
steps 0 _ _ = ""
steps _ 0 _ = ""
steps _ _ 0 = ""
steps m n p = upstairs ++ downstairs
    where
        upstairs = init(concat[(replicate y ' ')++(replicate x '*') ++"\n"|ps<-[1..p], ns<-[1..n], ms<-[1..m], let x=n*ps, let y=n*(ps-1), check ns])
        downstairs = reverse(concat[(replicate x '*')++(replicate y ' ') ++"\n"|ps<-[1..p], ns<-[1..n], ms<-[1..m], let x=n*ps, let y=n*(ps-1), check ns])

check :: Int -> Bool
check ns
    |ns>=2 = False
    |otherwise = True

---- Part 3b ----
{-
- The function consists of a concatenation of an upper border, the upper frame, the middle frame (if it exists), the lower frame, and the closed border (same border as before) with the final closing border having the \n removed (hense the init at the start of the whole function call)
- For any of the inputs equal to 0, I have satisfied these cases with an empty string
- I used replicate with second input m to print the same frame m times
- for the flagpattern, I first started with defining the top line and bottom line (border) which would be the replicate of the character '*' n times, followed by a new line "\n"
    - I then used list comprehension for the upper half of the frame, which has the pattern of an asterix, followed by a number of spaces, a plus, a number of spaces, another plus, and another number of spaces, a single asterix, and a new line
        - To represent the number of spaces, I used replicate, where the number in replication was the number of different ways such that x + y + x = n-4
            - For instance, if n = 9, the number of spaces for each row will always be n-4, so in this case 9-4 = 5
                - The list comprehension will first find the y value when x =0, so in this case, y =5 so it will print 0 spaces, followed by the plus, followed by 5 spaces, the plus, and no spaces
                    - For x = 1, it will find that the y value would be 3, so it will print 1 space, 3 spaces, and then 1 space, with the plus' inbetween
                        - It will then check if there exists a value for y for x = 2,3... up to n (5 in this case)
                            -  Once its fully gone through each permutation, it then calls a middle function, which returns a String with only 1 '+' symbol, inbetween two (n+3)/2 spaces. This only occurs if n is odd.
        - Along with the upper frame, I also have to call the init function to remove the last element, for the same reason as the above question
    - To print the lower half of the frame, I used reverse on the same list as the upper frame (without the init) which would output the lines of the upper frame, going from bottom to top
-}
flagpattern :: Int -> Int -> String
flagpattern n m 
    | n >=5 && m>=1 = init(concat(replicate m (border ++ upper ++ middle n ++ lower ++ "\n" ++ border)))
    | otherwise = ""
    where
        border = (replicate n '*') ++ "\n"
        upper = init(concat(["*" ++ (replicate x ' ') ++ "+" ++ (replicate y ' ') ++ "+" ++ (replicate x ' ') ++ "*" ++"\n"| x<-[0..(n-4)], y<-[0..(n-4)], (2*x + y == (n-4))]))
        lower = reverse((concat(["*" ++ (replicate x ' ') ++ "+" ++ (replicate y ' ') ++ "+" ++ (replicate x ' ') ++ "*" ++"\n"| x<-[0..(n-4)], y<-[0..(n-4)], (2*x + y == (n-4))])))

middle :: Int -> String
middle n
    |n `mod` 2 == 0 = ""
    |otherwise = "\n" ++ "*" ++ (replicate x ' ') ++ "+" ++ (replicate x ' ') ++ "*"
        where
            x = (n-3) `div` 2
---- Part 4 ----
{-
- I've split compatibility into two different relations: firstRelation and secondRelation, which are concatennated with an "and"
- Both relations start with a tuple of lists of strings, the first string being the result of removing like letters from the first string and the second being the result of removing like letters from the second string
    - The first list takes a comparison between every letter in the first string (called x) and the second string (called ys). If x is equal to the head of ys (i.e. the letters are the same) then x returns an asterix for that letter
        - Otherwise, it recalls the function with the tail of ys
            - If it goes through the whole function without replacing x with '*', then it just returns x
        - On top of the other tuple, which has the same list comprehension, but compares every letter in the second string (called y) to the second string (xs), This returns a 2-tuple of strings, where the asterix represent the 'like' characters between the two tuples
                - I then call the removeFillters function which removes the spaces and asterix from both tuples, leaving only the letters left
                    - After doing this, I am able to zip both tuples with a repeating string of "lahi" (using replicate a number of times based on the size of the list its zipping to) to associate each string with a letter
                        - I then call the addWords function on the tuple, where it returns the the equivalent word to the letter of each string, that was zipped to the last character
                            - Now I have two Strings: First Relation and Second Relation, which I then append to the original inputs xs and ys, to create the compound sentence in compatibility.
-}

compatibility :: String -> String -> String
compatibility xs ys = xs ++ (firstRelation xs ys) ++ ys ++ " and " ++ ys ++ (secondRelation xs ys) ++ xs
    where
        firstRelation xs ys = fst(addWords(lahi(removeFillers([comparison x ys| x<-xs],[comparison y xs| y<-ys]))))
        secondRelation xs ys = snd(addWords(lahi(removeFillers([comparison x ys| x<-xs],[comparison y xs| y<-ys]))))

comparison :: Char -> String -> Char
comparison x [] = x
comparison x ys = 
    if (x == (head ys)) then
        if (x == ' ') then
            ' '
        else
            '*'
    else 
        comparison x (tail ys)

removeFillers :: (String,String) -> (String,String)
removeFillers (xs,ys) = ([x | x<-xs, x/='*', x/=' '],[y | y<-ys, y/='*', y/=' '])

lahi :: (String, String) -> ([(Char, Char)], [(Char, Char)])
lahi (xs,ys) = ( (zip xs (concat (replicate (length xs) "lahi"))),(zip ys (concat (replicate (length ys) "lahi"))) )

addWords :: ([(Char, Char)], [(Char, Char)]) -> (String,String)
addWords x = ((firstWord x),(secondWord x))
    where
        firstWord x = convertLetter (snd (last (fst x)))
        secondWord x = convertLetter (snd (last (snd x)))

convertLetter :: Char -> String
convertLetter letter 
    | letter == 'l' = " likes "
    | letter == 'a' = " admires "
    | letter == 'h' = " hates "
    | letter == 'i' = " is indifferent to "


---- Part 5 ----
{-
nsplit takes a list of any data type, with an element thats inside said list, and return a list of integers, which represent the distance between each of those elements
- I first used a takeWhile of the list xs, up until the element is not equal to the element in the argument (y). This returns a list, up until, not including, the element y. 
    - I then got the length of this, to get the first distance (from the begining up until that element), which will be the first element of my new list
        - Then I recalled that function as the tail of my list, which needs to call nsplit on the rest of the list, also not including the previously encountered y element
            - To get the rest of the list not included in takeWhile (/=y), I do a dropWhile (/=y) on xs, and no not include the y element in that list, I take the tail of that list.
                - However, if theres no elements left after doing a dropWhile on it, the tail function would return an error.
                    - To counter this, I used a safetail which returns an empty list if the list is empty
- Also, for examples like the one in the coursework specification ( [1,2,3,0,4,5,0,0,7,8,9,0] 0 ), to prevent the function outputting a length of 0 for two of the elements in question being directly next to each other (in this case, 0), I used guards to first
check whether the length of the takeWhile is 0, and if it is, to just recall the function with the other parameters stated above, without appending it to a head.
- As for the base case, once xs is empty, it simply returns an empty list, giving us our solution
-}
nsplit :: (Eq a) => [a] -> a -> [Int]
nsplit [] y = []
nsplit xs y
    | length(takeWhile (/=y) xs) == 0 = (nsplit (safetail(dropWhile (/=y) xs)) y)
    | otherwise = (length(takeWhile (/=y) xs)):(nsplit (safetail(dropWhile (/=y) xs)) y)

safetail :: [a] -> [a]
safetail [] = []
safetail xs = tail xs

