{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE Strict #-}

module Lib where

import Control.Monad.State

tester :: MonadState a m => m ()
tester = modify' id

manyState :: _ -> IO ()
manyState =
  flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()
  . flip evalStateT ()

someFunc :: IO ()
someFunc = do
  manyState tester >>= print