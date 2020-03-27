#Single

#Liveloop que servirá como base de toda la canción
live_loop :bass do
  use_bpm = 60
  sample :drum_heavy_kick
  sleep 1
  sample :drum_cymbal_pedal
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
end


#Ciclo 1. Introduce la guitarra
3.times do
  sample :elec_triangle
  sample :perc_door
  sample :guit_e_fifths
  sleep 1
  sample :bass_hit_c
  sleep 1
  sample :bd_sone
  sleep 1
  sample :bd_ada
  sleep 1
  sample :guit_em9
end

#Variación de percusión
sample :drum_bass_hard
sleep 1
sample :drum_bass_hard
sleep 1
sample :drum_bass_hard
sample :drum_bass_soft
sample :drum_cymbal_open
sleep 0.5


sleep 0.5
sample :drum_bass_hard
sample :drum_bass_soft
sleep 0.5
sample :drum_bass_hard
sample :drum_bass_soft

sleep 0.5
sample :drum_bass_hard
sample :drum_bass_soft
sample :guit_em9
sleep 1


#Ciclo 2. Introducción de sintetizadores y piano.
4.times do
  use_bpm = 60
  sample :ambi_haunted_hum
  play chord(:c3, :minor).choose, sustain: 2, amp: 0.5
  use_bpm = 90
  sample :drum_heavy_kick
  sleep 1
  sample :drum_cymbal_pedal
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  use_bpm = 10
  sample :ambi_piano, amp: 2
  play chord(:e3, :minor).choose, sustain: 2, amp: 0.5
  sleep 1
  play choose(chord(:a3, :minor)), amp: 0.5, releaes: 0.3, cutoff: rrand_i(70, 100)
  sleep 1
  play choose(chord(:D3, :minor)), amp: 0.5, releaes: 0.3, cutoff: rrand_i(70, 100)
  sleep 0.5
end

sleep 5

#Ciclo 3. Cambio de sintetizador y uso de guitarra.
5.times do
  use_bpm = 60
  sample :drum_heavy_kick
  sleep 1
  sample :drum_cymbal_pedal
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :drum_cymbal_pedal
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :guit_em9, amp: 2
  use_bpm = 90
  sample :bd_sone, amp: 1
  play chord(:c5, :minor).choose, sustain: 2, amp: 1
  sleep 1
  play choose(chord(:E3, :minor)), amp: 1, releaes: 0.3, cutoff: rrand_i(70, 100)
  sleep 0.5
end

#Ciclo 4. Regreso a sinteizador inicial y piano
6.times do
  use_bpm = 60
  sample :drum_heavy_kick
  sleep 1
  sample :bd_mehackit
  sleep 0.25
  sample :bd_boom
  sleep 0.25
  sample :glitch_perc3
  sleep 0.25
  sample :drum_snare_soft
  sleep 0.25
  sample :ambi_lunar_land, sustain: 1
  use_bpm = 90
  sample :ambi_piano, amp: 2
  play choose(chord(:f3, :minor)), sustain: 2, amp: 0.5
  sleep 1
  play choose(chord(:D3, :minor)), amp: 1, releaes: 0.3, cutoff: rrand_i(70, 100)
  sleep 0.5
end