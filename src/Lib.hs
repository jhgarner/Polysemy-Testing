module Lib
    ( someFunc
    ) where

import Polysemy
import Polysemy.State
-- import Control.Monad.State
import Data.Traversable


action :: Int -> Sem '[State Int, Embed IO] ()
action x = put x >> get >>= embed . print

-- action2 :: (MonadState Int m, MonadIO m) => Int -> m ()
-- action2 x = put x >> get >>= liftIO . print

someFunc :: IO ()
someFunc = do
    i <- runM $ runState (0 :: Int) $ forM [0..1000000] action >> get
    -- i <- flip runStateT (0 :: Int) $ forM [0..1000000] action2 >> get
    print i
    print "done"
