# Haskell Exercises

A collection of introductory Haskell and functional-programming exercises. The work combines short written discussions of functional concepts with executable problems involving recursion, pattern matching, list comprehensions, tuples and higher-level list operations.

## Topics covered

- Pure functions, referential transparency and lazy evaluation
- Function signatures and recursion
- Building and sorting tuple-based data
- Filtering collections with list comprehensions
- Generating text patterns
- Recursive string comparison and transformation
- Generic list processing with type constraints

The exercises include a `Dog` tuple model, a recursive quicksort, staircase and flag-pattern generators, a string-compatibility exercise, and `nsplit`, which measures distances between matching list elements.

## Running the exercises

Install GHC, then load the source file in GHCi:

```sh
ghci Exercises.hs
```

Functions can then be evaluated interactively, for example:

```haskell
sort_dog_list [("Milo", 42), ("Luna", 35), ("Rex", 58)]
steps 1 3 4
flagpattern 9 1
nsplit [1,2,3,0,4,5,0,0,7,8,9,0] 0
```

There is no Cabal or Stack project: all exercises live in the single `Exercises.hs` source file.

## Status

This repository preserves the original coursework submission. It is intended as a record of early functional-programming practice rather than a reusable Haskell package.
