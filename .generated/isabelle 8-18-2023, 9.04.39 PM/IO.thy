(* VDM to Isabelle Translation @2023-08-18T13:04:39.635490800Z
   Copyright 2021, Leo Freitas, leo.freitas@newcastle.ac.uk

in 'c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl' at line 1:8
files = [c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl]
*)
theory IO
imports "VDMToolkit" 
begin


\<comment>\<open>VDM source: filedirective = (<append> | <start>)\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 31:1\<close>
datatype filedirective = filedirective.U_append  | 
		 filedirective.U_start 
	

\<comment>\<open>VDM source: inv_filedirective: (filedirective +> bool)
	inv_filedirective(dummy0) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 31:1\<close>
definition
	inv_filedirective :: "filedirective \<Rightarrow> bool"
where
	"inv_filedirective dummy0 \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `inv_filedirective` specification.\<close>
		((((inv_True dummy0))))"
 
lemmas inv_filedirective_defs = inv_True_def inv_filedirective_def 


	
	
\<comment>\<open>VDM source: writeval[p]: (@p -> bool)
	writeval(val) ==
not yet specified\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 41:1\<close>

\<comment>\<open>VDM source: pre_writeval[p]: (@p +> bool)
	pre_writeval(val) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 41:1\<close>
definition
	pre_writeval :: "('p \<Rightarrow> bool) \<Rightarrow> 'p \<Rightarrow> bool"
where
	"pre_writeval inv_p   val \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_writeval` specification.\<close>
		(inv_p val)"


\<comment>\<open>VDM source: post_writeval[p]: (@p * bool +> bool)
	post_writeval(val, RESULT) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 41:1\<close>
definition
	post_writeval :: "('p \<Rightarrow> bool) \<Rightarrow> 'p \<Rightarrow> bool \<Rightarrow> bool"
where
	"post_writeval inv_p   val   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_writeval` specification.\<close>
		(pre_writeval inv_p  val \<longrightarrow> (inv_p val  \<and>  (inv_bool RESULT)))"

definition
	writeval :: "('p \<Rightarrow> bool) \<Rightarrow> 'p \<Rightarrow> bool"
where
	"writeval inv_p   val \<equiv> 
	\<comment>\<open>User defined body of writeval.\<close>
	\<comment>\<open>Implicit check on generic type invariant for `writeval`.\<close>
	(if post_writeval inv_p   val (undefined) then	undefined else	undefined)"

	
	
\<comment>\<open>VDM source: fwriteval[p]: (seq1 of (char) * @p * filedirective -> bool)
	fwriteval(filename, val, fdir) ==
not yet specified\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 55:1\<close>

\<comment>\<open>VDM source: pre_fwriteval[p]: (seq1 of (char) * @p * filedirective +> bool)
	pre_fwriteval(filename, val, fdir) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 55:1\<close>
definition
	pre_fwriteval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> 'p \<Rightarrow> filedirective \<Rightarrow> bool"
