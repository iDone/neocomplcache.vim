scriptencoding utf-8

" Saving 'cpoptions' {{{
let s:save_cpo = &cpo
set cpo&vim
" }}}

Context types
  It tests escape string.
    ShouldEqual neocomplcache#filters#matcher_fuzzy#escape(
          \ 'abc'), 'a.*b.*c.*'
    ShouldEqual neocomplcache#filters#matcher_fuzzy#escape(
          \ '%a%b%c'), '%%a.*%%b.*%%c.*'
    ShouldEqual neocomplcache#filters#matcher_fuzzy#escape(
          \ '%[ab]c'), '%%%[a.*b.*%]c.*'
  End
End

Fin

" Restore 'cpoptions' {{{
let &cpo = s:save_cpo
" }}}

" vim:foldmethod=marker:fen:
