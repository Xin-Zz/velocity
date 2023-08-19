theory ISQ
imports Main
begin

(* Base type definitions *)
type_synonym Dimension = "string"
type_synonym Magnitude = "real"
type_synonym UnitSystem = "string"

(* Dimensions *)
consts DIMENSIONS :: "Dimension set"

(* Map representing DimensionVector0 *)
type_synonym DimensionVector0 = "Dimension ⇒ int"

definition is_DimensionlessVector :: "DimensionVector0 ⇒ bool" where
"is_DimensionlessVector dv = (dom dv = DIMENSIONS)"

definition is_DimensionVector :: "DimensionVector0 ⇒ bool" where
"is_DimensionVector dv = (∃d ∈ DIMENSIONS. dv d ≠ 0)"

definition is_SingleDimension :: "DimensionVector0 ⇒ bool" where
"is_SingleDimension dv = (card {d ∈ DIMENSIONS. dv d = 1} = 1 ∧ (∀d ∈ DIMENSIONS. dv d = 1 ∨ dv d = 0))"

(* Definitions related to Magnitudes *)
definition is_MagnitudeN0 :: "Magnitude ⇒ bool" where
"is_MagnitudeN0 m = (m ≠ 0)"

definition is_Magnitude1 :: "Magnitude ⇒ bool" where
"is_Magnitude1 m = (m > 0)"

(* Definitions related to Quantity *)
record Quantity = 
  mag :: Magnitude
  dim :: DimensionVector0

definition is_QuantityN0 :: "Quantity ⇒ bool" where
"is_QuantityN0 q = is_MagnitudeN0 (mag q)"

definition is_SQuantity :: "Quantity ⇒ bool" where
"is_SQuantity q = is_SingleDimension (dim q)"

definition is_IntQuantity :: "Quantity ⇒ bool" where
"is_IntQuantity q = (∃n. mag q = real_of_int n)"

(* Definitions related to Measurement Systems *)
type_synonym ConversionSchema = "Dimension ⇒ Magnitude option"
type_synonym Conversion = "UnitSystem ⇒ ConversionSchema"
type_synonym Conversions = "UnitSystem ⇒ Conversion"

record MeasurementSystem = 
  quantity :: Quantity
  schema :: ConversionSchema
  unit :: UnitSystem

(* functions, invariants, and properties ... *)

end
