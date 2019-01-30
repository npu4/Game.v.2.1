module GuessOfGallow(
  guess 
)where
import ImgOfGallow
    
guess :: String -> String -> Int -> IO()
guess secretWord wordOnScreen numOfErr = do
    isFinal <- allLettersAreRight wordOnScreen
    if isFinal then do
        putStrLn wordOnScreen
        putStrLn "Вы угадали загаданное слово! Поздравляю!"
    else do
        putStrLn $ "Ошибок: " ++ show numOfErr
        putStrLn wordOnScreen
        try <- getLine
        (iTIW,newWordOnScreen) <- isTryInWord try secretWord wordOnScreen
        if iTIW then do
            guess secretWord newWordOnScreen numOfErr
        else do
            img $ numOfErr + 1
            if numOfErr < 6 then
                guess secretWord newWordOnScreen $ numOfErr + 1
            else do
                putStrLn "Конец игры."
            

isTryInWord::String -> String -> String -> IO(Bool,String)
isTryInWord sTry sWord wOS 
    | sTry == letter1 = return (True,letter1 ++ (drop 1 $ wOS))
    | sTry == letter2 = return (True,(take 1 wOS) ++ letter2 ++ (drop 2 $ wOS))
    | sTry == letter3 = return (True,(take 2 wOS) ++ letter3 ++ (drop 3 $ wOS))
    | sTry == letter4 = return (True,(take 3 wOS) ++ letter4 ++ (drop 4 $ wOS))
    | sTry == letter5 = return (True,(take 4 wOS) ++ letter5)
    | True = return (False,wOS)
    where letter1 = take 1 sWord
          letter2 = take 1 .drop 1 $ sWord
          letter3 = take 1 .drop 2 $ sWord
          letter4 = take 1 .drop 3 $ sWord
          letter5 = drop 4 $ sWord

                        
allLettersAreRight::String -> IO Bool
allLettersAreRight s 
    | letter1 == "_" = return False
    | letter2 == "_" = return False
    | letter3 == "_" = return False
    | letter4 == "_" = return False
    | letter5 == "_" = return False
    | True = return (True)
    where letter1 = take 1 s
          letter2 = take 1 .drop 1 $ s
          letter3 = take 1 .drop 2 $ s
          letter4 = take 1 .drop 3 $ s
          letter5 = drop 4 $ s
