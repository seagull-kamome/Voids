module Control.Monad.Voids where

import Control.Monad (void)

void0 :: Functor m => m b -> m ()
void0 x = void $ x

void1 :: Functor m => (a1 -> m b) -> a1 -> m ()
void1 x a1 = void $ x a1

void2 :: Functor m => (a1 -> a2 -> m b) -> a1 -> a2 -> m ()
void2 x a1 a2 = void $ x a1 a2

void3 :: Functor m => (a1 -> a2 -> a3 -> m b) -> a1 -> a2 -> a3 -> m ()
void3 x a1 a2 a3 = void $ x a1 a2 a3

void4 :: Functor m => (a1 -> a2 -> a3 -> a4 -> m b) -> a1 -> a2 -> a3 -> a4 -> m ()
void4 x a1 a2 a3 a4 = void $ x a1 a2 a3 a4

void5 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> m ()
void5 x a1 a2 a3 a4 a5 = void $ x a1 a2 a3 a4 a5

void6 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> m ()
void6 x a1 a2 a3 a4 a5 a6 = void $ x a1 a2 a3 a4 a5 a6

void7 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> m ()
void7 x a1 a2 a3 a4 a5 a6 a7 = void $ x a1 a2 a3 a4 a5 a6 a7

void8 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> m ()
void8 x a1 a2 a3 a4 a5 a6 a7 a8 = void $  x a1 a2 a3 a4 a5 a6 a7 a8

void9 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> m ()
void9 x a1 a2 a3 a4 a5 a6 a7 a8 a9 = void $ x a1 a2 a3 a4 a5 a6 a7 a8 a9

void10 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> m ()
void10 x a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = void $ x a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
