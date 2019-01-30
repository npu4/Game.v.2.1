module WhoRandom(
    whoR
)where

whoR :: Int -> IO(String)
whoR x = do
    case x of
         0 -> return ("Крокодил ")
         1 -> return ("Тушканчик ")
         2 -> return ("Пирожок с ничем ")
         3 -> return ("Студент ")
         4 -> return ("Котик ")
         5 -> return ("Генерал ")
         6 -> return ("Хозяин зоопарка ")
         7 -> return ("Пират ")
         8 -> return ("Пули от бабули ")
         9 -> return ("Рачок ")
         10 -> return ("Говорливая медуза ")
