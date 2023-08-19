theory VELOCITY
imports VDMUtil Support1
begin

(* Types *)
datatype String = String
datatype String1 = String1
datatype Dimension = Dimension
datatype DimensionlessVector = DimensionlessVector
datatype DimensionVector = DimensionVector
datatype DimensionView = DimensionView
datatype SingleDimension = SingleDimension
datatype Magnitude = Magnitude
datatype MagnitudeN0 = MagnitudeN0
datatype Magnitude1 = Magnitude1
datatype Quantity = Quantity
datatype QuantityN0 = QuantityN0
datatype SQuantity = SQuantity
datatype SQuantityN0 = SQuantityN0
datatype ConversionSchema = ConversionSchema
datatype Conversion = Conversion
datatype Conversions = Conversions
datatype MeasurementSystem = MeasurementSystem
datatype MeasurementSystemN0 = MeasurementSystemN0
datatype Prefix = Prefix
datatype Second = Second
datatype SI_MeasurementSystem = SI_MeasurementSystem
datatype Meter = Meter
datatype Kilogram = Kilogram
datatype Kelvin = Kelvin
datatype Frequency = Frequency
datatype Velocity = Velocity
datatype BIS_MeasurementSystem = BIS_MeasurementSystem
datatype Yard = Yard
datatype Pound = Pound
datatype Rankine = Rankine
datatype BISVelocity = BISVelocity
datatype CGS_MeasurementSystem = CGS_MeasurementSystem
datatype Centimetre = Centimetre
datatype Gram = Gram
datatype MHC_MeasurementSystem = MHC_MeasurementSystem
datatype Milligram = Milligram
datatype Hour = Hour
datatype Celcius = Celcius
datatype WhichMonth = WhichMonth
datatype HowManyDays = HowManyDays
datatype MDC_MeasurementSystem = MDC_MeasurementSystem
datatype Day = Day
datatype MWC_MeasurementSystem = MWC_MeasurementSystem
datatype Week = Week

(* Functions *)
fun dim_comp :: "DimensionlessVector × DimensionlessVector ⇒ DimensionlessVector" where
"dim_comp _ = undefined"

fun dim_comp_n :: "DimensionlessVector × nat ⇒ DimensionlessVector" where
"dim_comp_n _ = undefined"

fun dim_inv :: "DimensionlessVector ⇒ DimensionlessVector" where
"dim_inv _ = undefined"

fun dim_inv_n :: "DimensionlessVector × nat ⇒ DimensionlessVector" where
"dim_inv_n _ = undefined"

fun dim_div :: "DimensionlessVector × DimensionlessVector ⇒ DimensionlessVector" where
"dim_div _ = undefined"

fun dim_view :: "DimensionView × DimensionlessVector ⇒ String1" where
"dim_view _ = undefined"

fun si_dim_view :: "Prefix ⇒ String1" where
"si_dim_view _ = undefined"

fun bis_dim_view :: "Prefix ⇒ String1" where
"bis_dim_view _ = undefined"

fun quant_dim_eq :: "Quantity × Quantity ⇒ bool" where
"quant_dim_eq _ = undefined"

fun quant_times :: "Quantity × Quantity ⇒ Quantity" where
"quant_times _ = undefined"

fun quant_div :: "Quantity × QuantityN0 ⇒ Quantity" where
"quant_div _ = undefined"

fun quant_inv :: "QuantityN0 ⇒ Quantity" where
"quant_inv _ = undefined"

fun quant_itself_n :: "Quantity × nat ⇒ Quantity" where
"quant_itself_n _ = undefined"

fun quant_inv_n :: "QuantityN0 × nat ⇒ Quantity" where
"quant_inv_n _ = undefined"

fun quant_plus :: "Quantity × Quantity ⇒ Quantity" where
"quant_plus _ = undefined"

fun quant_uminus :: "Quantity ⇒ Quantity" where
"quant_uminus _ = undefined"

fun quant_minus :: "Quantity × Quantity ⇒ Quantity" where
"quant_minus _ = undefined"

fun scaleQ :: "Magnitude × Quantity ⇒ Quantity" where
"scaleQ _ = undefined"

