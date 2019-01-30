module WithWhomRandom(
    withWhomR
)where

withWhomR :: Int -> IO(String)
withWhomR x = do
    case x of
         0 -> return (" с грамотным попугаем ")
         1 -> return (" с самураем ")
         2 -> return (" с половиной снегурочки ")
         3 -> return (" с обезьянкой ")
         4 -> return (" с сыном маминой подруги ")
         5 -> return (" с акробатом ")
         6 -> return (" с ласковой синичкой ")
         7 -> return (" с проворливым индюком ")
         8 -> return (" с болтуном ")
         9 -> return (" с вруном ")
         10 -> return (" с внуком ")
