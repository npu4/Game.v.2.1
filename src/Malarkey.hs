module Malarkey(
    malarkey
)where
import WhoRandom
import WithWhomRandom
import WhenRandom
import WhereRandom
import DoingRandom
import System.Random 

malarkey :: IO ()
malarkey = do
    putStrLn pictureOfGame
    putStrLn $ concat[  "Смысл игры в том, что мы с тобой должны поочереди \n"          ,
                        "отвечать на вопросы \"Кто?\", \"Когда?\", \"Что делал?\" \n"   ,
                        "и тому подобное, но каждый не знает, что написал \n"           ,
                        "другой, поэтому ответы будут несвязные. \n"                    ,
                        "В итоге должна получиться смешная \"чепуха\".\n"               ,
                        "Прошу тебя отвечать на вопрос \"Кто?\" с заглавной буквы, \n"  ,
                        "а на все остальные - с маленькой. Тогда ответ будет \n"        ,
                        "выглядеть гармонично с точки зрения написания предложения.\n"  ,
                        "Попробуем. Ты начинаешь!\n"                                    ]
                        
    putStrLn "Кто?"
    mWho <- getLine
    
    -- с кем
    numOfWithWhomWho <- randomRIO (0, 10)
    randWithWhom <- withWhomR numOfWithWhomWho
    
    putStrLn "Где?"
    mWhere <- getLine
    
    -- Когда
    numOfWhen <- randomRIO (0, 10)
    randWhen <- whenR numOfWhen
    
    putStrLn "Что делали?"
    mDo <- getLine
    
    putStrLn $ concat [ "Вот какая у нас получилась \"чепуха\":\n",
                        mWho, randWithWhom, mWhere, randWhen, mDo, "."]
                     
                     
    putStrLn "Поменяемся? Теперь я начну."
    
    -- Кто
    numOfWho <- randomRIO (0, 10)
    randWho <- whoR numOfWho
    
    putStrLn "С Кем?"
    mWithWhom <- getLine
    
    -- Где
    numOfWhere <- randomRIO (0, 10)
    randWhere <- whereR numOfWhere
    
    putStrLn "Когда?"
    mWhen <- getLine
    
    -- Что делали
    numOfDo <- randomRIO (0, 10)
    randDo <- doR numOfDo
    
    putStrLn $ concat [ "Вот какая у нас получилась \"чепуха\":\n",
                        randWho, mWithWhom, randWhere, mWhen, randDo]
                        
                        
pictureOfGame :: String
pictureOfGame = concat[ "```¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶",
                        "```¶¶`¶¶¶¶¶````````````````````````````````¶¶¶¶¶¶¶",
                        "```¶¶`````¶¶¶¶`````````````````````````¶¶¶¶¶````¶¶",
                        "```¶¶```````¶¶¶¶¶```````````````````¶¶¶¶¶```````¶¶",
                        "```¶¶```````````¶¶¶¶¶````````````¶¶¶¶```````````¶¶",
                        "```¶¶````````````¶¶¶¶¶¶```````¶¶¶¶¶¶¶```````````¶¶",
                        "```¶¶``````````¶¶¶````¶¶¶¶¶¶¶¶¶````¶¶¶¶`````````¶¶",
                        "```¶¶`````````¶¶¶````````¶¶¶````````¶¶¶¶````````¶¶",
                        "```¶¶``````¶¶¶¶````````````````````````¶¶```````¶¶",
                        "```¶¶`````¶¶¶¶``````````````````````````¶¶¶`````¶¶",
                        "```¶¶````¶¶``````````````````````````````¶¶¶¶```¶¶",
                        "```¶¶`¶¶¶¶``````````````````````````````````¶¶¶`¶¶",
                        "```¶¶¶¶¶¶````````````````````````````````````¶¶¶¶¶",
                        "```¶¶¶¶````````````````````````````````````````¶¶¶",
                        "```¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"  ]