fun scaleMS :: "Magnitude × MeasurementSystem ⇒ MeasurementSystem" where
"scaleMS _ = undefined"

fun quant_conv :: "ConversionSchema × DimensionlessVector ⇒ MagnitudeN0" where
"quant_conv _ = undefined"

fun conv_inv :: "ConversionSchema ⇒ ConversionSchema" where
"conv_inv _ = undefined"

fun conv_comp :: "ConversionSchema × ConversionSchema ⇒ ConversionSchema" where
"conv_comp _ = undefined"

fun ms_conv_eq :: "MeasurementSystem × MeasurementSystem ⇒ bool" where
"ms_conv_eq _ = undefined"

fun ms_times :: "MeasurementSystem × MeasurementSystem ⇒ MeasurementSystem" where
"ms_times _ = undefined"

fun ms_itself_n :: "MeasurementSystem × nat ⇒ MeasurementSystem" where
"ms_itself_n _ = undefined"

fun ms_inv_n :: "MeasurementSystemN0 × nat ⇒ MeasurementSystem" where
"ms_inv_n _ = undefined"

fun ms_inv :: "MeasurementSystemN0 ⇒ MeasurementSystem" where
"ms_inv _ = undefined"

fun ms_div :: "MeasurementSystem × MeasurementSystemN0 ⇒ MeasurementSystem" where
"ms_div _ = undefined"

fun ms_quant_conv :: "ConversionSchema × MeasurementSystem ⇒ MeasurementSystem" where
"ms_quant_conv _ = undefined"

fun ms_conv :: "MeasurementSystem × ConversionSchema ⇒ MeasurementSystem" where
"ms_conv _ = undefined"

fun mag :: "Prefix ⇒ Magnitude" where
"mag _ = undefined"

fun deca :: "Prefix ⇒ Prefix" where
"deca _ = undefined"

fun hecto :: "Prefix ⇒ Prefix" where
"hecto _ = undefined"

fun kilo :: "Prefix ⇒ Prefix" where
"kilo _ = undefined"

fun mega :: "Prefix ⇒ Prefix" where
"mega _ = undefined"

fun giga :: "Prefix ⇒ Prefix" where
"giga _ = undefined"

fun tera :: "Prefix ⇒ Prefix" where
"tera _ = undefined"

fun deci :: "Prefix ⇒ Prefix" where
"deci _ = undefined"

fun centi :: "Prefix ⇒ Prefix" where
"centi _ = undefined"

fun milli :: "Prefix ⇒ Prefix" where
"milli _ = undefined"

fun micro :: "Prefix ⇒ Prefix" where
"micro _ = undefined"

fun nano :: "Prefix ⇒ Prefix" where
"nano _ = undefined"

fun pico :: "Prefix ⇒ Prefix" where
"pico _ = undefined"

fun second :: "ConversionSchema × UnitSystem ⇒ Second" where
"second _ = undefined"

fun minute :: "ConversionSchema × UnitSystem ⇒ Second" where
"minute _ = undefined"

fun hour :: "ConversionSchema × UnitSystem ⇒ Second" where
"hour _ = undefined"

fun day :: "ConversionSchema × UnitSystem ⇒ Second" where
"day _ = undefined"

fun week :: "ConversionSchema × UnitSystem ⇒ Second" where
"week _ = undefined"

fun metrify :: "MeasurementSystem ⇒ Quantity" where
"metrify _ = undefined"

fun SI_ASTRONOMICAL :: "unit ⇒ Meter" where
"SI_ASTRONOMICAL _ = undefined"

fun SI_YARD :: "unit ⇒ Meter" where
"SI_YARD _ = undefined"

fun SI_FOOT :: "unit ⇒ Meter" where
"SI_FOOT _ = undefined"

fun SI_INCH :: "unit ⇒ Meter" where
"SI_INCH _ = undefined"

fun SI_MILE :: "unit ⇒ Meter" where
"SI_MILE _ = undefined"

fun SI_NAUTICAL_MILE :: "unit ⇒ Meter" where
"SI_NAUTICAL_MILE _ = undefined"

fun SI_TONNE :: "unit ⇒ Kilogram" where
"SI_TONNE _ = undefined"

