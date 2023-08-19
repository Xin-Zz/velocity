(* VDM to Isabelle Translation @2023-08-19T05:29:32.669616300Z
   Copyright 2021, Leo Freitas, leo.freitas@newcastle.ac.uk

in 'c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl' at line 1:8
files = [c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl]
*)
theory CSV
imports "IO" "VDMToolkit" 
begin

\<comment>\<open>unqualified VDM import from filedirective: filedirective; use Isabelle qualified naming directly.\<close>
	\<comment>\<open>VDM import from IO: filedirective renamed filedirective.\<close>
	abbreviation "filedirective \<equiv> filedirective"
	
	
	
\<comment>\<open>VDM source: fwriteval: (seq1 of (char) * seq of (?) * filedirective -> bool)
	fwriteval(filename, val, fdir) ==
not yet specified\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 36:1\<close>

\<comment>\<open>VDM source: pre_fwriteval: (seq1 of (char) * seq of (?) * filedirective +> bool)
	pre_fwriteval(filename, val, fdir) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 36:1\<close>
definition
	pre_fwriteval :: "VDMChar VDMSeq1 \<Rightarrow> 'UNKNOWN VDMSeq \<Rightarrow> filedirective \<Rightarrow> bool"
where
	"pre_fwriteval filename   val   fdir \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_fwriteval` specification.\<close>
		((inv_VDMSeq1' (inv_VDMChar) filename)  \<and>  (inv_VDMSeq' inv_True
	\<comment>\<open>Unknown VDM types will generate Isabelle additional type variable `a warning.\<close> val)  \<and>  (inv_filedirective fdir))"


\<comment>\<open>VDM source: post_fwriteval: (seq1 of (char) * seq of (?) * filedirective * bool +> bool)
	post_fwriteval(filename, val, fdir, RESULT) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 36:1\<close>
definition
	post_fwriteval :: "VDMChar VDMSeq1 \<Rightarrow> 'UNKNOWN VDMSeq \<Rightarrow> filedirective \<Rightarrow> bool \<Rightarrow> bool"
where
	"post_fwriteval filename   val   fdir   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_fwriteval` specification.\<close>
		(pre_fwriteval filename  val  fdir \<longrightarrow> ((inv_VDMSeq1' (inv_VDMChar) filename)  \<and>  (inv_VDMSeq' inv_True
	\<comment>\<open>Unknown VDM types will generate Isabelle additional type variable `a warning.\<close> val)  \<and>  (inv_filedirective fdir)  \<and>  (inv_bool RESULT)))"

definition
	fwriteval :: "VDMChar VDMSeq1 \<Rightarrow> 'UNKNOWN VDMSeq \<Rightarrow> filedirective \<Rightarrow> bool"
where
	"fwriteval filename   val   fdir \<equiv> 
	\<comment>\<open>User defined body of fwriteval.\<close>
	(
	\<comment>\<open>Implicit union type parameters projection\<close>
	(undefined))"

	
	
\<comment>\<open>VDM source: freadval[p]: (seq1 of (char) * int -> (bool * [@p]))
	freadval(f, index) ==
not yet specified\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 51:1\<close>

\<comment>\<open>VDM source: pre_freadval[p]: (seq1 of (char) * int +> bool)
	pre_freadval(f, index) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 51:1\<close>
definition
	pre_freadval :: "VDMChar VDMSeq1 \<Rightarrow> VDMInt \<Rightarrow> bool"
where
	"pre_freadval f   index \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_freadval` specification.\<close>
		((inv_VDMSeq1' (inv_VDMChar) f)  \<and>  (inv_VDMInt index))"


\<comment>\<open>VDM source: post_freadval[p]: (seq1 of (char) * int * (bool * [@p]) +> bool)
	post_freadval(f, index, RESULT) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 51:1\<close>
definition
	post_freadval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> VDMInt \<Rightarrow> (bool \<times> 'p option) \<Rightarrow> bool"
where
	"post_freadval inv_p   f   index   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_freadval` specification.\<close>
		(pre_freadval inv_p  f  index \<longrightarrow> ((inv_VDMSeq1' (inv_VDMChar) f)  \<and>  (inv_VDMInt index)  \<and>  
		((inv_bool (fst RESULT))\<and>
		 (inv_Option inv_p (snd RESULT))
		)))"

definition
	freadval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> VDMInt \<Rightarrow> (bool \<times> 'p option)"
where
	"freadval inv_p   f   index \<equiv> 
	\<comment>\<open>User defined body of freadval.\<close>
	\<comment>\<open>Implicit check on generic type invariant for `freadval`.\<close>
	(if post_freadval inv_p   f   index (undefined) then	undefined else	undefined)"

	
	
\<comment>\<open>VDM source: flinecount: (seq1 of (char) -> (bool * int))
	flinecount(f) ==
not yet specified\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 61:1\<close>

\<comment>\<open>VDM source: pre_flinecount: (seq1 of (char) +> bool)
	pre_flinecount(f) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 61:1\<close>
definition
	pre_flinecount :: "VDMChar VDMSeq1 \<Rightarrow> bool"
where
	"pre_flinecount f \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_flinecount` specification.\<close>
		((inv_VDMSeq1' (inv_VDMChar) f))"


\<comment>\<open>VDM source: post_flinecount: (seq1 of (char) * (bool * int) +> bool)
	post_flinecount(f, RESULT) ==
null\<close>
\<comment>\<open>in 'CSV' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\CSV.vdmsl) at line 61:1\<close>
definition
	post_flinecount :: "VDMChar VDMSeq1 \<Rightarrow> (bool \<times> VDMInt) \<Rightarrow> bool"
where
	"post_flinecount f   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_flinecount` specification.\<close>
		(pre_flinecount f \<longrightarrow> ((inv_VDMSeq1' (inv_VDMChar) f)  \<and>  
		((inv_bool (fst RESULT))\<and>
		 (inv_VDMInt (snd RESULT))
		)))"

definition
	flinecount :: "VDMChar VDMSeq1 \<Rightarrow> (bool \<times> VDMInt)"
where
	"flinecount f \<equiv> 
	\<comment>\<open>User defined body of flinecount.\<close>
	undefined"



end