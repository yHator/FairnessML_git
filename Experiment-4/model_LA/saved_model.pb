Ò§/
Á
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68¦.
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:@ *
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
: *
dtype0
z
dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  * 
shared_namedense_37/kernel
s
#dense_37/kernel/Read/ReadVariableOpReadVariableOpdense_37/kernel*
_output_shapes

:  *
dtype0
r
dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_37/bias
k
!dense_37/bias/Read/ReadVariableOpReadVariableOpdense_37/bias*
_output_shapes
: *
dtype0
z
dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_38/kernel
s
#dense_38/kernel/Read/ReadVariableOpReadVariableOpdense_38/kernel*
_output_shapes

: *
dtype0
r
dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_38/bias
k
!dense_38/bias/Read/ReadVariableOpReadVariableOpdense_38/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm_12/lstm_cell_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	m*,
shared_namelstm_12/lstm_cell_12/kernel

/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/kernel*
_output_shapes
:	m*
dtype0
§
%lstm_12/lstm_cell_12/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*6
shared_name'%lstm_12/lstm_cell_12/recurrent_kernel
 
9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_12/lstm_cell_12/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_12/lstm_cell_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_12/lstm_cell_12/bias

-lstm_12/lstm_cell_12/bias/Read/ReadVariableOpReadVariableOplstm_12/lstm_cell_12/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_36/kernel/m

*Adam/dense_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/m*
_output_shapes

:@ *
dtype0

