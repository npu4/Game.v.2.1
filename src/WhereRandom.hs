module WhereRandom(
    whereR
)where

whereR :: Int -> IO(String)
whereR x = do
    case x of
         0 -> return (" в колизее ")
         1 -> return (" в параллельной Вселенной ")
         2 -> return (" за круглым столом ")
         3 -> return (" в баре ")
         4 -> return (" на краю земли ")
         5 -> return (" в волчьей шкуре ")
         6 -> return (" на колу ")
         7 -> return (" в тихом омуте ")
         8 -> return (" в дремучем лесу ")
         9 -> return (" под шубой ")
         10 -> return (" в коробке от холодильника ")
