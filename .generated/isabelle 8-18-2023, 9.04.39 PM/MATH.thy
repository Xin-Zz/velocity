(* VDM to Isabelle Translation @2023-08-18T13:04:39.641362Z
   Copyright 2021, Leo Freitas, leo.freitas@newcastle.ac.uk

in 'c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl' at line 1:8
files = [c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl]
*)
theory MATH
imports "VDMToolkit" 
begin


\<comment>\<open>VDM source: sin: (real +> real)
	sin(v) ==
not yet specified
	post ((abs RESULT) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 18:5\<close>

\<comment>\<open>VDM source: pre_sin: (real +> bool)
	pre_sin(v) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 18:5\<close>
definition
	pre_sin :: "VDMReal \<Rightarrow> bool"
where
	"pre_sin v \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_sin` specification.\<close>
		((inv_VDMReal v))"


\<comment>\<open>VDM source: post_sin: (real * real +> bool)
	post_sin(v, RESULT) ==
((abs RESULT) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 21:21\<close>
definition
	post_sin :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_sin v   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `post_sin` specification.\<close>
		(pre_sin v \<longrightarrow> ((inv_VDMReal v)  \<and>  (inv_VDMReal RESULT)))  \<and> 
		\<comment>\<open>User defined body of post_sin.\<close>
		((vdm_abs RESULT) \<le> (1::VDMNat1))"

definition
	sin :: "VDMReal \<Rightarrow> VDMReal"
where
	"sin v \<equiv> 
	\<comment>\<open>User defined body of sin.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: cos: (real +> real)
	cos(v) ==
not yet specified
	post ((abs RESULT) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 23:5\<close>

\<comment>\<open>VDM source: pre_cos: (real +> bool)
	pre_cos(v) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 23:5\<close>
definition
	pre_cos :: "VDMReal \<Rightarrow> bool"
where
	"pre_cos v \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_cos` specification.\<close>
		((inv_VDMReal v))"


\<comment>\<open>VDM source: post_cos: (real * real +> bool)
	post_cos(v, RESULT) ==
((abs RESULT) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 26:21\<close>
definition
	post_cos :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_cos v   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `post_cos` specification.\<close>
		(pre_cos v \<longrightarrow> ((inv_VDMReal v)  \<and>  (inv_VDMReal RESULT)))  \<and> 
		\<comment>\<open>User defined body of post_cos.\<close>
		((vdm_abs RESULT) \<le> (1::VDMNat1))"

definition
	cos :: "VDMReal \<Rightarrow> VDMReal"
where
	"cos v \<equiv> 
	\<comment>\<open>User defined body of cos.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: tan: (real -> real)
	tan(a) ==
not yet specified
	pre (cos(a) <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 28:5\<close>

\<comment>\<open>VDM source: pre_tan: (real +> bool)
	pre_tan(a) ==
(cos(a) <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 31:16\<close>
definition
	pre_tan :: "VDMReal \<Rightarrow> bool"
where
	"pre_tan a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_tan` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_tan.\<close>
		((cos a) \<noteq> (0::VDMNat))"


\<comment>\<open>VDM source: post_tan: (real * real +> bool)
	post_tan(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 28:5\<close>
definition
	post_tan :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_tan a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_tan` specification.\<close>
		(pre_tan a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	tan :: "VDMReal \<Rightarrow> VDMReal"
where
	"tan a \<equiv> 
	\<comment>\<open>User defined body of tan.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: cot: (real -> real)
	cot(a) ==
not yet specified
	pre (sin(a) <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 33:5\<close>

\<comment>\<open>VDM source: pre_cot: (real +> bool)
	pre_cot(a) ==
(sin(a) <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 36:16\<close>
definition
	pre_cot :: "VDMReal \<Rightarrow> bool"
where
	"pre_cot a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_cot` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_cot.\<close>
		((sin a) \<noteq> (0::VDMNat))"


\<comment>\<open>VDM source: post_cot: (real * real +> bool)
	post_cot(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 33:5\<close>
definition
	post_cot :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_cot a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_cot` specification.\<close>
		(pre_cot a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	cot :: "VDMReal \<Rightarrow> VDMReal"
where
	"cot a \<equiv> 
	\<comment>\<open>User defined body of cot.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: asin: (real -> real)
	asin(a) ==
not yet specified
	pre ((abs a) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 38:5\<close>

\<comment>\<open>VDM source: pre_asin: (real +> bool)
	pre_asin(a) ==
((abs a) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 41:15\<close>
definition
	pre_asin :: "VDMReal \<Rightarrow> bool"
where
	"pre_asin a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_asin` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_asin.\<close>
		((vdm_abs a) \<le> (1::VDMNat1))"


\<comment>\<open>VDM source: post_asin: (real * real +> bool)
	post_asin(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 38:5\<close>
definition
	post_asin :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_asin a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_asin` specification.\<close>
		(pre_asin a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	asin :: "VDMReal \<Rightarrow> VDMReal"
where
	"asin a \<equiv> 
	\<comment>\<open>User defined body of asin.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: acos: (real -> real)
	acos(a) ==
not yet specified
	pre ((abs a) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 43:5\<close>

\<comment>\<open>VDM source: pre_acos: (real +> bool)
	pre_acos(a) ==
((abs a) <= 1)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 46:15\<close>
definition
	pre_acos :: "VDMReal \<Rightarrow> bool"
where
	"pre_acos a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_acos` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_acos.\<close>
		((vdm_abs a) \<le> (1::VDMNat1))"


\<comment>\<open>VDM source: post_acos: (real * real +> bool)
	post_acos(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 43:5\<close>
definition
	post_acos :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_acos a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_acos` specification.\<close>
		(pre_acos a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	acos :: "VDMReal \<Rightarrow> VDMReal"
where
	"acos a \<equiv> 
	\<comment>\<open>User defined body of acos.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: atan: (real +> real)
	atan(v) ==
not yet specified\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 48:5\<close>

\<comment>\<open>VDM source: pre_atan: (real +> bool)
	pre_atan(v) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 48:5\<close>
definition
	pre_atan :: "VDMReal \<Rightarrow> bool"
where
	"pre_atan v \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_atan` specification.\<close>
		((inv_VDMReal v))"


\<comment>\<open>VDM source: post_atan: (real * real +> bool)
	post_atan(v, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 48:5\<close>
definition
	post_atan :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_atan v   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_atan` specification.\<close>
		(pre_atan v \<longrightarrow> ((inv_VDMReal v)  \<and>  (inv_VDMReal RESULT)))"

definition
	atan :: "VDMReal \<Rightarrow> VDMReal"
where
	"atan v \<equiv> 
	\<comment>\<open>User defined body of atan.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: acot: (real +> real)
	acot(a) ==
atan((1 / a))
	pre (a <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 52:5\<close>

\<comment>\<open>VDM source: pre_acot: (real +> bool)
	pre_acot(a) ==
(a <> 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 55:11\<close>
definition
	pre_acot :: "VDMReal \<Rightarrow> bool"
where
	"pre_acot a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_acot` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_acot.\<close>
		(a \<noteq> (0::VDMNat))"


\<comment>\<open>VDM source: post_acot: (real * real +> bool)
	post_acot(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 52:5\<close>
definition
	post_acot :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_acot a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_acot` specification.\<close>
		(pre_acot a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	acot :: "VDMReal \<Rightarrow> VDMReal"
where
	"acot a \<equiv> 
	\<comment>\<open>User defined body of acot.\<close>
	(atan ((1::VDMNat1) / a))"

	
	
\<comment>\<open>VDM source: sqrt: (real -> real)
	sqrt(a) ==
not yet specified\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 57:5\<close>

\<comment>\<open>VDM source: pre_sqrt: (real +> bool)
	pre_sqrt(a) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 57:5\<close>
definition
	pre_sqrt :: "VDMReal \<Rightarrow> bool"
where
	"pre_sqrt a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_sqrt` specification.\<close>
		((inv_VDMReal a))"


\<comment>\<open>VDM source: post_sqrt: (real * real +> bool)
	post_sqrt(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 57:5\<close>
definition
	post_sqrt :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_sqrt a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_sqrt` specification.\<close>
		(pre_sqrt a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	sqrt :: "VDMReal \<Rightarrow> VDMReal"
where
	"sqrt a \<equiv> 
	\<comment>\<open>User defined body of sqrt.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: pi_f: (() +> real)
	pi_f() ==
not yet specified\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 62:5\<close>

\<comment>\<open>VDM source: pre_pi_f: (() +> bool)
	pre_pi_f() ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 62:5\<close>
definition
	pre_pi_f :: "bool"
where
	"pre_pi_f  \<equiv> True"


\<comment>\<open>VDM source: post_pi_f: (real +> bool)
	post_pi_f(RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 62:5\<close>
definition
	post_pi_f :: "VDMReal \<Rightarrow> bool"
where
	"post_pi_f RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_pi_f` specification.\<close>
		(pre_pi_f  \<longrightarrow> ((inv_VDMReal RESULT)))"

definition
	pi_f :: "VDMReal"
where
	"pi_f  \<equiv> 
	\<comment>\<open>User defined body of pi_f.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: fac: (nat -> nat1)
	fac(a) ==
not yet specified
	pre (a < 21)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 66:2\<close>

\<comment>\<open>VDM source: pre_fac: (nat +> bool)
	pre_fac(a) ==
(a < 21)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 69:11\<close>
definition
	pre_fac :: "VDMNat \<Rightarrow> bool"
where
	"pre_fac a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_fac` specification.\<close>
		((inv_VDMNat a))  \<and> 
		\<comment>\<open>User defined body of pre_fac.\<close>
		(a < (21::VDMNat1))"


\<comment>\<open>VDM source: post_fac: (nat * nat1 +> bool)
	post_fac(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 66:2\<close>
definition
	post_fac :: "VDMNat \<Rightarrow> VDMNat1 \<Rightarrow> bool"
where
	"post_fac a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_fac` specification.\<close>
		(pre_fac a \<longrightarrow> ((inv_VDMNat a)  \<and>  (inv_VDMNat1 RESULT)))"

definition
	fac :: "VDMNat \<Rightarrow> VDMNat1"
where
	"fac a \<equiv> 
	\<comment>\<open>User defined body of fac.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: exp: (real +> real)
	exp(a) ==
not yet specified\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 89:5\<close>

\<comment>\<open>VDM source: pre_exp: (real +> bool)
	pre_exp(a) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 89:5\<close>
definition
	pre_exp :: "VDMReal \<Rightarrow> bool"
where
	"pre_exp a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_exp` specification.\<close>
		((inv_VDMReal a))"


\<comment>\<open>VDM source: post_exp: (real * real +> bool)
	post_exp(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 89:5\<close>
definition
	post_exp :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_exp a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_exp` specification.\<close>
		(pre_exp a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	exp :: "VDMReal \<Rightarrow> VDMReal"
where
	"exp a \<equiv> 
	\<comment>\<open>User defined body of exp.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: ln: (real -> real)
	ln(a) ==
not yet specified
	pre (a > 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 93:5\<close>

\<comment>\<open>VDM source: pre_ln: (real +> bool)
	pre_ln(a) ==
(a > 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 96:11\<close>
definition
	pre_ln :: "VDMReal \<Rightarrow> bool"
where
	"pre_ln a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_ln` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_ln.\<close>
		(a > (0::VDMNat))"


\<comment>\<open>VDM source: post_ln: (real * real +> bool)
	post_ln(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 93:5\<close>
definition
	post_ln :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_ln a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_ln` specification.\<close>
		(pre_ln a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	ln :: "VDMReal \<Rightarrow> VDMReal"
where
	"ln a \<equiv> 
	\<comment>\<open>User defined body of ln.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: log: (real -> real)
	log(a) ==
not yet specified
	pre (a > 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 98:5\<close>

\<comment>\<open>VDM source: pre_log: (real +> bool)
	pre_log(a) ==
(a > 0)\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 101:11\<close>
definition
	pre_log :: "VDMReal \<Rightarrow> bool"
where
	"pre_log a \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `pre_log` specification.\<close>
		((inv_VDMReal a))  \<and> 
		\<comment>\<open>User defined body of pre_log.\<close>
		(a > (0::VDMNat))"


\<comment>\<open>VDM source: post_log: (real * real +> bool)
	post_log(a, RESULT) ==
null\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 98:5\<close>
definition
	post_log :: "VDMReal \<Rightarrow> VDMReal \<Rightarrow> bool"
where
	"post_log a   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_log` specification.\<close>
		(pre_log a \<longrightarrow> ((inv_VDMReal a)  \<and>  (inv_VDMReal RESULT)))"

definition
	log :: "VDMReal \<Rightarrow> VDMReal"
where
	"log a \<equiv> 
	\<comment>\<open>User defined body of log.\<close>
	undefined"

	
	
\<comment>\<open>VDM source: pi:rat = 3.141592653589793\<close>
\<comment>\<open>in 'MATH' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\MATH.vdmsl) at line 104:5\<close>
abbreviation
	pi :: "VDMRat"
where
	"pi \<equiv> (3.141592653589793)"

	definition
	inv_pi :: "\<bool>"
where
	"inv_pi  \<equiv> (inv_VDMRat pi)"

	


end