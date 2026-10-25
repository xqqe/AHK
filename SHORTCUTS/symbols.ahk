#Requires AutoHotkey v2.0
#SingleInstance Force

; ============================================
; FORMATTING
; ============================================

:*?:\linebreak::____________________________________________________________________________________
:*?:\dashbreak::---------------------------

; ============================================
; TYPOGRAPHY & PUNCTUATION
; ============================================

:*?:\emdash::—
:*?:--::—
:*?:\endash::–
:*?:\ellipsis::…
:*?:\nbsp:: 
:*?:\copyright::©
:*?:\registered::®
:*?:\trademark::™
:*?:\section::§
:*?:\paragraph::¶
:*?:\dagger::†
:*?:\ddagger::‡
:*?:\middot::·
:*?:\guillemetleft::«
:*?:\guillemetright::»
:*?:\lquote::“
:*?:\rquote::”
:*?:\lsingle::‘
:*?:\rsingle::’
:*?:\check::✓
:*?:\cross::✗
:*?:\ballot::☐
:*?:\checked::☑

; ============================================
; SHAPES & MISCELLANEOUS
; ============================================

:*?:\heart::♥
:*?:\star::★
:*?:\hollowstar::☆
:*?:\diamond::◆
:*?:\hollowdiamond::◇
:*?:\circle::●
:*?:\hollowcircle::○
:*?:\square::■
:*?:\hollowsquare::□
:*?:\triangle::▲
:*?:\hollowtriangle::△
:*?:\warning::⚠
:*?:\info::ℹ
:*?:\sun::☀
:*?:\skull::☠
:*?:\moon::☾
:*?:\male::♂
:*?:\female::♀
:*?:\music::♫
:*?:\spade::♠
:*?:\club::♣
:*?:\heartcard::♥
:*?:\diamondcard::♦

; ============================================
; CURRENCY
; ============================================

:*?:\euro::€
:*?:\pound::£
:*?:\yen::¥
:*?:\cent::¢
:*?:\rupee::₹
:*?:\won::₩
:*?:\bitcoin::₿

; ============================================
; GREEK LETTERS — LOWERCASE
; ============================================

:*?:\alpha::α
:*?:\beta::β
:*?:\gamma::γ
:*?:\delta::δ
:*?:\epsilon::ε
:*?:\zeta::ζ
:*?:\eta::η
:*?:\theta::θ
:*?:\iota::ι
:*?:\kappa::κ
:*?:\lambda::λ
:*?:\mu::μ
:*?:\nu::ν
:*?:\xi::ξ
:*?:\omicron::ο
:*?:\pi::π
:*?:\rho::ρ
:*?:\sigma::σ
:*?:\tau::τ
:*?:\upsilon::υ
:*?:\phi::φ
:*?:\chi::χ
:*?:\psi::ψ
:*?:\omega::ω

; Greek variants
:*?:\varepsilon::ϵ
:*?:\vartheta::ϑ
:*?:\varpi::ϖ
:*?:\varrho::ϱ
:*?:\varsigma::ς
:*?:\varphi::ϕ

; ============================================
; GREEK LETTERS — UPPERCASE
; ============================================

:*?:\Gamma::Γ
:*?:\Delta::Δ
:*?:\Theta::Θ
:*?:\Lambda::Λ
:*?:\Xi::Ξ
:*?:\Pi::Π
:*?:\Sigma::Σ
:*?:\Upsilon::Υ
:*?:\Phi::Φ
:*?:\Psi::Ψ
:*?:\Omega::Ω

; ============================================
; MATHEMATICAL OPERATORS
; ============================================

:*?:\pm::±
:*?:\mp::∓
:*?:\times::×
:*?:\div::÷
:*?:\cdot::·
:*?:\sqrt::√
:*?:\cbrt::∛
:*?:\infty::∞
:*?:\approx::≈
:*?:\neq::≠
:*?:\equiv::≡
:*?:\leq::≤
:*?:\geq::≥
:*?:\ll::≪
:*?:\gg::≫
:*?:\propto::∝
:*?:\sim::∼
:*?:\simeq::≃
:*?:\cong::≅
:*?:\perp::⊥
:*?:\parallel::∥
:*?:\angle::∠
:*?:\degree::°
:*?:\partial::∂
:*?:\nabla::∇
:*?:\sum::∑
:*?:\prod::∏
:*?:\int::∫
:*?:\iint::∬
:*?:\iiint::∭
:*?:\oint::∮
:*?:\therefore::∴
:*?:\because::∵

; ============================================
; SET THEORY & LOGIC
; ============================================

:*?:\forall::∀
:*?:\exists::∃
:*?:\nexists::∄
:*?:\in::∈
:*?:\notin::∉
:*?:\ni::∋
:*?:\subset::⊂
:*?:\supset::⊃
:*?:\subseteq::⊆
:*?:\supseteq::⊇
:*?:\cup::∪
:*?:\cap::∩
:*?:\emptyset::∅
:*?:\land::∧
:*?:\lor::∨
:*?:\neg::¬
:*?:\oplus::⊕
:*?:\otimes::⊗
:*?:\vdash::⊢
:*?:\models::⊨
:*?:\top::⊤
:*?:\bot::⊥

; ============================================
; ARROWS
; ============================================

:*?:\left::←
:*?:\right::→
:*?:\inhibit::⊣
:*?:\up::↑
:*?:\down::↓
:*?:\leftright::↔
:*?:\updown::↕
:*?:\Leftarrow::⇐
:*?:\Rightarrow::⇒
:*?:\Leftrightarrow::⇔
:*?:\Uparrow::⇑
:*?:\Downarrow::⇓
:*?:\mapsto::↦
:*?:\nearrow::↗
:*?:\searrow::↘
:*?:\swarrow::↙
:*?:\nwarrow::↖
:*?:\hookright::↪
:*?:\hookleft::↩
:*?:\rightleft::⇄
:*?:\leftrightarrow::↔

; ============================================
; SUPERSCRIPTS & SUBSCRIPTS
; ============================================

; Superscript numbers
:*?:\^0::⁰
:*?:\^1::¹
:*?:\^2::²
:*?:\^3::³
:*?:\^4::⁴
:*?:\^5::⁵
:*?:\^6::⁶
:*?:\^7::⁷
:*?:\^8::⁸
:*?:\^9::⁹
:*?:\^+::⁺
:*?:\^-::⁻
:*?:\^=::⁼

; Subscript numbers
:*?:\_0::₀
:*?:\_1::₁
:*?:\_2::₂
:*?:\_3::₃
:*?:\_4::₄
:*?:\_5::₅
:*?:\_6::₆
:*?:\_7::₇
:*?:\_8::₈
:*?:\_9::₉
:*?:\_+::₊
:*?:\_-::₋
:*?:\_=::₌

; ============================================
; SCIENCE & ENGINEERING
; ============================================

:*?:\micro::µ
:*?:\angstrom::Å
:*?:\ohm::Ω
:*?:\degree::°
!o::SendText "°"
:*?:\hbar::ℏ
:*?:\planck::ℎ
:*?:\del::∇
:*?:\increment::∆
:*?:\diameter::⌀
:*?:\bullet::•
:*?:\middle::·
:*?:\prime::′
:*?:\dprime::″
:*?:\tprime::‴
:*?:\permille::‰