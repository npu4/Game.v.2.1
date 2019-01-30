module Hello(
    hello
)where

hello :: IO (String, Integer)
hello = do
    putStrLn $  "Привет! Я здесь, чтобы играть с тобой. Меня зовут Феликс. \n" ++
                "Напиши своё имя, пожалуйста, чтобы я знал, как обращаться к тебе."
    name <- getLine
    putStrLn $ concat[  "Приятно познакомиться, ", name, "! \n"                     ,
                        "Выбери, во что ты хочешь поирать со мной и напиши номер \n",
                        "этой игры из списка:\n"                                    ,
                        "  1. Виселица\n"                                           ,
                        "  2. Самый Умный\n"                                        ,
                        "  3. Чепуха\n"                                             ,
                        "  4. Быки и Коровы"                                        ]
    typeofgame <- getLine 
    let numberofgame = read $ take 1 typeofgame
    return (name, numberofgame)
