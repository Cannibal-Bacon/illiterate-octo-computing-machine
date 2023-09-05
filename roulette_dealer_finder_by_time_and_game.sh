#!/bin/bash

cat $1_Dealer_schedule |
grep -i "$2" |
awk -F " " -v $3=x '(x=Blackjack)(x=blackjack){print $1,$2,$3,$4} (x=Roulette)(x=roulette){print $1,$2,$5,$6} (x=Texas_Hold_Em)(x=texas_hold_em)(x=Texas)(x=texas){print $1,$2,$7,$8}'
