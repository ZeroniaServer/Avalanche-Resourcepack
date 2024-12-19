kill @e[type=interaction,tag=protect]
summon interaction -14 48 -236 {width:0.5f,height:0.5f,Tags:["protect"]}
summon interaction -112 48 -206 {width:0.5f,height:0.5f,Tags:["protect"]}
data merge block -28 49 -147 {lock:{items:"bone",count:1}}
data merge block -29 49 -147 {lock:{items:"bone",count:1}}
data merge block -33 49 -147 {lock:{items:"bone",count:1}}