fun SI_POUND :: "unit ⇒ Kilogram" where
"SI_POUND _ = undefined"

fun SI_OUNCE :: "unit ⇒ Kilogram" where
"SI_OUNCE _ = undefined"

fun SI_STONE :: "unit ⇒ Kilogram" where
"SI_STONE _ = undefined"

fun SI_KNOT :: "unit ⇒ Velocity" where
"SI_KNOT _ = undefined"

fun SI_MPH :: "unit ⇒ Velocity" where
"SI_MPH _ = undefined"

fun SI_MPS :: "unit ⇒ Velocity" where
"SI_MPS _ = undefined"

fun SI_KPH :: "unit ⇒ Velocity" where
"SI_KPH _ = undefined"

fun SI_DEGREES_FARENHEIT :: "Magnitude ⇒ Kelvin" where
"SI_DEGREES_FARENHEIT _ = undefined"

fun imperialise :: "MeasurementSystem ⇒ Quantity" where
"imperialise _ = undefined"

fun BIS_FOOT :: "unit ⇒ Yard" where
"BIS_FOOT _ = undefined"

fun BIS_INCH :: "unit ⇒ Yard" where
"BIS_INCH _ = undefined"

fun BIS_MILE :: "unit ⇒ Yard" where
"BIS_MILE _ = undefined"

fun BIS_OUNCE :: "unit ⇒ Pound" where
"BIS_OUNCE _ = undefined"

fun BIS_MILE_PER_HOUR :: "unit ⇒ BISVelocity" where
"BIS_MILE_PER_HOUR _ = undefined"

fun hDAY :: "unit ⇒ Hour" where
"hDAY _ = undefined"

fun hWEEK :: "unit ⇒ Hour" where
"hWEEK _ = undefined"

fun hMONTH :: "WhichMonth ⇒ Hour" where
"hMONTH _ = undefined"

fun hAVG_MONTH :: "unit ⇒ Hour" where
"hAVG_MONTH _ = undefined"

fun hYEAR :: "unit ⇒ Hour" where
"hYEAR _ = undefined"

fun weeks2months_hrs :: "nat ⇒ Hour" where
"weeks2months_hrs _ = undefined"

fun n_times_day2every_x_hours :: "nat ⇒ real" where
"n_times_day2every_x_hours _ = undefined"

fun dWEEK :: "unit ⇒ Day" where
"dWEEK _ = undefined"

fun weeks2days :: "nat ⇒ Day" where
"weeks2days _ = undefined"

fun wDAY :: "unit ⇒ Week" where
"wDAY _ = undefined"

fun wAVG_MONTH :: "unit ⇒ Week" where
"wAVG_MONTH _ = undefined"

fun weeks2months_wks :: "nat ⇒ Week" where
"weeks2months_wks _ = undefined"

fun approx :: "Magnitude × nat ⇒ Magnitude" where
"approx _ = undefined"

fun approx_eq :: "Magnitude × Magnitude × nat ⇒ bool" where
"approx_eq _ = undefined"

fun mph2mps :: "Magnitude ⇒ Magnitude" where
"mph2mps _ = undefined"

fun MEASUREMENT_SYSTEMS :: "unit ⇒ MeasurementSystem set" where
"MEASUREMENT_SYSTEMS _ = undefined"

fun CONVERSION_SCHEMAS :: "unit ⇒ ConversionSchema set" where
"CONVERSION_SCHEMAS _ = undefined"

fun DIMENSION_VECTORS :: "unit ⇒ DimensionVector set" where
"DIMENSION_VECTORS _ = undefined"

definition DIMENSIONS :: "Dimension set" where
"DIMENSIONS = undefined"

definition ZERO_DV :: "DimensionlessVector" where
"ZERO_DV = undefined"

definition DLENGTH :: "SingleDimension" where
"DLENGTH = undefined"

definition DMASS :: "SingleDimension" where
"DMASS = undefined"

definition DTIME :: "SingleDimension" where
"DTIME = undefined"

definition DTEMP :: "SingleDimension" where
"DTEMP = undefined"

definition DFREQUENCY :: "DimensionVector" where
"DFREQUENCY = undefined"

