" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
  finish
endif

syntax clear rustOperator

syntax keyword rustOperator as
syntax match rustOperator display "\%(+\|\^\|&\||\|>\|<\)"
syntax match rustOperator display "\%(+\|-\|*\|\^\|&\||\|%\)="

syntax match rustCuteOperator " \zs!" conceal cchar=¬

syntax match rustCuteOperator "-\ze=\?" conceal cchar=−

syntax match rustCuteOperator "<=" conceal cchar=≤
syntax match rustCuteOperator ">=" conceal cchar=≥
syntax match rustCuteOperator "!=" conceal cchar=≠
syntax match rustCuteOperator " \zs==\ze " conceal cchar=≡

syntax match rustCuteOperator "&&" conceal cchar=∧
syntax match rustCuteOperator "||" conceal cchar=∨

syntax match rustCuteOperator "->" conceal cchar=→
syntax match rustCuteOperator "=>" conceal cchar=↦

syntax match rustCuteOperator " \zs>>\ze " conceal cchar=»
syntax match rustCuteOperator " \zs<<\ze " conceal cchar=«

syntax match rustCuteOperator "::<" conceal cchar=<

syntax keyword rustCuteKeyword for conceal cchar=∀
syntax keyword rustCuteKeyword in conceal cchar=∈
syntax keyword rustCuteKeyword match conceal cchar=∃
syntax keyword rustCuteKeyword pub conceal cchar=⸙
syntax keyword rustCuteKeyword fn conceal cchar=λ
syntax keyword rustCuteStorage mut conceal cchar=∫

syntax keyword rustCuteKeyword struct conceal cchar=§
syntax keyword rustCuteKeyword impl conceal cchar=⫸

" Only conceal the following if surrounded by a single space on each
" side, to avoid concealing dereferencing.
syntax match rustCuteOperator " \zs\*\ze=\? " conceal cchar=×

hi link rustCuteOperator Operator
hi link rustCuteKeyword Keyword
hi link rustCuteStorage StorageClass
hi! link Conceal Operator

setlocal conceallevel=1
