# gf180_opamp_big

面積と消費電力を犠牲にして、それなりの性能を持ったオペアンプを作りました。
ボルテージフォロワとしては、入出力3MHzぐらいまでならまともに動きます。

# 特性評価
工事中。ベンチマークはこちらから。

https://github.com/atuchiya/openmpw-transistor-level-examples

## opamp_ac
* 開ループゲイン : 89.1dB
* ユニティゲイン周波数 : 36.7MHz
* 位相余裕 : 45度

## opamp_cmrr
* 開ループゲイン : 89.1dB
* コモンモードゲイン : -37.2dB
* CMRR : 126.3dB (max)

## opamp_pc_tran
* パルス波入力時の消費電流 : 最大830uA
* スルーレート : 1V/28.16838ns -> 35.5V/μs

## opamp_vf
* ボルテージフォロワの定常誤差 : 最大3.1mV

## opamp_vf_i
* 3MHz正弦波入出力時の最大消費電流：最大520uA