definition DVELOCITY :: "DimensionVector" where
"DVELOCITY = undefined"

definition SI_DIM_VIEW :: "DimensionView" where
"SI_DIM_VIEW = undefined"

definition BIS_DIM_VIEW :: "DimensionView" where
"BIS_DIM_VIEW = undefined"

definition CONV_ID :: "ConversionSchema" where
"CONV_ID = undefined"

definition UNIT_LENGTH :: "IntQuantity" where
"UNIT_LENGTH = undefined"

definition UNIT_MASS :: "IntQuantity" where
"UNIT_MASS = undefined"

definition UNIT_TIME :: "IntQuantity" where
"UNIT_TIME = undefined"

definition UNIT_TEMP :: "IntQuantity" where
"UNIT_TEMP = undefined"

definition UNIT_FREQUENCY :: "Quantity" where
"UNIT_FREQUENCY = undefined"

definition UNIT_VELOCITY :: "Quantity" where
"UNIT_VELOCITY = undefined"

definition SI :: "ConversionSchema" where
"SI = undefined"

definition METER :: "Meter" where
"METER = undefined"

definition KILOGRAM :: "Kilogram" where
"KILOGRAM = undefined"

definition SECOND :: "Second" where
"SECOND = undefined"

definition KELVIN :: "Kelvin" where
"KELVIN = undefined"

definition SI_FREQUENCY :: "Frequency" where
"SI_FREQUENCY = undefined"

definition SI_VELOCITY :: "Velocity" where
"SI_VELOCITY = undefined"

definition BIS :: "ConversionSchema" where
"BIS = undefined"

definition BIS_YARD :: "Yard" where
"BIS_YARD = undefined"

definition BIS_POUND :: "Pound" where
"BIS_POUND = undefined"

definition BIS_VELOCITY :: "BISVelocity" where
"BIS_VELOCITY = undefined"

definition BIS_RANKINE :: "Rankine" where
"BIS_RANKINE = undefined"

definition CGS :: "ConversionSchema" where
"CGS = undefined"

definition CENTIMETRE :: "Centimetre" where
"CENTIMETRE = undefined"

definition GRAM :: "Gram" where
"GRAM = undefined"

definition MHC :: "ConversionSchema" where
"MHC = undefined"

definition MGRAM :: "Milligram" where
"MGRAM = undefined"

definition MHOUR :: "Hour" where
"MHOUR = undefined"

definition MCELCIUS :: "Celcius" where
"MCELCIUS = undefined"

definition MDC :: "ConversionSchema" where
"MDC = undefined"

definition MDAY :: "Day" where
"MDAY = undefined"

definition MWC :: "ConversionSchema" where
"MWC = undefined"

definition MWEEK :: "Week" where
"MWEEK = undefined"

definition HOURS_PER_DAY :: "nat" where
"HOURS_PER_DAY = undefined"

definition DAYS_PER_WEEK :: "nat" where
"DAYS_PER_WEEK = undefined"

definition WEEKS_PER_YEAR :: "nat" where
"WEEKS_PER_YEAR = undefined"

definition MONTHS_PER_YEAR :: "nat" where
"MONTHS_PER_YEAR = undefined"

definition DAYS_PER_MONTH :: "(WhichMonth ⇒ HowManyDays) map" where
"DAYS_PER_MONTH = undefined"

definition HERTZ :: "Hertz" where
"HERTZ = undefined"

definition CAESIUM_FREQUENCY :: "Hertz" where
"CAESIUM_FREQUENCY = undefined"

definition SPEED_OF_LIGHT :: "Velocity" where
"SPEED_OF_LIGHT = undefined"

section "International Standard Units (and Quantities)"

subsection "ISQ dimensions"

datatype Dimension = Length | Mass | Time | Temperature

fun ord :: "Dimension ⇒ Dimension ⇒ bool" where
"ord Length Mass = True" |
"ord Length Time = True" |
"ord Length Temperature = True" |
"ord Mass Time = True" |
"ord Mass Temperature = True" |
"ord Time Temperature = True" |
"ord _ _ = False"

definition DIMENSIONS :: "Dimension set" where
"DIMENSIONS = {Length, Mass, Time, Temperature}"




end
