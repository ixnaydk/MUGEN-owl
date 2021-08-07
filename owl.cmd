[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

[Command]
name = "TSR"
command = ~D,DF,F,D,DB,B,x
time = 30

[Command]
name = "FGR"
command = ~D,DB,B,D,DF,F,y
time = 30

[Command]
name = "LC"
command = ~D,DF,F,D,DF,F,x
time = 20

[Command]
name = "LCF"
command = ~D,DB,B,D,DB,B,x
time = 20

[Command]
name = "BDF"
command = ~D,DB,B,D,DB,B,a
time = 20

[Command]
name = "EX"
command = ~D,DF,F,D,DF,F,a
time = 20

[Command]
name = "GFR"
command = ~D,DF,F,D,DF,F,y
time = 20

[Command]
name = "GB"
command = ~D,DF,F,D,DF,F,b
time = 20

[Command]
name = "OFW"
command = ~D,DB,B,D,DB,B,b
time = 20

[Command]
name = "VW"
command = ~D,DF,F,D,DB,B,a
time = 20

[Command]
name = "QCF_xy"
command = ~D,DF,F,x+y

[Command]
name = "FWall"
command = ~F,D,DF,a
time = 60

[Command]
name = "QCF_x"
command = ~D,DF,F,x

[Command]
name = "QCF_y"
command = ~D,DF,F,y

[Command]
name = "QCF_a"
command = ~D,DF,F,a

[Command]
name = "QCF_b"
command = ~D,DF,F,b

[Command]
name = "QCB_x"
command = ~D,DB,B,x

[Command]
name = "QCB_y"
command = ~D,DB,B,y

[Command]
name = "QCB_a"
command = ~D,DB,B,a

[Command]
name = "FF"
command = F,F
time = 10

[Command]
name = "BB"
command = B,B
time = 10

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "goblin_counter"
command = a+b
time = 30

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

[Command]
name = "IA"
command = D,D,D,D,D,D
time = 1

[Command]
name = "IA"
command = U,U,U,U,U,U
time = 1

[Command]
name = "IA"
command = B,B,B,B,B,B
time = 1

[Command] 
name = "IA"
command = F,F,F,F,F,F
time = 1

[Command]
name = "IA"
command = a,a,a,a,a,a
time = 1

[Command]
name = "IA"
command = b,b,b,b,b,b
time = 1

[Command]
name = "IA"
command = x,x,x,x,x,x
time = 1

[Command]
name = "IA"
command = y,y,y,y,y,y
time = 1

[Statedef -1]
;[State -1, IA]
;type = VarSet
;triggerall = roundstate = 2
;trigger1 = command = "IA"
;v = 59
;value = 1

[State -1]
type = ChangeState
value = 130
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType != A && EnemyNear,MoveType = A && EnemyNear, StateType != C && Ctrl)

[State -1]
type = ChangeState
value = 131
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType != A && EnemyNear,MoveType = A && EnemyNear,StateType = C && Ctrl)

[State -1]
type = ChangeState
value = 132
triggerall = (Var(59) > 0 && RoundState = 2 && Random < 950 && Ctrl)
trigger1 = (StateType = A && EnemyNear,MoveType = A && EnemyNear,StateType != C && Ctrl)

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 235

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
trigger2 = (StateNo=600&&MoveContact)
trigger3 = (StateNo=630&&MoveContact)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
trigger2 = (StateNo=600&&MoveContact)
trigger3 = (StateNo=630&&MoveContact)
value = 640

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 45) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1000&&MoveContact)
value = 1010

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 25) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1020

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1050

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1060

type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1070

type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1080

type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 1090

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3050

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3100

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3150

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 2000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3250

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3300

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) > 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)
value = 3350

;-------------------------------|
;Team Super - Goblin Hadouken   |
;-------------------------------|
[State -1, Team Super - Goblin Hadouken]
type = ChangeState
value = 3600
triggerall = NumPartner > 0
triggerall = Partner, Name = "Ixnaydk & SAM! Ryu" 
triggerall = Partner, StateType = S 
triggerall = Partner, Power >= 3000
triggerall = StateType = S
triggerall = Command = "TSR"
triggerall = Power >= 3000
trigger1 = StateType != A
trigger1 = Ctrl