where
	"pre_fwriteval inv_p   filename   val   fdir \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_fwriteval` specification.\<close>
		((inv_VDMSeq1' (inv_VDMChar) filename)  \<and>  inv_p val  \<and>  (inv_filedirective fdir))"


\<comment>\<open>VDM source: post_fwriteval[p]: (seq1 of (char) * @p * filedirective * bool +> bool)
	post_fwriteval(filename, val, fdir, RESULT) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 55:1\<close>
definition
	post_fwriteval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> 'p \<Rightarrow> filedirective \<Rightarrow> bool \<Rightarrow> bool"
where
	"post_fwriteval inv_p   filename   val   fdir   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `post_fwriteval` specification.\<close>
		(pre_fwriteval inv_p  filename  val  fdir \<longrightarrow> ((inv_VDMSeq1' (inv_VDMChar) filename)  \<and>  inv_p val  \<and>  (inv_filedirective fdir)  \<and>  (inv_bool RESULT)))"

definition
	fwriteval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> 'p \<Rightarrow> filedirective \<Rightarrow> bool"
where
	"fwriteval inv_p   filename   val   fdir \<equiv> 
	\<comment>\<open>User defined body of fwriteval.\<close>
	(
	\<comment>\<open>Implicit union type parameters projection\<close>
	(undefined))"

	
	
\<comment>\<open>VDM source: freadval[p]: (seq1 of (char) -> (bool * [@p]))
	freadval(filename) ==
not yet specified
	post let mk_(b, t):(bool * [@p]) = RESULT in ((not b) => (t = nil))\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 67:1\<close>

\<comment>\<open>VDM source: pre_freadval[p]: (seq1 of (char) +> bool)
	pre_freadval(filename) ==
null\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 67:1\<close>
definition
	pre_freadval :: "VDMChar VDMSeq1 \<Rightarrow> bool"
where
	"pre_freadval filename \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for undeclared `pre_freadval` specification.\<close>
		((inv_VDMSeq1' (inv_VDMChar) filename))"


\<comment>\<open>VDM source: post_freadval[p]: (seq1 of (char) * (bool * [@p]) +> bool)
	post_freadval(filename, RESULT) ==
let mk_(b, t):(bool * [@p]) = RESULT in ((not b) => (t = nil))\<close>
\<comment>\<open>in 'IO' (c:\Users\zhou1\Documents\Overture\workspace\velocity\ValidateISQ\lib\IO.vdmsl) at line 70:8\<close>
definition
	post_freadval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> (bool \<times> 'p option) \<Rightarrow> bool"
where
	"post_freadval inv_p   filename   RESULT \<equiv> 
		\<comment>\<open>Implicitly defined type invariant checks for  `post_freadval` specification.\<close>
		(pre_freadval inv_p  filename \<longrightarrow> ((inv_VDMSeq1' (inv_VDMChar) filename)  \<and>  
		((inv_bool (fst RESULT))\<and>
		 (inv_Option inv_p (snd RESULT))
		)))  \<and> 
		\<comment>\<open>User defined body of post_freadval.\<close>
		\<comment>\<open>Implicit check on generic type invariant for `post_freadval`.\<close>
		(if post_post_freadval inv_p   filename   RESULT ((
		let 
	\<comment>\<open>Implicit pattern context projection for `let-bind definition`\<close>
	
(dummy0::(bool \<times> 'p option)) = RESULT
		in
			\<comment>\<open>Implicit pattern context projection for `pattern list`\<close>
	 let b = (fst dummy0); t = (snd dummy0) in 
			(if (
		((inv_bool (fst dummy0))\<and>
		 (inv_Option inv_p (snd dummy0))
		)) then
			((\<not> b) \<longrightarrow> (t = None))
		 else
			undefined
		)
		)) then
			(
		let 
	\<comment>\<open>Implicit pattern context projection for `let-bind definition`\<close>
	
(dummy0::(bool \<times> 'p option)) = RESULT
		in
			\<comment>\<open>Implicit pattern context projection for `pattern list`\<close>
	 let b = (fst dummy0); t = (snd dummy0) in 
			(if (
		((inv_bool (fst dummy0))\<and>
		 (inv_Option inv_p (snd dummy0))
		)) then
			((\<not> b) \<longrightarrow> (t = None))
		 else
			undefined
		)
		)
		 else
			undefined
		)
		"

definition
	freadval :: "('p \<Rightarrow> bool) \<Rightarrow> VDMChar VDMSeq1 \<Rightarrow> (bool \<times> 'p option)"
where
	"freadval inv_p   filename \<equiv> 
	\<comment>\<open>User defined body of freadval.\<close>
	\<comment>\<open>Implicit check on generic type invariant for `freadval`.\<close>
	(if post_freadval inv_p   filename (undefined) then	undefined else	undefined)"



end