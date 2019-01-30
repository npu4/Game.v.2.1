module WhenRandom(
    whenR
)where

whenR :: Int -> IO(String)
whenR x = do
    case x of
         0 -> return (" в 2 часа ночи ")
         1 -> return (" во время сессии ")
         2 -> return (" на экзамене ")
         3 -> return (" в среду ")
         4 -> return (" вчера ")
         5 -> return (" перед знакомством ")
         6 -> return (" перед расставанием ")
         7 -> return (" когда забыли дома ключи ")
         8 -> return (" когда устали от забот ")
         9 -> return (" когда встретили лисичку ")
         10 -> return (" когда одновременно чихнули ")
