module DoingRandom(
    doR
)where

doR :: Int -> IO(String)
doR x = do
    case x of
         0 -> return (" боялись темноты.")
         1 -> return (" играли в бутылочку.")
         2 -> return (" устраивали апокалипсис.")
         3 -> return (" поступали в академию.")
         4 -> return (" сдавали мат.анализ.")
         5 -> return (" разбрасывались деньгами.")
         6 -> return (" целовались.")
         7 -> return (" продавали овощи.")
         8 -> return (" мяукали.")
         9 -> return (" истребляли пауков.")
         10 -> return (" красили ногти.")
