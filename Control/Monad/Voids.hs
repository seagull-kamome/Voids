{-# LANGUAGE TypeFamilies, TemplateHaskell #-}
module Control.Monad.Voids where

import Control.Monad (void)
import Language.Haskell.TH

mkFmap :: Int -> ExpQ
mkFmap 0 = varE 'id
mkFmap 1 = varE 'fmap
mkFmap n = uInfixE (varE 'fmap) (varE '(.)) (mkFmap $ n - 1)

mkVoid :: Int -> ExpQ
mkVoid i = mkFmap i `appE` (appE (varE 'const) (tupE []))

void0 :: Functor m => m b -> m ()
void0 x = fmap (const ()) x
{-# INLINE void0 #-}

void1 :: Functor m => (a1 -> m b) -> a1 -> m ()
void1 x = \a1 -> fmap (const ()) (x a1)
{-# INLINE void1 #-}

void2 :: Functor m => (a1 -> a2 -> m b) -> a1 -> a2 -> m ()
void2 x = \a1 a2 -> fmap (const ()) (x a1 a2)
{-# INLINE void2 #-}

void3 :: Functor m => (a1 -> a2 -> a3 -> m b) -> a1 -> a2 -> a3 -> m ()
void3 x = \a1 a2 a3 -> fmap (const ()) (x a1 a2 a3)
{-# INLINE void3 #-}

void4 :: Functor m => (a1 -> a2 -> a3 -> a4 -> m b) -> a1 -> a2 -> a3 -> a4 -> m ()
void4 x = \a1 a2 a3 a4 -> fmap (const ()) (x a1 a2 a3 a4)
{-# INLINE void4 #-}

void5 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> m ()
void5 x = \a1 a2 a3 a4 a5 -> fmap (const ()) (x a1 a2 a3 a4 a5)
{-# INLINE void5 #-}

void6 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> m ()
void6 x = \a1 a2 a3 a4 a5 a6 -> fmap (const ()) (x a1 a2 a3 a4 a5 a6)
{-# INLINE void6 #-}

void7 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> m ()
void7 x = \a1 a2 a3 a4 a5 a6 a7 -> fmap (const ()) (x a1 a2 a3 a4 a5 a6 a7)
{-# INLINE void7 #-}

void8 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> m ()
void8 x = \a1 a2 a3 a4 a5 a6 a7 a8 -> fmap (const ()) (x a1 a2 a3 a4 a5 a6 a7 a8)
{-# INLINE void8 #-}

void9 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> m ()
void9 x = \a1 a2 a3 a4 a5 a6 a7 a8 a9 -> fmap (const ()) (x a1 a2 a3 a4 a5 a6 a7 a8 a9)
{-# INLINE void9 #-}

void10 :: Functor m => (a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> m b) -> a1 -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> m ()
void10 x = \a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 -> fmap (const ()) (x a1 a2 a3 a4 a5 a6 a7 a8 a9 a10)
{-# INLINE void10 #-}