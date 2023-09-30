v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -260 330 -260 {
lab=in}
N 80 -60 390 -60 {
lab=GND}
N 80 -60 80 -40 {
lab=GND}
N 450 -240 490 -240 {
lab=out}
N 490 -240 490 -220 {
lab=out}
N 490 -160 490 -110 {
lab=GND}
N 390 -180 390 -100 {
lab=GND}
N 390 -350 390 -300 {
lab=VDD}
N 390 -60 490 -60 {
lab=GND}
N 270 -220 270 -190 {
lab=out}
N 270 -220 330 -220 {
lab=out}
N 470 -240 470 -170 {
lab=out}
N 270 -190 270 -150 {
lab=out}
N 350 -150 470 -150 {
lab=out}
N 470 -170 470 -150 {
lab=out}
N 490 -110 490 -60 {
lab=GND}
N 390 -100 390 -60 {
lab=GND}
N 270 -150 350 -150 {
lab=out}
C {devices/code_shown.sym} -470 -400 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -470 -300 0 0 {name=control only_toplevel=false value="
vpwr vdd 0 dc 3.3
vdin in 0 ac 1 sin(1.65 1.65 3Meg)
.control
save all
tran 0.01u 6u
plot v(in) v(out)
plot v(out)-v(in)
plot vpwr#branch
.endc"}
C {devices/gnd.sym} 80 -40 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 490 -240 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 490 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {opamp.sym} 350 -240 0 0 {name=X1}
C {devices/vdd.sym} 390 -350 0 0 {name=l2 lab=VDD}
C {devices/iopin.sym} 220 -260 0 1 {name=p2 lab=in}