Adam/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_36/bias/m
y
(Adam/dense_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/m*
_output_shapes
: *
dtype0

Adam/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_37/kernel/m

*Adam/dense_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/m*
_output_shapes

:  *
dtype0

Adam/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_37/bias/m
y
(Adam/dense_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/m*
_output_shapes
: *
dtype0

Adam/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_38/kernel/m

*Adam/dense_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/m
y
(Adam/dense_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_12/lstm_cell_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	m*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/m

6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/m*
_output_shapes
:	m*
dtype0
µ
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
®
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

 Adam/lstm_12/lstm_cell_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/m

4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/dense_36/kernel/v

*Adam/dense_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/kernel/v*
_output_shapes

:@ *
dtype0

Adam/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_36/bias/v
y
(Adam/dense_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_36/bias/v*
_output_shapes
: *
dtype0

Adam/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *'
shared_nameAdam/dense_37/kernel/v

*Adam/dense_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/kernel/v*
_output_shapes

:  *
dtype0

Adam/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_37/bias/v
y
(Adam/dense_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_37/bias/v*
_output_shapes
: *
dtype0

Adam/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_38/kernel/v

*Adam/dense_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_38/bias/v
y
(Adam/dense_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_38/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_12/lstm_cell_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	m*3
shared_name$"Adam/lstm_12/lstm_cell_12/kernel/v

6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_12/lstm_cell_12/kernel/v*
_output_shapes
:	m*
dtype0
µ
,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
®
@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

 Adam/lstm_12/lstm_cell_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_12/lstm_cell_12/bias/v

4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_12/lstm_cell_12/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
ä?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses*
¦

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
æ
/iter

0beta_1

1beta_2
	2decay
3learning_ratemimjmk ml'mm(mn4mo5mp6mqvrvsvt vu'vv(vw4vx5vy6vz*
C
40
51
62
3
4
5
 6
'7
(8*
C
40
51
62
3
4
5
 6
'7
(8*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

<serving_default* 
ã
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses*
* 

40
51
62*

40
51
62*
* 


Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
_Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_36/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_37/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_37/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
 1*

0
 1*
* 

Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_38/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_38/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1*

'0
(1*
* 

Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_12/lstm_cell_12/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_12/lstm_cell_12/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_12/lstm_cell_12/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

Z0
[1*
* 
* 
* 
* 

40
51
62*

40
51
62*
* 

\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	atotal
	bcount
c	variables
d	keras_api*
8
	etotal
	fcount
g	variables
h	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

a0
b1*

c	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

g	variables*
|
VARIABLE_VALUEAdam/dense_36/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_37/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_38/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_36/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_36/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_37/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_37/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_38/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_38/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_12/lstm_cell_12/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_12/lstm_cell_12/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_12/lstm_cell_12/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_12_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿm

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_12_inputlstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biasdense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_843367
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¯
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOp#dense_37/kernel/Read/ReadVariableOp!dense_37/bias/Read/ReadVariableOp#dense_38/kernel/Read/ReadVariableOp!dense_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_12/lstm_cell_12/kernel/Read/ReadVariableOp9lstm_12/lstm_cell_12/recurrent_kernel/Read/ReadVariableOp-lstm_12/lstm_cell_12/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_36/kernel/m/Read/ReadVariableOp(Adam/dense_36/bias/m/Read/ReadVariableOp*Adam/dense_37/kernel/m/Read/ReadVariableOp(Adam/dense_37/bias/m/Read/ReadVariableOp*Adam/dense_38/kernel/m/Read/ReadVariableOp(Adam/dense_38/bias/m/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/m/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/m/Read/ReadVariableOp*Adam/dense_36/kernel/v/Read/ReadVariableOp(Adam/dense_36/bias/v/Read/ReadVariableOp*Adam/dense_37/kernel/v/Read/ReadVariableOp(Adam/dense_37/bias/v/Read/ReadVariableOp*Adam/dense_38/kernel/v/Read/ReadVariableOp(Adam/dense_38/bias/v/Read/ReadVariableOp6Adam/lstm_12/lstm_cell_12/kernel/v/Read/ReadVariableOp@Adam/lstm_12/lstm_cell_12/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_12/lstm_cell_12/bias/v/Read/ReadVariableOpConst*1
Tin*
(2&	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_845309
Ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_36/kerneldense_36/biasdense_37/kerneldense_37/biasdense_38/kerneldense_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_12/lstm_cell_12/kernel%lstm_12/lstm_cell_12/recurrent_kernellstm_12/lstm_cell_12/biastotalcounttotal_1count_1Adam/dense_36/kernel/mAdam/dense_36/bias/mAdam/dense_37/kernel/mAdam/dense_37/bias/mAdam/dense_38/kernel/mAdam/dense_38/bias/m"Adam/lstm_12/lstm_cell_12/kernel/m,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m Adam/lstm_12/lstm_cell_12/bias/mAdam/dense_36/kernel/vAdam/dense_36/bias/vAdam/dense_37/kernel/vAdam/dense_37/bias/vAdam/dense_38/kernel/vAdam/dense_38/bias/v"Adam/lstm_12/lstm_cell_12/kernel/v,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v Adam/lstm_12/lstm_cell_12/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_845427í,
¶L
¤
'__forward_gpu_lstm_with_fallback_844262

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_8c8e5456-0329-4d28-aa0f-ff2afec9e536*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_844087_844263*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
©@
Ì
)__inference_gpu_lstm_with_fallback_844940

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_119b75bb-0206-480b-ad12-21f82c126126*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
Á
while_cond_842516
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_842516___redundant_placeholder04
0while_while_cond_842516___redundant_placeholder14
0while_while_cond_842516___redundant_placeholder24
0while_while_cond_842516___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¶L
¤
'__forward_gpu_lstm_with_fallback_840807

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_55e8b9d5-9882-4688-8b0d-c0dfc147a5bc*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_840632_840808*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

½
C__inference_lstm_12_layer_call_and_return_conditional_losses_844692

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_844419i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
	
Á
while_cond_841881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_841881___redundant_placeholder04
0while_while_cond_841881___redundant_placeholder14
0while_while_cond_841881___redundant_placeholder24
0while_while_cond_841881___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
æ5

I__inference_sequential_12_layer_call_and_return_conditional_losses_843342

inputs7
$lstm_12_read_readvariableop_resource:	m9
&lstm_12_read_1_readvariableop_resource:	@5
&lstm_12_read_2_readvariableop_resource:	9
'dense_36_matmul_readvariableop_resource:@ 6
(dense_36_biasadd_readvariableop_resource: 9
'dense_37_matmul_readvariableop_resource:  6
(dense_37_biasadd_readvariableop_resource: 9
'dense_38_matmul_readvariableop_resource: 6
(dense_38_biasadd_readvariableop_resource:
identity¢dense_36/BiasAdd/ReadVariableOp¢dense_36/MatMul/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢dense_37/MatMul/ReadVariableOp¢dense_38/BiasAdd/ReadVariableOp¢dense_38/MatMul/ReadVariableOp¢lstm_12/Read/ReadVariableOp¢lstm_12/Read_1/ReadVariableOp¢lstm_12/Read_2/ReadVariableOpC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_12/Read/ReadVariableOpReadVariableOp$lstm_12_read_readvariableop_resource*
_output_shapes
:	m*
dtype0k
lstm_12/IdentityIdentity#lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	m
lstm_12/Read_1/ReadVariableOpReadVariableOp&lstm_12_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype0o
lstm_12/Identity_1Identity%lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@
lstm_12/Read_2/ReadVariableOpReadVariableOp&lstm_12_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0k
lstm_12/Identity_2Identity%lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:â
lstm_12/PartitionedCallPartitionedCallinputslstm_12/zeros:output:0lstm_12/zeros_1:output:0lstm_12/Identity:output:0lstm_12/Identity_1:output:0lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_843049
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_36/MatMulMatMul lstm_12/PartitionedCall:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp^lstm_12/Read/ReadVariableOp^lstm_12/Read_1/ReadVariableOp^lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2:
lstm_12/Read/ReadVariableOplstm_12/Read/ReadVariableOp2>
lstm_12/Read_1/ReadVariableOplstm_12/Read_1/ReadVariableOp2>
lstm_12/Read_2/ReadVariableOplstm_12/Read_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
Ñ(
Ï
while_body_840001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
¶L
¤
'__forward_gpu_lstm_with_fallback_843835

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_18bad518-e30e-4770-a00b-a8bfdacf9c5f*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_843660_843836*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
©@
Ì
)__inference_gpu_lstm_with_fallback_841511

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_092af709-4b73-4977-a100-cf12dc610725*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Â

)__inference_dense_38_layer_call_fn_845168

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_841742o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
êÂ
ó
;__inference___backward_gpu_lstm_with_fallback_844087_844263
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ª
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:À
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesò
ï:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_8c8e5456-0329-4d28-aa0f-ff2afec9e536*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_844262*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
:::
6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Â

)__inference_dense_37_layer_call_fn_845148

inputs
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_841726o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
êÂ
ó
;__inference___backward_gpu_lstm_with_fallback_843660_843836
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ª
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:À
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesò
ï:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_18bad518-e30e-4770-a00b-a8bfdacf9c5f*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_843835*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
:::
6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
L
¤
'__forward_gpu_lstm_with_fallback_845116

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_119b75bb-0206-480b-ad12-21f82c126126*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_844941_845117*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Â

)__inference_dense_36_layer_call_fn_845128

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_841709o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
 :
À
 __inference_standard_lstm_844419

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_844334*
condR
while_cond_844333*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2d0430e8-958c-411d-8e70-7924b744bef9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
 :
À
 __inference_standard_lstm_842602

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_842517*
condR
while_cond_842516*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_5242f4aa-9231-44f7-85ab-e372fe47ca18*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
¸
¥
I__inference_sequential_12_layer_call_and_return_conditional_losses_842370
lstm_12_input!
lstm_12_842347:	m!
lstm_12_842349:	@
lstm_12_842351:	!
dense_36_842354:@ 
dense_36_842356: !
dense_37_842359:  
dense_37_842361: !
dense_38_842364: 
dense_38_842366:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢ dense_38/StatefulPartitionedCall¢lstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_842347lstm_12_842349lstm_12_842351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_841690
 dense_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_36_842354dense_36_842356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_841709
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_842359dense_37_842361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_841726
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_842364dense_38_842366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_841742x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input
©@
Ì
)__inference_gpu_lstm_with_fallback_844513

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2d0430e8-958c-411d-8e70-7924b744bef9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_840181_840357
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_2e313908-f8fd-4882-b983-c2cb019bc93a*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_840356*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

·
(__inference_lstm_12_layer_call_fn_843378
inputs_0
unknown:	m
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_840810o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
"
_user_specified_name
inputs/0
ÿ	
Ý
.__inference_sequential_12_layer_call_fn_842448

inputs
unknown:	m
	unknown_0:	@
	unknown_1:	
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_842300o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
	
Á
while_cond_841331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_841331___redundant_placeholder04
0while_while_cond_841331___redundant_placeholder14
0while_while_cond_841331___redundant_placeholder24
0while_while_cond_841331___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
à@
Ì
)__inference_gpu_lstm_with_fallback_843659

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÓ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_18bad518-e30e-4770-a00b-a8bfdacf9c5f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias

Ò
"__inference__traced_restore_845427
file_prefix2
 assignvariableop_dense_36_kernel:@ .
 assignvariableop_1_dense_36_bias: 4
"assignvariableop_2_dense_37_kernel:  .
 assignvariableop_3_dense_37_bias: 4
"assignvariableop_4_dense_38_kernel: .
 assignvariableop_5_dense_38_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: B
/assignvariableop_11_lstm_12_lstm_cell_12_kernel:	mL
9assignvariableop_12_lstm_12_lstm_cell_12_recurrent_kernel:	@<
-assignvariableop_13_lstm_12_lstm_cell_12_bias:	#
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: <
*assignvariableop_18_adam_dense_36_kernel_m:@ 6
(assignvariableop_19_adam_dense_36_bias_m: <
*assignvariableop_20_adam_dense_37_kernel_m:  6
(assignvariableop_21_adam_dense_37_bias_m: <
*assignvariableop_22_adam_dense_38_kernel_m: 6
(assignvariableop_23_adam_dense_38_bias_m:I
6assignvariableop_24_adam_lstm_12_lstm_cell_12_kernel_m:	mS
@assignvariableop_25_adam_lstm_12_lstm_cell_12_recurrent_kernel_m:	@C
4assignvariableop_26_adam_lstm_12_lstm_cell_12_bias_m:	<
*assignvariableop_27_adam_dense_36_kernel_v:@ 6
(assignvariableop_28_adam_dense_36_bias_v: <
*assignvariableop_29_adam_dense_37_kernel_v:  6
(assignvariableop_30_adam_dense_37_bias_v: <
*assignvariableop_31_adam_dense_38_kernel_v: 6
(assignvariableop_32_adam_dense_38_bias_v:I
6assignvariableop_33_adam_lstm_12_lstm_cell_12_kernel_v:	mS
@assignvariableop_34_adam_lstm_12_lstm_cell_12_recurrent_kernel_v:	@C
4assignvariableop_35_adam_lstm_12_lstm_cell_12_bias_v:	
identity_37¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHº
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ú
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ª
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_36_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_36_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_37_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_38_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_38_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_12_lstm_cell_12_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_12_lstm_cell_12_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_12_lstm_cell_12_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_36_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_36_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_37_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_37_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_38_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_38_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_12_lstm_cell_12_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_12_lstm_cell_12_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_12_lstm_cell_12_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_36_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_36_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_37_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_37_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_38_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_38_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_12_lstm_cell_12_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_lstm_12_lstm_cell_12_recurrent_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_lstm_12_lstm_cell_12_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ç
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: Ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ñ(
Ï
while_body_840890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
L
¤
'__forward_gpu_lstm_with_fallback_840356

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2e313908-f8fd-4882-b983-c2cb019bc93a*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_840181_840357*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias


õ
D__inference_dense_37_layer_call_and_return_conditional_losses_845159

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ö:
À
 __inference_standard_lstm_843565

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_843480*
condR
while_cond_843479*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_18bad518-e30e-4770-a00b-a8bfdacf9c5f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ö:
À
 __inference_standard_lstm_843992

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_843907*
condR
while_cond_843906*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_8c8e5456-0329-4d28-aa0f-ff2afec9e536*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
L
¤
'__forward_gpu_lstm_with_fallback_844689

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2d0430e8-958c-411d-8e70-7924b744bef9*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_844514_844690*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
 :
À
 __inference_standard_lstm_840086

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_840001*
condR
while_cond_840000*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2e313908-f8fd-4882-b983-c2cb019bc93a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ö:
À
 __inference_standard_lstm_840537

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_840452*
condR
while_cond_840451*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_55e8b9d5-9882-4688-8b0d-c0dfc147a5bc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
Á
while_cond_844333
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_844333___redundant_placeholder04
0while_while_cond_844333___redundant_placeholder14
0while_while_cond_844333___redundant_placeholder24
0while_while_cond_844333___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
à@
Ì
)__inference_gpu_lstm_with_fallback_841069

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÓ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_7e13e76f-427a-41bd-84c2-e91fbc7433e4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
L
¤
'__forward_gpu_lstm_with_fallback_842237

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_f2118ef7-d641-44cb-85fd-c9b53b9b8e4e*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_842062_842238*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
 :
À
 __inference_standard_lstm_843049

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_842964*
condR
while_cond_842963*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_bbfca5a9-4cc7-4851-bbcc-e96d5a9670f1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
Á
while_cond_842963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_842963___redundant_placeholder04
0while_while_cond_842963___redundant_placeholder14
0while_while_cond_842963___redundant_placeholder24
0while_while_cond_842963___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¸
¥
I__inference_sequential_12_layer_call_and_return_conditional_losses_842396
lstm_12_input!
lstm_12_842373:	m!
lstm_12_842375:	@
lstm_12_842377:	!
dense_36_842380:@ 
dense_36_842382: !
dense_37_842385:  
dense_37_842387: !
dense_38_842390: 
dense_38_842392:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢ dense_38/StatefulPartitionedCall¢lstm_12/StatefulPartitionedCall
lstm_12/StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputlstm_12_842373lstm_12_842375lstm_12_842377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_842240
 dense_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_36_842380dense_36_842382*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_841709
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_842385dense_37_842387*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_841726
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_842390dense_38_842392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_841742x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input
æ5

I__inference_sequential_12_layer_call_and_return_conditional_losses_842895

inputs7
$lstm_12_read_readvariableop_resource:	m9
&lstm_12_read_1_readvariableop_resource:	@5
&lstm_12_read_2_readvariableop_resource:	9
'dense_36_matmul_readvariableop_resource:@ 6
(dense_36_biasadd_readvariableop_resource: 9
'dense_37_matmul_readvariableop_resource:  6
(dense_37_biasadd_readvariableop_resource: 9
'dense_38_matmul_readvariableop_resource: 6
(dense_38_biasadd_readvariableop_resource:
identity¢dense_36/BiasAdd/ReadVariableOp¢dense_36/MatMul/ReadVariableOp¢dense_37/BiasAdd/ReadVariableOp¢dense_37/MatMul/ReadVariableOp¢dense_38/BiasAdd/ReadVariableOp¢dense_38/MatMul/ReadVariableOp¢lstm_12/Read/ReadVariableOp¢lstm_12/Read_1/ReadVariableOp¢lstm_12/Read_2/ReadVariableOpC
lstm_12/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_12/strided_sliceStridedSlicelstm_12/Shape:output:0$lstm_12/strided_slice/stack:output:0&lstm_12/strided_slice/stack_1:output:0&lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_12/zeros/packedPacklstm_12/strided_slice:output:0lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zerosFilllstm_12/zeros/packed:output:0lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_12/zeros_1/packedPacklstm_12/strided_slice:output:0!lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_12/zeros_1Filllstm_12/zeros_1/packed:output:0lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_12/Read/ReadVariableOpReadVariableOp$lstm_12_read_readvariableop_resource*
_output_shapes
:	m*
dtype0k
lstm_12/IdentityIdentity#lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	m
lstm_12/Read_1/ReadVariableOpReadVariableOp&lstm_12_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype0o
lstm_12/Identity_1Identity%lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@
lstm_12/Read_2/ReadVariableOpReadVariableOp&lstm_12_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0k
lstm_12/Identity_2Identity%lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:â
lstm_12/PartitionedCallPartitionedCallinputslstm_12/zeros:output:0lstm_12/zeros_1:output:0lstm_12/Identity:output:0lstm_12/Identity_1:output:0lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_842602
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_36/MatMulMatMul lstm_12/PartitionedCall:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_36/ReluReludense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0
dense_37/MatMulMatMuldense_36/Relu:activations:0&dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
dense_37/ReluReludense_37/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_38/MatMulMatMuldense_37/Relu:activations:0&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
NoOpNoOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp^lstm_12/Read/ReadVariableOp^lstm_12/Read_1/ReadVariableOp^lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp2:
lstm_12/Read/ReadVariableOplstm_12/Read/ReadVariableOp2>
lstm_12/Read_1/ReadVariableOplstm_12/Read_1/ReadVariableOp2>
lstm_12/Read_2/ReadVariableOplstm_12/Read_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
©@
Ì
)__inference_gpu_lstm_with_fallback_842696

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_5242f4aa-9231-44f7-85ab-e372fe47ca18*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
L
¤
'__forward_gpu_lstm_with_fallback_841687

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_092af709-4b73-4977-a100-cf12dc610725*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_841512_841688*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
©@
Ì
)__inference_gpu_lstm_with_fallback_840180

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_2e313908-f8fd-4882-b983-c2cb019bc93a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
â	
Ú
$__inference_signature_wrapper_843367
lstm_12_input
unknown:	m
	unknown_0:	@
	unknown_1:	
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_840379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input
Ñ(
Ï
while_body_844334
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
êÂ
ó
;__inference___backward_gpu_lstm_with_fallback_841070_841246
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ª
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:À
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesò
ï:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_7e13e76f-427a-41bd-84c2-e91fbc7433e4*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_841245*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
:::
6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¸
¿
C__inference_lstm_12_layer_call_and_return_conditional_losses_843838
inputs_0/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:½
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_843565i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
"
_user_specified_name
inputs/0

·
(__inference_lstm_12_layer_call_fn_843389
inputs_0
unknown:	m
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_841248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
"
_user_specified_name
inputs/0
ÇL
è
__inference__traced_save_845309
file_prefix.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop.
*savev2_dense_37_kernel_read_readvariableop,
(savev2_dense_37_bias_read_readvariableop.
*savev2_dense_38_kernel_read_readvariableop,
(savev2_dense_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableopD
@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop8
4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_36_kernel_m_read_readvariableop3
/savev2_adam_dense_36_bias_m_read_readvariableop5
1savev2_adam_dense_37_kernel_m_read_readvariableop3
/savev2_adam_dense_37_bias_m_read_readvariableop5
1savev2_adam_dense_38_kernel_m_read_readvariableop3
/savev2_adam_dense_38_bias_m_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop5
1savev2_adam_dense_36_kernel_v_read_readvariableop3
/savev2_adam_dense_36_bias_v_read_readvariableop5
1savev2_adam_dense_37_kernel_v_read_readvariableop3
/savev2_adam_dense_37_bias_v_read_readvariableop5
1savev2_adam_dense_38_kernel_v_read_readvariableop3
/savev2_adam_dense_38_bias_v_read_readvariableopA
=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*®
value¤B¡%B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH·
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B À
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop*savev2_dense_37_kernel_read_readvariableop(savev2_dense_37_bias_read_readvariableop*savev2_dense_38_kernel_read_readvariableop(savev2_dense_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_12_lstm_cell_12_kernel_read_readvariableop@savev2_lstm_12_lstm_cell_12_recurrent_kernel_read_readvariableop4savev2_lstm_12_lstm_cell_12_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_36_kernel_m_read_readvariableop/savev2_adam_dense_36_bias_m_read_readvariableop1savev2_adam_dense_37_kernel_m_read_readvariableop/savev2_adam_dense_37_bias_m_read_readvariableop1savev2_adam_dense_38_kernel_m_read_readvariableop/savev2_adam_dense_38_bias_m_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_m_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_m_read_readvariableop1savev2_adam_dense_36_kernel_v_read_readvariableop/savev2_adam_dense_36_bias_v_read_readvariableop1savev2_adam_dense_37_kernel_v_read_readvariableop/savev2_adam_dense_37_bias_v_read_readvariableop1savev2_adam_dense_38_kernel_v_read_readvariableop/savev2_adam_dense_38_bias_v_read_readvariableop=savev2_adam_lstm_12_lstm_cell_12_kernel_v_read_readvariableopGsavev2_adam_lstm_12_lstm_cell_12_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_12_lstm_cell_12_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
ý: :@ : :  : : :: : : : : :	m:	@:: : : : :@ : :  : : ::	m:	@::@ : :  : : ::	m:	@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	m:%!

_output_shapes
:	@:!

_output_shapes	
::$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$  

_output_shapes

: : !

_output_shapes
::%"!

_output_shapes
:	m:%#!

_output_shapes
:	@:!$

_output_shapes	
::%

_output_shapes
: 

½
C__inference_lstm_12_layer_call_and_return_conditional_losses_842240

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_841967i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
Ö:
À
 __inference_standard_lstm_840975

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_840890*
condR
while_cond_840889*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_7e13e76f-427a-41bd-84c2-e91fbc7433e4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
÷
µ
(__inference_lstm_12_layer_call_fn_843411

inputs
unknown:	m
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_842240o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
Ñ(
Ï
while_body_844761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
ÿ	
Ý
.__inference_sequential_12_layer_call_fn_842425

inputs
unknown:	m
	unknown_0:	@
	unknown_1:	
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_841749o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
	
Á
while_cond_840451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_840451___redundant_placeholder04
0while_while_cond_840451___redundant_placeholder14
0while_while_cond_840451___redundant_placeholder24
0while_while_cond_840451___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ñ(
Ï
while_body_840452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_842062_842238
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_f2118ef7-d641-44cb-85fd-c9b53b9b8e4e*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_842237*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

½
C__inference_lstm_12_layer_call_and_return_conditional_losses_845119

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_844846i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
¸
¿
C__inference_lstm_12_layer_call_and_return_conditional_losses_844265
inputs_0/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:½
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_843992i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
"
_user_specified_name
inputs/0
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_844514_844690
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_2d0430e8-958c-411d-8e70-7924b744bef9*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_844689*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ñ(
Ï
while_body_843907
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
L
¤
'__forward_gpu_lstm_with_fallback_843319

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_bbfca5a9-4cc7-4851-bbcc-e96d5a9670f1*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_843144_843320*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias


õ
D__inference_dense_36_layer_call_and_return_conditional_losses_845139

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_38_layer_call_and_return_conditional_losses_845178

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
C
î
!__inference__wrapped_model_840379
lstm_12_inputE
2sequential_12_lstm_12_read_readvariableop_resource:	mG
4sequential_12_lstm_12_read_1_readvariableop_resource:	@C
4sequential_12_lstm_12_read_2_readvariableop_resource:	G
5sequential_12_dense_36_matmul_readvariableop_resource:@ D
6sequential_12_dense_36_biasadd_readvariableop_resource: G
5sequential_12_dense_37_matmul_readvariableop_resource:  D
6sequential_12_dense_37_biasadd_readvariableop_resource: G
5sequential_12_dense_38_matmul_readvariableop_resource: D
6sequential_12_dense_38_biasadd_readvariableop_resource:
identity¢-sequential_12/dense_36/BiasAdd/ReadVariableOp¢,sequential_12/dense_36/MatMul/ReadVariableOp¢-sequential_12/dense_37/BiasAdd/ReadVariableOp¢,sequential_12/dense_37/MatMul/ReadVariableOp¢-sequential_12/dense_38/BiasAdd/ReadVariableOp¢,sequential_12/dense_38/MatMul/ReadVariableOp¢)sequential_12/lstm_12/Read/ReadVariableOp¢+sequential_12/lstm_12/Read_1/ReadVariableOp¢+sequential_12/lstm_12/Read_2/ReadVariableOpX
sequential_12/lstm_12/ShapeShapelstm_12_input*
T0*
_output_shapes
:s
)sequential_12/lstm_12/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_12/lstm_12/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_12/lstm_12/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_12/lstm_12/strided_sliceStridedSlice$sequential_12/lstm_12/Shape:output:02sequential_12/lstm_12/strided_slice/stack:output:04sequential_12/lstm_12/strided_slice/stack_1:output:04sequential_12/lstm_12/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_12/lstm_12/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"sequential_12/lstm_12/zeros/packedPack,sequential_12/lstm_12/strided_slice:output:0-sequential_12/lstm_12/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_12/lstm_12/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_12/lstm_12/zerosFill+sequential_12/lstm_12/zeros/packed:output:0*sequential_12/lstm_12/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&sequential_12/lstm_12/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@¹
$sequential_12/lstm_12/zeros_1/packedPack,sequential_12/lstm_12/strided_slice:output:0/sequential_12/lstm_12/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_12/lstm_12/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_12/lstm_12/zeros_1Fill-sequential_12/lstm_12/zeros_1/packed:output:0,sequential_12/lstm_12/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)sequential_12/lstm_12/Read/ReadVariableOpReadVariableOp2sequential_12_lstm_12_read_readvariableop_resource*
_output_shapes
:	m*
dtype0
sequential_12/lstm_12/IdentityIdentity1sequential_12/lstm_12/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	m¡
+sequential_12/lstm_12/Read_1/ReadVariableOpReadVariableOp4sequential_12_lstm_12_read_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
 sequential_12/lstm_12/Identity_1Identity3sequential_12/lstm_12/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@
+sequential_12/lstm_12/Read_2/ReadVariableOpReadVariableOp4sequential_12_lstm_12_read_2_readvariableop_resource*
_output_shapes	
:*
dtype0
 sequential_12/lstm_12/Identity_2Identity3sequential_12/lstm_12/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:½
%sequential_12/lstm_12/PartitionedCallPartitionedCalllstm_12_input$sequential_12/lstm_12/zeros:output:0&sequential_12/lstm_12/zeros_1:output:0'sequential_12/lstm_12/Identity:output:0)sequential_12/lstm_12/Identity_1:output:0)sequential_12/lstm_12/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_840086¢
,sequential_12/dense_36/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_36_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¿
sequential_12/dense_36/MatMulMatMul.sequential_12/lstm_12/PartitionedCall:output:04sequential_12/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-sequential_12/dense_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_12/dense_36/BiasAddBiasAdd'sequential_12/dense_36/MatMul:product:05sequential_12/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
sequential_12/dense_36/ReluRelu'sequential_12/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
,sequential_12/dense_37/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_37_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0º
sequential_12/dense_37/MatMulMatMul)sequential_12/dense_36/Relu:activations:04sequential_12/dense_37/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-sequential_12/dense_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_37_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
sequential_12/dense_37/BiasAddBiasAdd'sequential_12/dense_37/MatMul:product:05sequential_12/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ~
sequential_12/dense_37/ReluRelu'sequential_12/dense_37/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¢
,sequential_12/dense_38/MatMul/ReadVariableOpReadVariableOp5sequential_12_dense_38_matmul_readvariableop_resource*
_output_shapes

: *
dtype0º
sequential_12/dense_38/MatMulMatMul)sequential_12/dense_37/Relu:activations:04sequential_12/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_12/dense_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_12_dense_38_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_12/dense_38/BiasAddBiasAdd'sequential_12/dense_38/MatMul:product:05sequential_12/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_12/dense_38/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
NoOpNoOp.^sequential_12/dense_36/BiasAdd/ReadVariableOp-^sequential_12/dense_36/MatMul/ReadVariableOp.^sequential_12/dense_37/BiasAdd/ReadVariableOp-^sequential_12/dense_37/MatMul/ReadVariableOp.^sequential_12/dense_38/BiasAdd/ReadVariableOp-^sequential_12/dense_38/MatMul/ReadVariableOp*^sequential_12/lstm_12/Read/ReadVariableOp,^sequential_12/lstm_12/Read_1/ReadVariableOp,^sequential_12/lstm_12/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2^
-sequential_12/dense_36/BiasAdd/ReadVariableOp-sequential_12/dense_36/BiasAdd/ReadVariableOp2\
,sequential_12/dense_36/MatMul/ReadVariableOp,sequential_12/dense_36/MatMul/ReadVariableOp2^
-sequential_12/dense_37/BiasAdd/ReadVariableOp-sequential_12/dense_37/BiasAdd/ReadVariableOp2\
,sequential_12/dense_37/MatMul/ReadVariableOp,sequential_12/dense_37/MatMul/ReadVariableOp2^
-sequential_12/dense_38/BiasAdd/ReadVariableOp-sequential_12/dense_38/BiasAdd/ReadVariableOp2\
,sequential_12/dense_38/MatMul/ReadVariableOp,sequential_12/dense_38/MatMul/ReadVariableOp2V
)sequential_12/lstm_12/Read/ReadVariableOp)sequential_12/lstm_12/Read/ReadVariableOp2Z
+sequential_12/lstm_12/Read_1/ReadVariableOp+sequential_12/lstm_12/Read_1/ReadVariableOp2Z
+sequential_12/lstm_12/Read_2/ReadVariableOp+sequential_12/lstm_12/Read_2/ReadVariableOp:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input
©@
Ì
)__inference_gpu_lstm_with_fallback_842061

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_f2118ef7-d641-44cb-85fd-c9b53b9b8e4e*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
L
¤
'__forward_gpu_lstm_with_fallback_842872

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Î
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_5242f4aa-9231-44f7-85ab-e372fe47ca18*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_842697_842873*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
 :
À
 __inference_standard_lstm_841417

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_841332*
condR
while_cond_841331*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_092af709-4b73-4977-a100-cf12dc610725*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
Á
while_cond_843906
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_843906___redundant_placeholder04
0while_while_cond_843906___redundant_placeholder14
0while_while_cond_843906___redundant_placeholder24
0while_while_cond_843906___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
°
½
C__inference_lstm_12_layer_call_and_return_conditional_losses_840810

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:»
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_840537i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
	
Á
while_cond_840000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_840000___redundant_placeholder04
0while_while_cond_840000___redundant_placeholder14
0while_while_cond_840000___redundant_placeholder24
0while_while_cond_840000___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
 :
À
 __inference_standard_lstm_841967

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_841882*
condR
while_cond_841881*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_f2118ef7-d641-44cb-85fd-c9b53b9b8e4e*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ñ(
Ï
while_body_842964
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
	
Á
while_cond_843479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_843479___redundant_placeholder04
0while_while_cond_843479___redundant_placeholder14
0while_while_cond_843479___redundant_placeholder24
0while_while_cond_843479___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:

½
C__inference_lstm_12_layer_call_and_return_conditional_losses_841690

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_841417i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
Ñ(
Ï
while_body_841332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
Ñ(
Ï
while_body_841882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:


ä
.__inference_sequential_12_layer_call_fn_842344
lstm_12_input
unknown:	m
	unknown_0:	@
	unknown_1:	
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_842300o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input
à@
Ì
)__inference_gpu_lstm_with_fallback_840631

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÓ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_55e8b9d5-9882-4688-8b0d-c0dfc147a5bc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
	
Á
while_cond_844760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_844760___redundant_placeholder04
0while_while_cond_844760___redundant_placeholder14
0while_while_cond_844760___redundant_placeholder24
0while_while_cond_844760___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
 :
À
 __inference_standard_lstm_844846

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¶
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_844761*
condR
while_cond_844760*b
output_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_119b75bb-0206-480b-ad12-21f82c126126*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_843144_843320
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_bbfca5a9-4cc7-4851-bbcc-e96d5a9670f1*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_843319*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_841512_841688
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_092af709-4b73-4977-a100-cf12dc610725*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_841687*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
£

I__inference_sequential_12_layer_call_and_return_conditional_losses_842300

inputs!
lstm_12_842277:	m!
lstm_12_842279:	@
lstm_12_842281:	!
dense_36_842284:@ 
dense_36_842286: !
dense_37_842289:  
dense_37_842291: !
dense_38_842294: 
dense_38_842296:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢ dense_38/StatefulPartitionedCall¢lstm_12/StatefulPartitionedCallþ
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_842277lstm_12_842279lstm_12_842281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_842240
 dense_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_36_842284dense_36_842286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_841709
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_842289dense_37_842291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_841726
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_842294dense_38_842296*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_841742x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
©@
Ì
)__inference_gpu_lstm_with_fallback_843143

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÊ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_bbfca5a9-4cc7-4851-bbcc-e96d5a9670f1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
°
½
C__inference_lstm_12_layer_call_and_return_conditional_losses_841248

inputs/
read_readvariableop_resource:	m1
read_1_readvariableop_resource:	@-
read_2_readvariableop_resource:	

identity_3¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	m*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	mu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	@*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	@q
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:»
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_840975i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
	
Á
while_cond_840889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_840889___redundant_placeholder04
0while_while_cond_840889___redundant_placeholder14
0while_while_cond_840889___redundant_placeholder24
0while_while_cond_840889___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
÷
µ
(__inference_lstm_12_layer_call_fn_843400

inputs
unknown:	m
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_841690o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿm: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
¶L
¤
'__forward_gpu_lstm_with_fallback_841245

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : u
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0×
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_7e13e76f-427a-41bd-84c2-e91fbc7433e4*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_841070_841246*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
Ñ(
Ï
while_body_843480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:
à@
Ì
)__inference_gpu_lstm_with_fallback_844086

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : s
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:m@:m@:m@:m@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:@@:@@:@@:@@*
	num_splitY

zeros_likeConst*
_output_shapes	
:*
dtype0*
valueB*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0:@:@:@:@:@:@:@:@*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:@mY
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:@m[
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:À6a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
: a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:@@[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
: [
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:@[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:@\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:@\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:@\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:@\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:@\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:@\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:@O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ÞÓ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@p
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 r
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Z

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*v
_input_shapese
c:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:	m:	@:*=
api_implements+)lstm_8c8e5456-0329-4d28-aa0f-ff2afec9e536*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_h:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinit_c:GC

_output_shapes
:	m
 
_user_specified_namekernel:QM

_output_shapes
:	@
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:

_user_specified_namebias
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_844941_845117
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_119b75bb-0206-480b-ad12-21f82c126126*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_845116*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


õ
D__inference_dense_37_layer_call_and_return_conditional_losses_841726

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
êÂ
ó
;__inference___backward_gpu_lstm_with_fallback_840632_840808
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:ª
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:À
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ù
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesò
ï:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_55e8b9d5-9882-4688-8b0d-c0dfc147a5bc*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_840807*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: ::6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
:::
6
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
õÁ
ó
;__inference___backward_gpu_lstm_with_fallback_842697_842873
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:¤
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:¨
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:Å
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:É
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:À6j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB: j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB: i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:@i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:@j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:@ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ì
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:À6ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
: ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
: ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:@ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:@ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:@m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   m   §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:@mo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:@@o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:@@h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:@h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:@i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:@¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:@
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:m@
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:@@ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:¯
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	mµ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	@\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:h
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ê
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ò
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Ö
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:r
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿmt

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	mh

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	@d

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*é
_input_shapes×
Ô:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: :ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@::ÿÿÿÿÿÿÿÿÿm:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:Þ::ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::::::: : : : *=
api_implements+)lstm_5242f4aa-9231-44f7-85ab-e372fe47ca18*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_842872*
go_backwards( *

time_major( :- )
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@: 

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:	

_output_shapes
::1
-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:"

_output_shapes

:Þ: 

_output_shapes
::-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ç	
õ
D__inference_dense_38_layer_call_and_return_conditional_losses_841742

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


õ
D__inference_dense_36_layer_call_and_return_conditional_losses_841709

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£

I__inference_sequential_12_layer_call_and_return_conditional_losses_841749

inputs!
lstm_12_841691:	m!
lstm_12_841693:	@
lstm_12_841695:	!
dense_36_841710:@ 
dense_36_841712: !
dense_37_841727:  
dense_37_841729: !
dense_38_841743: 
dense_38_841745:
identity¢ dense_36/StatefulPartitionedCall¢ dense_37/StatefulPartitionedCall¢ dense_38/StatefulPartitionedCall¢lstm_12/StatefulPartitionedCallþ
lstm_12/StatefulPartitionedCallStatefulPartitionedCallinputslstm_12_841691lstm_12_841693lstm_12_841695*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_12_layer_call_and_return_conditional_losses_841690
 dense_36/StatefulPartitionedCallStatefulPartitionedCall(lstm_12/StatefulPartitionedCall:output:0dense_36_841710dense_36_841712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_36_layer_call_and_return_conditional_losses_841709
 dense_37/StatefulPartitionedCallStatefulPartitionedCall)dense_36/StatefulPartitionedCall:output:0dense_37_841727dense_37_841729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_37_layer_call_and_return_conditional_losses_841726
 dense_38/StatefulPartitionedCallStatefulPartitionedCall)dense_37/StatefulPartitionedCall:output:0dense_38_841743dense_38_841745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_38_layer_call_and_return_conditional_losses_841742x
IdentityIdentity)dense_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
NoOpNoOp!^dense_36/StatefulPartitionedCall!^dense_37/StatefulPartitionedCall!^dense_38/StatefulPartitionedCall ^lstm_12/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2D
 dense_37/StatefulPartitionedCall dense_37/StatefulPartitionedCall2D
 dense_38/StatefulPartitionedCall dense_38/StatefulPartitionedCall2B
lstm_12/StatefulPartitionedCalllstm_12/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
 
_user_specified_nameinputs
Ñ(
Ï
while_body_842517
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿm   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :È
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split`
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒ_
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : :	m:	@:: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	m:%	!

_output_shapes
:	@:!


_output_shapes	
:


ä
.__inference_sequential_12_layer_call_fn_841770
lstm_12_input
unknown:	m
	unknown_0:	@
	unknown_1:	
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7:
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCalllstm_12_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_12_layer_call_and_return_conditional_losses_841749o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿm: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
'
_user_specified_namelstm_12_input"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_12_input:
serving_default_lstm_12_input:0ÿÿÿÿÿÿÿÿÿm<
dense_380
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ôw

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
»

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
õ
/iter

0beta_1

1beta_2
	2decay
3learning_ratemimjmk ml'mm(mn4mo5mp6mqvrvsvt vu'vv(vw4vx5vy6vz"
	optimizer
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
_
40
51
62
3
4
5
 6
'7
(8"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_sequential_12_layer_call_fn_841770
.__inference_sequential_12_layer_call_fn_842425
.__inference_sequential_12_layer_call_fn_842448
.__inference_sequential_12_layer_call_fn_842344À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_12_layer_call_and_return_conditional_losses_842895
I__inference_sequential_12_layer_call_and_return_conditional_losses_843342
I__inference_sequential_12_layer_call_and_return_conditional_losses_842370
I__inference_sequential_12_layer_call_and_return_conditional_losses_842396À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
!__inference__wrapped_model_840379lstm_12_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
<serving_default"
signature_map
ø
=
state_size

4kernel
5recurrent_kernel
6bias
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Estates
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_12_layer_call_fn_843378
(__inference_lstm_12_layer_call_fn_843389
(__inference_lstm_12_layer_call_fn_843400
(__inference_lstm_12_layer_call_fn_843411Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_12_layer_call_and_return_conditional_losses_843838
C__inference_lstm_12_layer_call_and_return_conditional_losses_844265
C__inference_lstm_12_layer_call_and_return_conditional_losses_844692
C__inference_lstm_12_layer_call_and_return_conditional_losses_845119Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:@ 2dense_36/kernel
: 2dense_36/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_36_layer_call_fn_845128¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_36_layer_call_and_return_conditional_losses_845139¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:  2dense_37/kernel
: 2dense_37/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_37_layer_call_fn_845148¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_37_layer_call_and_return_conditional_losses_845159¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!: 2dense_38/kernel
:2dense_38/bias
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_38_layer_call_fn_845168¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_38_layer_call_and_return_conditional_losses_845178¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	m2lstm_12/lstm_cell_12/kernel
8:6	@2%lstm_12/lstm_cell_12/recurrent_kernel
(:&2lstm_12/lstm_cell_12/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÑBÎ
$__inference_signature_wrapper_843367lstm_12_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric
N
	etotal
	fcount
g	variables
h	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
.
e0
f1"
trackable_list_wrapper
-
g	variables"
_generic_user_object
&:$@ 2Adam/dense_36/kernel/m
 : 2Adam/dense_36/bias/m
&:$  2Adam/dense_37/kernel/m
 : 2Adam/dense_37/bias/m
&:$ 2Adam/dense_38/kernel/m
 :2Adam/dense_38/bias/m
3:1	m2"Adam/lstm_12/lstm_cell_12/kernel/m
=:;	@2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/m
-:+2 Adam/lstm_12/lstm_cell_12/bias/m
&:$@ 2Adam/dense_36/kernel/v
 : 2Adam/dense_36/bias/v
&:$  2Adam/dense_37/kernel/v
 : 2Adam/dense_37/bias/v
&:$ 2Adam/dense_38/kernel/v
 :2Adam/dense_38/bias/v
3:1	m2"Adam/lstm_12/lstm_cell_12/kernel/v
=:;	@2,Adam/lstm_12/lstm_cell_12/recurrent_kernel/v
-:+2 Adam/lstm_12/lstm_cell_12/bias/v¡
!__inference__wrapped_model_840379|	456 '(:¢7
0¢-
+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm
ª "3ª0
.
dense_38"
dense_38ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_36_layer_call_and_return_conditional_losses_845139\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
)__inference_dense_36_layer_call_fn_845128O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dense_37_layer_call_and_return_conditional_losses_845159\ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
)__inference_dense_37_layer_call_fn_845148O /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dense_38_layer_call_and_return_conditional_losses_845178\'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_38_layer_call_fn_845168O'(/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_12_layer_call_and_return_conditional_losses_843838}456O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ä
C__inference_lstm_12_layer_call_and_return_conditional_losses_844265}456O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_12_layer_call_and_return_conditional_losses_844692m456?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿm

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_12_layer_call_and_return_conditional_losses_845119m456?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿm

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_lstm_12_layer_call_fn_843378p456O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_12_layer_call_fn_843389p456O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿm

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_12_layer_call_fn_843400`456?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿm

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_12_layer_call_fn_843411`456?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿm

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ã
I__inference_sequential_12_layer_call_and_return_conditional_losses_842370v	456 '(B¢?
8¢5
+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
I__inference_sequential_12_layer_call_and_return_conditional_losses_842396v	456 '(B¢?
8¢5
+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
I__inference_sequential_12_layer_call_and_return_conditional_losses_842895o	456 '(;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿm
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
I__inference_sequential_12_layer_call_and_return_conditional_losses_843342o	456 '(;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿm
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_12_layer_call_fn_841770i	456 '(B¢?
8¢5
+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_12_layer_call_fn_842344i	456 '(B¢?
8¢5
+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm
p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_12_layer_call_fn_842425b	456 '(;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿm
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_12_layer_call_fn_842448b	456 '(;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿm
p

 
ª "ÿÿÿÿÿÿÿÿÿ¶
$__inference_signature_wrapper_843367	456 '(K¢H
¢ 
Aª>
<
lstm_12_input+(
lstm_12_inputÿÿÿÿÿÿÿÿÿm"3ª0
.
dense_38"
dense_38ÿÿÿÿÿÿÿÿÿ