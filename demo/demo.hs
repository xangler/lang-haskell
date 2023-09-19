module Main where

x = 42
y = ("demo", 20)

data Zyf = Yes Int | No Bool

data Person = Person {
    fname :: String, 
    lname :: String,
    age :: Int
} deriving(Show)
z = Person {fname="xz", lname="y", age=10}

mreverse xs = revAcc [] xs where
    revAcc acc [] = acc
    revAcc acc (x:xs) = revAcc (x:acc) xs

mirror xs = let xs' = mreverse xs in
                xs ++ xs'

pythag n = [(x,y,z)|z<-[1..n], y<-[1..z], x<-[1..y], x*x + y*y == z*z]

main = do
    putStrLn "Hello demo"
    print z
    print (mirror (fname z))
    print (pythag 5)