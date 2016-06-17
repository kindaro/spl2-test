module Main where

import qualified System.Plugins.Load as SPL

main :: IO ()
main = do
        putStrLn "Start."

        SPL.initLinker
        o <- SPL.loadModule "dist/build/Lib.o"
        f <- SPL.loadFunction o "integerNumber13"

        putStrLn "Finish."
