module FinishOfTheCleverest(
  finish
)where
 
finish::Int -> IO()
finish score = do
    case score of
         1 ->   putStrLn $ looseFrom1To5 "К сожалению, ты не набрал баллов.\n"
         2 ->   putStrLn $ looseFrom1To5 "К сожалению, ты набрал всего 1 балл.\n"
         3 ->   putStrLn $ looseFrom1To5 "К сожалению, ты набрал всего 2 балла.\n"
         4 ->   putStrLn $ looseFrom1To5 "К сожалению, ты набрал всего 3 балла.\n"
         5 ->   putStrLn $ looseFrom1To5 "К сожалению, ты набрал всего 4 балла.\n"
         6 ->   putStrLn $ looseFrom6To10 "5"
         7 ->   putStrLn $ looseFrom6To10 "8"
         8 ->   putStrLn $ looseFrom6To10 "11"
         9 ->   putStrLn $ looseFrom6To10 "14"
         10 ->  putStrLn $ looseFrom6To10 "17"
         11 ->  putStrLn $ looseFrom11To14 "20"
         12 ->  putStrLn $ looseFrom11To14 "25"
         13 ->  putStrLn $ looseFrom11To14 "30" 
         14 ->  putStrLn $ looseFrom11To14 "35"
         15 ->  putStrLn loose15
         
         
looseFrom1To5 :: String -> String
looseFrom1To5 s = concat[ "Неправильно.\n"                                          ,  
                          s                                                         , 
                          "Не расстраивайся, приходи ещё поиграть, \n"              ,
                          "в следующий раз у тебя всё получится!"                   ]
                          
looseFrom6To10 :: String -> String
looseFrom6To10 s = concat[  "Неправильно.\n"                                        , 
                            "Ты набрал ", s, " баллов. Это неплохой результат.\n"   ,
                            "Приходи ещё поиграть, в следующий раз у тебя \n"       ,
                            "получится лучше!"                                      ]
                           
looseFrom11To14 :: String -> String
looseFrom11To14 s = concat[ "Неправильно.\n"                                        ,  
                            "Ты набрал ", s, "баллов. Хороший результат! \n"        ,
                            "Приходи ещё поиграть, в следующий раз у тебя \n"       ,
                            "получится ещё лучше!"                                  ]
                           
loose15 :: String
loose15 = concat[           "Неправильно.\n"                                        ,  
                            "Ты набрал 40. Отличный результат! \n"                  , 
                            "Приходи ещё поиграть, в следующий раз у тебя \n"       ,
                            "получится ещё лучше!"                                  ]