;----------------|
;Owl Fire Wave   |
;----------------|
[State -1, Owl Fire Wave]
type = ChangeState
value = 3300
triggerall = command = "OFW"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;----------|
;Fogarel   |
;----------|
[State -1, Fogarel]
type = ChangeState
value = 3500
triggerall = var(56) >= 3000
triggerall = command = "FGR"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;---------------------|
;Lança Chamas Fraco   |
;---------------------|
[State -1, Lança Chamas Fraco]
type = ChangeState
value = 3000
triggerall = command = "LC"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;---------------------|
;Lança Chamas Forte   |
;---------------------|
[State -1, Lança Chamas Forte]
type = ChangeState
value = 3200
triggerall = command = "LCF"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;----------------|
;Bolas de Fogo   |
;----------------|
[State -1, Bolas de Fogo]
type = ChangeState
value = 3250
triggerall = command = "BDF"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-----------|
;Explosão   |
;-----------|
[State -1, Explosão]
type = ChangeState
value = 3050
triggerall = command = "EX"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-------------------|
;Goblin Fire Rush   |
;-------------------|
[State -1, Goblin Fire Rush]
type = ChangeState
value = 3100
triggerall = command = "GFR"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-------------|
;Giant Ball   |
;-------------|
[State -1, Giant Ball]
type = ChangeState
value = 3150
triggerall = command = "GB"
triggerall = power >= 2000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;----------------|
;Vulcanic Wave   |
;----------------|
[State -1, Vulcanic Wave]
type = ChangeState
value = 3350
triggerall = command = "VW"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-----------------------|
;Bola de Fogo Pequena   |
;-----------------------|
[State -1, Bola de Fogo Pequena]
type = ChangeState
value = 1080
triggerall = command = "QCB_y"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;---------|
;Choque   |
;---------|
[State -1, Choque]
type = ChangeState
value = 1020
triggerall = command = "QCF_xy"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;------------|
;Fire Wall   |
;------------|
[State -1, Fire Wall]
type = ChangeState
value = 1150
triggerall = Command = "FWall"
triggerall = Power >= 75
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-----------------------|
;Pequeno Lança Chamas   |
;-----------------------|
[State -1, Pequeno Lança Chamas]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = statetype != A 
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;--------------|
;Goblin Rush   |
;--------------|
[State -1, Goblin Rush]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1000&&MoveContact)

;--------|
;Pega!   |
;--------|
[State -1, Pega!]
type = ChangeState
value = 1050
triggerall = command = "QCF_a"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)

;----------------|
;Bola de Ferro   |
;----------------|
[State -1, Bola de Ferro]
type = ChangeState
value = 1060
triggerall = command = "QCF_b"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1000&&MoveContact)
trigger8 = (StateNo=1010&&MoveContact)

;---------------------|
;Bola de Fogo Média   |
;---------------------|
[State -1, Bola de Fogo Média]
type = ChangeState
value = 1070
triggerall = command = "QCB_x"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;------------------|
;Tornado de Fogo   |
;------------------|
[State -1, Tornado de Fogo]
type = ChangeState
value = 1090
triggerall = command = "QCB_a"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)
trigger7 = (StateNo=1010&&MoveContact)

;-----------------|
;Goblin Counter   |
;-----------------|
[State -1, Goblin Counter]
type = ChangeState
value = 6008
triggerall = command = "goblin_counter"
triggerall = power >= 500
triggerall = StateType != A
triggerall = P2BodyDist X <= 50
trigger1 = StateNo = 150 
trigger1 = StateNo = 153

;---------|
;Correr   |
;---------|
[State -1, Correr]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;----------------|
;Pulo Pra Tras   |
;----------------|
[State -1, Pulo Pra Tras]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;-------------|
;Soco Fraco   |
;-------------|
[State -1, Soco Fraco]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-------------|
;Soco Forte   |
;-------------|
[State -1, Soco Forte]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)


;--------------|
;Chute Fraco   |
;--------------|
[State -1, Chute Fraco]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = P2BodyDist X > 7
trigger1 = statetype = S
trigger1 = ctrl

;--------------------|
;Chute Fraco Perto   |
;--------------------|
[State -1, Chute Fraco Perto]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = P2BodyDist X <= 7
trigger1 = statetype = S
trigger1 = ctrl

;--------------|
;Chute Forte   |
;--------------|
[State -1, Chute Forte]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)

;----------------------|
;Soco Fraco Abaixado   |
;----------------------|
[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;----------------------|
;Soco Forte Abaixado   |
;----------------------|
[State -1, Soco Forte Abaixado]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)

;-----------------------|
;Chute Fraco Abaixado   |
;-----------------------|
[State -1, Chute Fraco Abaixado]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;-----------------------|
;Chute Forte Abaixado   |
;-----------------------|
[State -1, Chute Forte Abaixado]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (StateNo=200&&MoveContact)
trigger3 = (StateNo=230&&MoveContact)
trigger4 = (StateNo=235&&MoveContact)
trigger5 = (StateNo=400&&MoveContact)
trigger6 = (StateNo=430&&MoveContact)

;-------------------|
;Soco Fraco Aéreo   |
;-------------------|
[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;-------------------|
;Soco Forte Aéreo   |
;-------------------|
[State -1, Soco Forte Aéreo]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo=600&&MoveContact)
trigger3 = (StateNo=630&&MoveContact)

;--------------------|
;Chute Fraco Aéreo   |
;--------------------|
[State -1, Chute Fraco Aéreo]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;--------------------|
;Chute Forte Aéreo   |
;--------------------|
[State -1, Chute Forte Aéreo]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (StateNo=600&&MoveContact)
trigger3 = (StateNo=630&&MoveContact)

;--------|  
;Taunt   |
;--------|
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;----------------|
;Taunt Counter   |
;----------------|
[State -1, Taunt Counter]
type = ChangeState
value = 6000
triggerall = RoundState = 2
triggerall = stateno != 6000
triggerall = P2stateno = 195
triggerall = statetype != A
triggerall = P2statetype = S
trigger1 = statetype = S