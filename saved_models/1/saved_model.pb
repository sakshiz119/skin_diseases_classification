ļ
Õ
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
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-15-g6290819256d8¶ų
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
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:*
dtype0

Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/v/dense_4/kernel

)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes
:	*
dtype0

Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/m/dense_4/kernel

)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes
:	*
dtype0

Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
x
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes	
:*
dtype0

Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
x
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes	
:*
dtype0

Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel* 
_output_shapes
:
*
dtype0

Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel* 
_output_shapes
:
*
dtype0

Adam/v/conv2d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_98/bias
|
)Adam/v/conv2d_98/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_98/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_98/bias
|
)Adam/m/conv2d_98/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_98/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_98/kernel

+Adam/v/conv2d_98/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_98/kernel*(
_output_shapes
:*
dtype0

Adam/m/conv2d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_98/kernel

+Adam/m/conv2d_98/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_98/kernel*(
_output_shapes
:*
dtype0

Adam/v/conv2d_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_97/bias
|
)Adam/v/conv2d_97/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_97/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_97/bias
|
)Adam/m/conv2d_97/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_97/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_97/kernel

+Adam/v/conv2d_97/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_97/kernel*(
_output_shapes
:*
dtype0

Adam/m/conv2d_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_97/kernel

+Adam/m/conv2d_97/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_97/kernel*(
_output_shapes
:*
dtype0

Adam/v/conv2d_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_96/bias
|
)Adam/v/conv2d_96/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_96/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_96/bias
|
)Adam/m/conv2d_96/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_96/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_96/kernel

+Adam/v/conv2d_96/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_96/kernel*(
_output_shapes
:*
dtype0

Adam/m/conv2d_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_96/kernel

+Adam/m/conv2d_96/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_96/kernel*(
_output_shapes
:*
dtype0

Adam/v/conv2d_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_95/bias
|
)Adam/v/conv2d_95/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_95/bias*
_output_shapes	
:*
dtype0

Adam/m/conv2d_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_95/bias
|
)Adam/m/conv2d_95/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_95/bias*
_output_shapes	
:*
dtype0

Adam/v/conv2d_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/v/conv2d_95/kernel

+Adam/v/conv2d_95/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_95/kernel*'
_output_shapes
:@*
dtype0

Adam/m/conv2d_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/m/conv2d_95/kernel

+Adam/m/conv2d_95/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_95/kernel*'
_output_shapes
:@*
dtype0

Adam/v/conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_94/bias
{
)Adam/v/conv2d_94/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_94/bias*
_output_shapes
:@*
dtype0

Adam/m/conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_94/bias
{
)Adam/m/conv2d_94/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_94/bias*
_output_shapes
:@*
dtype0

Adam/v/conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/v/conv2d_94/kernel

+Adam/v/conv2d_94/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_94/kernel*&
_output_shapes
:@*
dtype0

Adam/m/conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/m/conv2d_94/kernel

+Adam/m/conv2d_94/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_94/kernel*&
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
*
dtype0
u
conv2d_98/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_98/bias
n
"conv2d_98/bias/Read/ReadVariableOpReadVariableOpconv2d_98/bias*
_output_shapes	
:*
dtype0

conv2d_98/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_98/kernel

$conv2d_98/kernel/Read/ReadVariableOpReadVariableOpconv2d_98/kernel*(
_output_shapes
:*
dtype0
u
conv2d_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_97/bias
n
"conv2d_97/bias/Read/ReadVariableOpReadVariableOpconv2d_97/bias*
_output_shapes	
:*
dtype0

conv2d_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_97/kernel

$conv2d_97/kernel/Read/ReadVariableOpReadVariableOpconv2d_97/kernel*(
_output_shapes
:*
dtype0
u
conv2d_96/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_96/bias
n
"conv2d_96/bias/Read/ReadVariableOpReadVariableOpconv2d_96/bias*
_output_shapes	
:*
dtype0

conv2d_96/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_96/kernel

$conv2d_96/kernel/Read/ReadVariableOpReadVariableOpconv2d_96/kernel*(
_output_shapes
:*
dtype0
u
conv2d_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_95/bias
n
"conv2d_95/bias/Read/ReadVariableOpReadVariableOpconv2d_95/bias*
_output_shapes	
:*
dtype0

conv2d_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_95/kernel
~
$conv2d_95/kernel/Read/ReadVariableOpReadVariableOpconv2d_95/kernel*'
_output_shapes
:@*
dtype0
t
conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_94/bias
m
"conv2d_94/bias/Read/ReadVariableOpReadVariableOpconv2d_94/bias*
_output_shapes
:@*
dtype0

conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_94/kernel
}
$conv2d_94/kernel/Read/ReadVariableOpReadVariableOpconv2d_94/kernel*&
_output_shapes
:@*
dtype0

 serving_default_sequential_inputPlaceholder*1
_output_shapes
:’’’’’’’’’*
dtype0*&
shape:’’’’’’’’’
½
StatefulPartitionedCallStatefulPartitionedCall serving_default_sequential_inputconv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasconv2d_96/kernelconv2d_96/biasconv2d_97/kernelconv2d_97/biasconv2d_98/kernelconv2d_98/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_170660

NoOpNoOp
ć{
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*{
value{B{ B{
¼
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ø
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Č
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*

)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses* 
Č
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op*

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
Č
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op*

G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses* 
Č
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op*

V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses* 
Č
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op*

e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses* 

k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
¦
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias*
§
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	bias*
k
&0
'1
52
63
D4
E5
S6
T7
b8
c9
w10
x11
12
13*
k
&0
'1
52
63
D4
E5
S6
T7
b8
c9
w10
x11
12
13*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 


_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla*

serving_default* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+”&call_and_return_all_conditional_losses* 
* 
* 
* 

¢non_trainable_variables
£layers
¤metrics
 „layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
:
§trace_0
Øtrace_1
©trace_2
Ŗtrace_3* 
:
«trace_0
¬trace_1
­trace_2
®trace_3* 

&0
'1*

&0
'1*
* 

Ænon_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

“trace_0* 

µtrace_0* 
`Z
VARIABLE_VALUEconv2d_94/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_94/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¶non_trainable_variables
·layers
ømetrics
 ¹layer_regularization_losses
ŗlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

»trace_0* 

¼trace_0* 

50
61*

50
61*
* 

½non_trainable_variables
¾layers
æmetrics
 Ąlayer_regularization_losses
Įlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

Ātrace_0* 

Ćtrace_0* 
`Z
VARIABLE_VALUEconv2d_95/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_95/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Änon_trainable_variables
Ålayers
Ęmetrics
 Ēlayer_regularization_losses
Člayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 

Étrace_0* 

Źtrace_0* 

D0
E1*

D0
E1*
* 

Ėnon_trainable_variables
Ģlayers
Ķmetrics
 Īlayer_regularization_losses
Ļlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Štrace_0* 

Ńtrace_0* 
`Z
VARIABLE_VALUEconv2d_96/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_96/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ņnon_trainable_variables
Ólayers
Ōmetrics
 Õlayer_regularization_losses
Ölayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses* 

×trace_0* 

Ųtrace_0* 

S0
T1*

S0
T1*
* 

Łnon_trainable_variables
Ślayers
Ūmetrics
 Ülayer_regularization_losses
Żlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

Žtrace_0* 

ßtrace_0* 
`Z
VARIABLE_VALUEconv2d_97/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_97/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

ąnon_trainable_variables
įlayers
āmetrics
 ćlayer_regularization_losses
älayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses* 

åtrace_0* 

ętrace_0* 

b0
c1*

b0
c1*
* 

ēnon_trainable_variables
člayers
émetrics
 źlayer_regularization_losses
ėlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

ģtrace_0* 

ķtrace_0* 
`Z
VARIABLE_VALUEconv2d_98/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_98/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

īnon_trainable_variables
ļlayers
šmetrics
 ńlayer_regularization_losses
ņlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

ótrace_0* 

ōtrace_0* 
* 
* 
* 

õnon_trainable_variables
ölayers
÷metrics
 ųlayer_regularization_losses
łlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

śtrace_0* 

ūtrace_0* 

w0
x1*

w0
x1*
* 

ünon_trainable_variables
żlayers
žmetrics
 ’layer_regularization_losses
layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*

0
1*
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
’
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
”22
¢23
£24
¤25
„26
¦27
§28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
0
1
2
3
4
5
6
7
8
9
 10
¢11
¤12
¦13*
x
0
1
2
3
4
5
6
7
8
9
”10
£11
„12
§13*
* 
* 
* 
* 
* 

Ønon_trainable_variables
©layers
Ŗmetrics
 «layer_regularization_losses
¬layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

­trace_0* 

®trace_0* 
* 
* 
* 

Ænon_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses* 

“trace_0* 

µtrace_0* 
* 

0
1* 
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
<
¶	variables
·	keras_api

øtotal

¹count*
M
ŗ	variables
»	keras_api

¼total

½count
¾
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_94/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_94/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_94/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_94/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_95/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_95/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_95/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_95/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_96/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_96/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_96/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_96/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_97/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_97/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_97/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_97/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_98/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_98/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_98/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_98/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_4/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
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

ø0
¹1*

¶	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¼0
½1*

ŗ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
»
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_94/kernel/Read/ReadVariableOp"conv2d_94/bias/Read/ReadVariableOp$conv2d_95/kernel/Read/ReadVariableOp"conv2d_95/bias/Read/ReadVariableOp$conv2d_96/kernel/Read/ReadVariableOp"conv2d_96/bias/Read/ReadVariableOp$conv2d_97/kernel/Read/ReadVariableOp"conv2d_97/bias/Read/ReadVariableOp$conv2d_98/kernel/Read/ReadVariableOp"conv2d_98/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp+Adam/m/conv2d_94/kernel/Read/ReadVariableOp+Adam/v/conv2d_94/kernel/Read/ReadVariableOp)Adam/m/conv2d_94/bias/Read/ReadVariableOp)Adam/v/conv2d_94/bias/Read/ReadVariableOp+Adam/m/conv2d_95/kernel/Read/ReadVariableOp+Adam/v/conv2d_95/kernel/Read/ReadVariableOp)Adam/m/conv2d_95/bias/Read/ReadVariableOp)Adam/v/conv2d_95/bias/Read/ReadVariableOp+Adam/m/conv2d_96/kernel/Read/ReadVariableOp+Adam/v/conv2d_96/kernel/Read/ReadVariableOp)Adam/m/conv2d_96/bias/Read/ReadVariableOp)Adam/v/conv2d_96/bias/Read/ReadVariableOp+Adam/m/conv2d_97/kernel/Read/ReadVariableOp+Adam/v/conv2d_97/kernel/Read/ReadVariableOp)Adam/m/conv2d_97/bias/Read/ReadVariableOp)Adam/v/conv2d_97/bias/Read/ReadVariableOp+Adam/m/conv2d_98/kernel/Read/ReadVariableOp+Adam/v/conv2d_98/kernel/Read/ReadVariableOp)Adam/m/conv2d_98/bias/Read/ReadVariableOp)Adam/v/conv2d_98/bias/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOp)Adam/m/dense_4/kernel/Read/ReadVariableOp)Adam/v/dense_4/kernel/Read/ReadVariableOp'Adam/m/dense_4/bias/Read/ReadVariableOp'Adam/v/dense_4/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*=
Tin6
422	*
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
__inference__traced_save_171280
ö	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasconv2d_96/kernelconv2d_96/biasconv2d_97/kernelconv2d_97/biasconv2d_98/kernelconv2d_98/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias	iterationlearning_rateAdam/m/conv2d_94/kernelAdam/v/conv2d_94/kernelAdam/m/conv2d_94/biasAdam/v/conv2d_94/biasAdam/m/conv2d_95/kernelAdam/v/conv2d_95/kernelAdam/m/conv2d_95/biasAdam/v/conv2d_95/biasAdam/m/conv2d_96/kernelAdam/v/conv2d_96/kernelAdam/m/conv2d_96/biasAdam/v/conv2d_96/biasAdam/m/conv2d_97/kernelAdam/v/conv2d_97/kernelAdam/m/conv2d_97/biasAdam/v/conv2d_97/biasAdam/m/conv2d_98/kernelAdam/v/conv2d_98/kernelAdam/m/conv2d_98/biasAdam/v/conv2d_98/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biastotal_1count_1totalcount*<
Tin5
321*
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
"__inference__traced_restore_171434øū	
Ā
Q
5__inference_average_pooling2d_12_layer_call_fn_171003

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
;
ź
H__inference_sequential_2_layer_call_and_return_conditional_losses_170279

inputs*
conv2d_94_170158:@
conv2d_94_170160:@+
conv2d_95_170176:@
conv2d_95_170178:	,
conv2d_96_170194:
conv2d_96_170196:	,
conv2d_97_170212:
conv2d_97_170214:	,
conv2d_98_170230:
conv2d_98_170232:	"
dense_3_170256:

dense_3_170258:	!
dense_4_170273:	
dense_4_170275:
identity¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢!conv2d_96/StatefulPartitionedCall¢!conv2d_97/StatefulPartitionedCall¢!conv2d_98/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallĘ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170030
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0conv2d_94_170158conv2d_94_170160*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’~~@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157ś
#average_pooling2d_9/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’??@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087£
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0conv2d_95_170176conv2d_95_170178*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175ż
$average_pooling2d_10/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099¤
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0conv2d_96_170194conv2d_96_170196*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193ż
$average_pooling2d_11/PartitionedCallPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111¤
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:0conv2d_97_170212conv2d_97_170214*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211ż
$average_pooling2d_12/PartitionedCallPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123¤
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_12/PartitionedCall:output:0conv2d_98_170230conv2d_98_170232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229ż
$average_pooling2d_13/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135ā
flatten_1/PartitionedCallPartitionedCall-average_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_170256dense_3_170258*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_170255
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_170273dense_4_170275*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_170272w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’¾
NoOpNoOp"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ą]
ģ
__inference__traced_save_171280
file_prefix/
+savev2_conv2d_94_kernel_read_readvariableop-
)savev2_conv2d_94_bias_read_readvariableop/
+savev2_conv2d_95_kernel_read_readvariableop-
)savev2_conv2d_95_bias_read_readvariableop/
+savev2_conv2d_96_kernel_read_readvariableop-
)savev2_conv2d_96_bias_read_readvariableop/
+savev2_conv2d_97_kernel_read_readvariableop-
)savev2_conv2d_97_bias_read_readvariableop/
+savev2_conv2d_98_kernel_read_readvariableop-
)savev2_conv2d_98_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop6
2savev2_adam_m_conv2d_94_kernel_read_readvariableop6
2savev2_adam_v_conv2d_94_kernel_read_readvariableop4
0savev2_adam_m_conv2d_94_bias_read_readvariableop4
0savev2_adam_v_conv2d_94_bias_read_readvariableop6
2savev2_adam_m_conv2d_95_kernel_read_readvariableop6
2savev2_adam_v_conv2d_95_kernel_read_readvariableop4
0savev2_adam_m_conv2d_95_bias_read_readvariableop4
0savev2_adam_v_conv2d_95_bias_read_readvariableop6
2savev2_adam_m_conv2d_96_kernel_read_readvariableop6
2savev2_adam_v_conv2d_96_kernel_read_readvariableop4
0savev2_adam_m_conv2d_96_bias_read_readvariableop4
0savev2_adam_v_conv2d_96_bias_read_readvariableop6
2savev2_adam_m_conv2d_97_kernel_read_readvariableop6
2savev2_adam_v_conv2d_97_kernel_read_readvariableop4
0savev2_adam_m_conv2d_97_bias_read_readvariableop4
0savev2_adam_v_conv2d_97_bias_read_readvariableop6
2savev2_adam_m_conv2d_98_kernel_read_readvariableop6
2savev2_adam_v_conv2d_98_kernel_read_readvariableop4
0savev2_adam_m_conv2d_98_bias_read_readvariableop4
0savev2_adam_v_conv2d_98_bias_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop4
0savev2_adam_m_dense_4_kernel_read_readvariableop4
0savev2_adam_v_dense_4_kernel_read_readvariableop2
.savev2_adam_m_dense_4_bias_read_readvariableop2
.savev2_adam_v_dense_4_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
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
: ņ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*
valueB1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHĻ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Č
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_94_kernel_read_readvariableop)savev2_conv2d_94_bias_read_readvariableop+savev2_conv2d_95_kernel_read_readvariableop)savev2_conv2d_95_bias_read_readvariableop+savev2_conv2d_96_kernel_read_readvariableop)savev2_conv2d_96_bias_read_readvariableop+savev2_conv2d_97_kernel_read_readvariableop)savev2_conv2d_97_bias_read_readvariableop+savev2_conv2d_98_kernel_read_readvariableop)savev2_conv2d_98_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop2savev2_adam_m_conv2d_94_kernel_read_readvariableop2savev2_adam_v_conv2d_94_kernel_read_readvariableop0savev2_adam_m_conv2d_94_bias_read_readvariableop0savev2_adam_v_conv2d_94_bias_read_readvariableop2savev2_adam_m_conv2d_95_kernel_read_readvariableop2savev2_adam_v_conv2d_95_kernel_read_readvariableop0savev2_adam_m_conv2d_95_bias_read_readvariableop0savev2_adam_v_conv2d_95_bias_read_readvariableop2savev2_adam_m_conv2d_96_kernel_read_readvariableop2savev2_adam_v_conv2d_96_kernel_read_readvariableop0savev2_adam_m_conv2d_96_bias_read_readvariableop0savev2_adam_v_conv2d_96_bias_read_readvariableop2savev2_adam_m_conv2d_97_kernel_read_readvariableop2savev2_adam_v_conv2d_97_kernel_read_readvariableop0savev2_adam_m_conv2d_97_bias_read_readvariableop0savev2_adam_v_conv2d_97_bias_read_readvariableop2savev2_adam_m_conv2d_98_kernel_read_readvariableop2savev2_adam_v_conv2d_98_kernel_read_readvariableop0savev2_adam_m_conv2d_98_bias_read_readvariableop0savev2_adam_v_conv2d_98_bias_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop0savev2_adam_m_dense_4_kernel_read_readvariableop0savev2_adam_v_dense_4_kernel_read_readvariableop.savev2_adam_m_dense_4_bias_read_readvariableop.savev2_adam_v_dense_4_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *?
dtypes5
321	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*
_input_shapes
: :@:@:@::::::::
::	:: : :@:@:@:@:@:@:::::::::::::::
:
:::	:	::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::.	*
(
_output_shapes
::!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::.*
(
_output_shapes
::!

_output_shapes	
::! 

_output_shapes	
::.!*
(
_output_shapes
::."*
(
_output_shapes
::!#

_output_shapes	
::!$

_output_shapes	
::&%"
 
_output_shapes
:
:&&"
 
_output_shapes
:
:!'

_output_shapes	
::!(

_output_shapes	
::%)!

_output_shapes
:	:%*!

_output_shapes
:	: +

_output_shapes
:: ,

_output_shapes
::-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: 
”
l
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_171038

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
×
b
F__inference_sequential_layer_call_and_return_conditional_losses_170030

inputs
identityĀ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_resizing_layer_call_and_return_conditional_losses_170017ß
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_170027t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
É
G
+__inference_sequential_layer_call_fn_170863

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170030j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ó
¢
*__inference_conv2d_98_layer_call_fn_171017

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
É
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
×
b
F__inference_sequential_layer_call_and_return_conditional_losses_170058

inputs
identityĀ
resizing/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_resizing_layer_call_and_return_conditional_losses_170017ß
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_170027t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¦

÷
C__inference_dense_3_layer_call_and_return_conditional_losses_171069

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ó
¢
*__inference_conv2d_97_layer_call_fn_170987

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ā
Q
5__inference_average_pooling2d_11_layer_call_fn_170973

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
;
ź
H__inference_sequential_2_layer_call_and_return_conditional_losses_170467

inputs*
conv2d_94_170425:@
conv2d_94_170427:@+
conv2d_95_170431:@
conv2d_95_170433:	,
conv2d_96_170437:
conv2d_96_170439:	,
conv2d_97_170443:
conv2d_97_170445:	,
conv2d_98_170449:
conv2d_98_170451:	"
dense_3_170456:

dense_3_170458:	!
dense_4_170461:	
dense_4_170463:
identity¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢!conv2d_96/StatefulPartitionedCall¢!conv2d_97/StatefulPartitionedCall¢!conv2d_98/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallĘ
sequential/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170058
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0conv2d_94_170425conv2d_94_170427*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’~~@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157ś
#average_pooling2d_9/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’??@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087£
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0conv2d_95_170431conv2d_95_170433*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175ż
$average_pooling2d_10/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099¤
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0conv2d_96_170437conv2d_96_170439*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193ż
$average_pooling2d_11/PartitionedCallPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111¤
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:0conv2d_97_170443conv2d_97_170445*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211ż
$average_pooling2d_12/PartitionedCallPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123¤
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_12/PartitionedCall:output:0conv2d_98_170449conv2d_98_170451*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229ż
$average_pooling2d_13/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135ā
flatten_1/PartitionedCallPartitionedCall-average_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_170456dense_3_170458*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_170255
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_170461dense_4_170463*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_170272w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’¾
NoOpNoOp"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_98_layer_call_and_return_conditional_losses_171028

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¦;
ō
H__inference_sequential_2_layer_call_and_return_conditional_losses_170577
sequential_input*
conv2d_94_170535:@
conv2d_94_170537:@+
conv2d_95_170541:@
conv2d_95_170543:	,
conv2d_96_170547:
conv2d_96_170549:	,
conv2d_97_170553:
conv2d_97_170555:	,
conv2d_98_170559:
conv2d_98_170561:	"
dense_3_170566:

dense_3_170568:	!
dense_4_170571:	
dense_4_170573:
identity¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢!conv2d_96/StatefulPartitionedCall¢!conv2d_97/StatefulPartitionedCall¢!conv2d_98/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallŠ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170030
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0conv2d_94_170535conv2d_94_170537*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’~~@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157ś
#average_pooling2d_9/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’??@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087£
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0conv2d_95_170541conv2d_95_170543*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175ż
$average_pooling2d_10/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099¤
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0conv2d_96_170547conv2d_96_170549*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193ż
$average_pooling2d_11/PartitionedCallPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111¤
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:0conv2d_97_170553conv2d_97_170555*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211ż
$average_pooling2d_12/PartitionedCallPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123¤
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_12/PartitionedCall:output:0conv2d_98_170559conv2d_98_170561*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229ż
$average_pooling2d_13/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135ā
flatten_1/PartitionedCallPartitionedCall-average_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_170566dense_3_170568*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_170255
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_170571dense_4_170573*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_170272w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’¾
NoOpNoOp"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input
’Q
¤
H__inference_sequential_2_layer_call_and_return_conditional_losses_170792

inputsB
(conv2d_94_conv2d_readvariableop_resource:@7
)conv2d_94_biasadd_readvariableop_resource:@C
(conv2d_95_conv2d_readvariableop_resource:@8
)conv2d_95_biasadd_readvariableop_resource:	D
(conv2d_96_conv2d_readvariableop_resource:8
)conv2d_96_biasadd_readvariableop_resource:	D
(conv2d_97_conv2d_readvariableop_resource:8
)conv2d_97_biasadd_readvariableop_resource:	D
(conv2d_98_conv2d_readvariableop_resource:8
)conv2d_98_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	9
&dense_4_matmul_readvariableop_resource:	5
'dense_4_biasadd_readvariableop_resource:
identity¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢ conv2d_96/BiasAdd/ReadVariableOp¢conv2d_96/Conv2D/ReadVariableOp¢ conv2d_97/BiasAdd/ReadVariableOp¢conv2d_97/Conv2D/ReadVariableOp¢ conv2d_98/BiasAdd/ReadVariableOp¢conv2d_98/Conv2D/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ć
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ä
conv2d_94/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@*
paddingVALID*
strides

 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@l
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’~~@ŗ
average_pooling2d_9/AvgPoolAvgPoolconv2d_94/Relu:activations:0*
T0*/
_output_shapes
:’’’’’’’’’??@*
ksize
*
paddingVALID*
strides

conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ķ
conv2d_95/Conv2DConv2D$average_pooling2d_9/AvgPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==*
paddingVALID*
strides

 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==m
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’==¼
average_pooling2d_10/AvgPoolAvgPoolconv2d_95/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_96/Conv2D/ReadVariableOpReadVariableOp(conv2d_96_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_96/Conv2DConv2D%average_pooling2d_10/AvgPool:output:0'conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_96/BiasAdd/ReadVariableOpReadVariableOp)conv2d_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_96/BiasAddBiasAddconv2d_96/Conv2D:output:0(conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_96/ReluReluconv2d_96/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_11/AvgPoolAvgPoolconv2d_96/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_97/Conv2D/ReadVariableOpReadVariableOp(conv2d_97_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_97/Conv2DConv2D%average_pooling2d_11/AvgPool:output:0'conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_97/BiasAdd/ReadVariableOpReadVariableOp)conv2d_97_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_97/BiasAddBiasAddconv2d_97/Conv2D:output:0(conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_97/ReluReluconv2d_97/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_12/AvgPoolAvgPoolconv2d_97/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_98/Conv2DConv2D%average_pooling2d_12/AvgPool:output:0'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_13/AvgPoolAvgPoolconv2d_98/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
flatten_1/ReshapeReshape%average_pooling2d_13/AvgPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’f
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’”
NoOpNoOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp!^conv2d_96/BiasAdd/ReadVariableOp ^conv2d_96/Conv2D/ReadVariableOp!^conv2d_97/BiasAdd/ReadVariableOp ^conv2d_97/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2D
 conv2d_96/BiasAdd/ReadVariableOp conv2d_96/BiasAdd/ReadVariableOp2B
conv2d_96/Conv2D/ReadVariableOpconv2d_96/Conv2D/ReadVariableOp2D
 conv2d_97/BiasAdd/ReadVariableOp conv2d_97/BiasAdd/ReadVariableOp2B
conv2d_97/Conv2D/ReadVariableOpconv2d_97/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


-__inference_sequential_2_layer_call_fn_170726

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170467o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
±
¢
-__inference_sequential_2_layer_call_fn_170531
sequential_input!
unknown:@
	unknown_0:@$
	unknown_1:@
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170467o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input


E__inference_conv2d_97_layer_call_and_return_conditional_losses_170998

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
	
b
F__inference_sequential_layer_call_and_return_conditional_losses_170878

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
 d
ó
!__inference__wrapped_model_170004
sequential_inputO
5sequential_2_conv2d_94_conv2d_readvariableop_resource:@D
6sequential_2_conv2d_94_biasadd_readvariableop_resource:@P
5sequential_2_conv2d_95_conv2d_readvariableop_resource:@E
6sequential_2_conv2d_95_biasadd_readvariableop_resource:	Q
5sequential_2_conv2d_96_conv2d_readvariableop_resource:E
6sequential_2_conv2d_96_biasadd_readvariableop_resource:	Q
5sequential_2_conv2d_97_conv2d_readvariableop_resource:E
6sequential_2_conv2d_97_biasadd_readvariableop_resource:	Q
5sequential_2_conv2d_98_conv2d_readvariableop_resource:E
6sequential_2_conv2d_98_biasadd_readvariableop_resource:	G
3sequential_2_dense_3_matmul_readvariableop_resource:
C
4sequential_2_dense_3_biasadd_readvariableop_resource:	F
3sequential_2_dense_4_matmul_readvariableop_resource:	B
4sequential_2_dense_4_biasadd_readvariableop_resource:
identity¢-sequential_2/conv2d_94/BiasAdd/ReadVariableOp¢,sequential_2/conv2d_94/Conv2D/ReadVariableOp¢-sequential_2/conv2d_95/BiasAdd/ReadVariableOp¢,sequential_2/conv2d_95/Conv2D/ReadVariableOp¢-sequential_2/conv2d_96/BiasAdd/ReadVariableOp¢,sequential_2/conv2d_96/Conv2D/ReadVariableOp¢-sequential_2/conv2d_97/BiasAdd/ReadVariableOp¢,sequential_2/conv2d_97/Conv2D/ReadVariableOp¢-sequential_2/conv2d_98/BiasAdd/ReadVariableOp¢,sequential_2/conv2d_98/Conv2D/ReadVariableOp¢+sequential_2/dense_3/BiasAdd/ReadVariableOp¢*sequential_2/dense_3/MatMul/ReadVariableOp¢+sequential_2/dense_4/BiasAdd/ReadVariableOp¢*sequential_2/dense_4/MatMul/ReadVariableOp}
,sequential_2/sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ē
6sequential_2/sequential/resizing/resize/ResizeBilinearResizeBilinearsequential_input5sequential_2/sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(m
(sequential_2/sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;o
*sequential_2/sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ä
%sequential_2/sequential/rescaling/mulMulGsequential_2/sequential/resizing/resize/ResizeBilinear:resized_images:01sequential_2/sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’Ź
%sequential_2/sequential/rescaling/addAddV2)sequential_2/sequential/rescaling/mul:z:03sequential_2/sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’Ŗ
,sequential_2/conv2d_94/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ė
sequential_2/conv2d_94/Conv2DConv2D)sequential_2/sequential/rescaling/add:z:04sequential_2/conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@*
paddingVALID*
strides
 
-sequential_2/conv2d_94/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ā
sequential_2/conv2d_94/BiasAddBiasAdd&sequential_2/conv2d_94/Conv2D:output:05sequential_2/conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@
sequential_2/conv2d_94/ReluRelu'sequential_2/conv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’~~@Ō
(sequential_2/average_pooling2d_9/AvgPoolAvgPool)sequential_2/conv2d_94/Relu:activations:0*
T0*/
_output_shapes
:’’’’’’’’’??@*
ksize
*
paddingVALID*
strides
«
,sequential_2/conv2d_95/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_95_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0ō
sequential_2/conv2d_95/Conv2DConv2D1sequential_2/average_pooling2d_9/AvgPool:output:04sequential_2/conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==*
paddingVALID*
strides
”
-sequential_2/conv2d_95/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ć
sequential_2/conv2d_95/BiasAddBiasAdd&sequential_2/conv2d_95/Conv2D:output:05sequential_2/conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==
sequential_2/conv2d_95/ReluRelu'sequential_2/conv2d_95/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’==Ö
)sequential_2/average_pooling2d_10/AvgPoolAvgPool)sequential_2/conv2d_95/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
¬
,sequential_2/conv2d_96/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_96_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0õ
sequential_2/conv2d_96/Conv2DConv2D2sequential_2/average_pooling2d_10/AvgPool:output:04sequential_2/conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
”
-sequential_2/conv2d_96/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ć
sequential_2/conv2d_96/BiasAddBiasAdd&sequential_2/conv2d_96/Conv2D:output:05sequential_2/conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
sequential_2/conv2d_96/ReluRelu'sequential_2/conv2d_96/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’Ö
)sequential_2/average_pooling2d_11/AvgPoolAvgPool)sequential_2/conv2d_96/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
¬
,sequential_2/conv2d_97/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_97_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0õ
sequential_2/conv2d_97/Conv2DConv2D2sequential_2/average_pooling2d_11/AvgPool:output:04sequential_2/conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
”
-sequential_2/conv2d_97/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_97_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ć
sequential_2/conv2d_97/BiasAddBiasAdd&sequential_2/conv2d_97/Conv2D:output:05sequential_2/conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
sequential_2/conv2d_97/ReluRelu'sequential_2/conv2d_97/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’Ö
)sequential_2/average_pooling2d_12/AvgPoolAvgPool)sequential_2/conv2d_97/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
¬
,sequential_2/conv2d_98/Conv2D/ReadVariableOpReadVariableOp5sequential_2_conv2d_98_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0õ
sequential_2/conv2d_98/Conv2DConv2D2sequential_2/average_pooling2d_12/AvgPool:output:04sequential_2/conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
”
-sequential_2/conv2d_98/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv2d_98_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ć
sequential_2/conv2d_98/BiasAddBiasAdd&sequential_2/conv2d_98/Conv2D:output:05sequential_2/conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’
sequential_2/conv2d_98/ReluRelu'sequential_2/conv2d_98/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’Ö
)sequential_2/average_pooling2d_13/AvgPoolAvgPool)sequential_2/conv2d_98/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
m
sequential_2/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ·
sequential_2/flatten_1/ReshapeReshape2sequential_2/average_pooling2d_13/AvgPool:output:0%sequential_2/flatten_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’ 
*sequential_2/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0µ
sequential_2/dense_3/MatMulMatMul'sequential_2/flatten_1/Reshape:output:02sequential_2/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
+sequential_2/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¶
sequential_2/dense_3/BiasAddBiasAdd%sequential_2/dense_3/MatMul:product:03sequential_2/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’{
sequential_2/dense_3/ReluRelu%sequential_2/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
*sequential_2/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0“
sequential_2/dense_4/MatMulMatMul'sequential_2/dense_3/Relu:activations:02sequential_2/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
+sequential_2/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_2/dense_4/BiasAddBiasAdd%sequential_2/dense_4/MatMul:product:03sequential_2/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
sequential_2/dense_4/SoftmaxSoftmax%sequential_2/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’u
IdentityIdentity&sequential_2/dense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’×
NoOpNoOp.^sequential_2/conv2d_94/BiasAdd/ReadVariableOp-^sequential_2/conv2d_94/Conv2D/ReadVariableOp.^sequential_2/conv2d_95/BiasAdd/ReadVariableOp-^sequential_2/conv2d_95/Conv2D/ReadVariableOp.^sequential_2/conv2d_96/BiasAdd/ReadVariableOp-^sequential_2/conv2d_96/Conv2D/ReadVariableOp.^sequential_2/conv2d_97/BiasAdd/ReadVariableOp-^sequential_2/conv2d_97/Conv2D/ReadVariableOp.^sequential_2/conv2d_98/BiasAdd/ReadVariableOp-^sequential_2/conv2d_98/Conv2D/ReadVariableOp,^sequential_2/dense_3/BiasAdd/ReadVariableOp+^sequential_2/dense_3/MatMul/ReadVariableOp,^sequential_2/dense_4/BiasAdd/ReadVariableOp+^sequential_2/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2^
-sequential_2/conv2d_94/BiasAdd/ReadVariableOp-sequential_2/conv2d_94/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_94/Conv2D/ReadVariableOp,sequential_2/conv2d_94/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_95/BiasAdd/ReadVariableOp-sequential_2/conv2d_95/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_95/Conv2D/ReadVariableOp,sequential_2/conv2d_95/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_96/BiasAdd/ReadVariableOp-sequential_2/conv2d_96/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_96/Conv2D/ReadVariableOp,sequential_2/conv2d_96/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_97/BiasAdd/ReadVariableOp-sequential_2/conv2d_97/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_97/Conv2D/ReadVariableOp,sequential_2/conv2d_97/Conv2D/ReadVariableOp2^
-sequential_2/conv2d_98/BiasAdd/ReadVariableOp-sequential_2/conv2d_98/BiasAdd/ReadVariableOp2\
,sequential_2/conv2d_98/Conv2D/ReadVariableOp,sequential_2/conv2d_98/Conv2D/ReadVariableOp2Z
+sequential_2/dense_3/BiasAdd/ReadVariableOp+sequential_2/dense_3/BiasAdd/ReadVariableOp2X
*sequential_2/dense_3/MatMul/ReadVariableOp*sequential_2/dense_3/MatMul/ReadVariableOp2Z
+sequential_2/dense_4/BiasAdd/ReadVariableOp+sequential_2/dense_4/BiasAdd/ReadVariableOp2X
*sequential_2/dense_4/MatMul/ReadVariableOp*sequential_2/dense_4/MatMul/ReadVariableOp:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input
£

õ
C__inference_dense_4_layer_call_and_return_conditional_losses_170272

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
š

*__inference_conv2d_94_layer_call_fn_170897

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallā
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’~~@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’~~@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Å
E
)__inference_resizing_layer_call_fn_171094

inputs
identity¹
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_resizing_layer_call_and_return_conditional_losses_170017j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ā
Q
5__inference_average_pooling2d_10_layer_call_fn_170943

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
É
G
+__inference_sequential_layer_call_fn_170868

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170058j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
’Q
¤
H__inference_sequential_2_layer_call_and_return_conditional_losses_170858

inputsB
(conv2d_94_conv2d_readvariableop_resource:@7
)conv2d_94_biasadd_readvariableop_resource:@C
(conv2d_95_conv2d_readvariableop_resource:@8
)conv2d_95_biasadd_readvariableop_resource:	D
(conv2d_96_conv2d_readvariableop_resource:8
)conv2d_96_biasadd_readvariableop_resource:	D
(conv2d_97_conv2d_readvariableop_resource:8
)conv2d_97_biasadd_readvariableop_resource:	D
(conv2d_98_conv2d_readvariableop_resource:8
)conv2d_98_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
6
'dense_3_biasadd_readvariableop_resource:	9
&dense_4_matmul_readvariableop_resource:	5
'dense_4_biasadd_readvariableop_resource:
identity¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢ conv2d_96/BiasAdd/ReadVariableOp¢conv2d_96/Conv2D/ReadVariableOp¢ conv2d_97/BiasAdd/ReadVariableOp¢conv2d_97/Conv2D/ReadVariableOp¢ conv2d_98/BiasAdd/ReadVariableOp¢conv2d_98/Conv2D/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOpp
sequential/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ć
)sequential/resizing/resize/ResizeBilinearResizeBilinearinputs(sequential/resizing/resize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(`
sequential/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;b
sequential/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ½
sequential/rescaling/mulMul:sequential/resizing/resize/ResizeBilinear:resized_images:0$sequential/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’£
sequential/rescaling/addAddV2sequential/rescaling/mul:z:0&sequential/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ä
conv2d_94/Conv2DConv2Dsequential/rescaling/add:z:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@*
paddingVALID*
strides

 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@l
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’~~@ŗ
average_pooling2d_9/AvgPoolAvgPoolconv2d_94/Relu:activations:0*
T0*/
_output_shapes
:’’’’’’’’’??@*
ksize
*
paddingVALID*
strides

conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ķ
conv2d_95/Conv2DConv2D$average_pooling2d_9/AvgPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==*
paddingVALID*
strides

 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==m
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’==¼
average_pooling2d_10/AvgPoolAvgPoolconv2d_95/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_96/Conv2D/ReadVariableOpReadVariableOp(conv2d_96_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_96/Conv2DConv2D%average_pooling2d_10/AvgPool:output:0'conv2d_96/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_96/BiasAdd/ReadVariableOpReadVariableOp)conv2d_96_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_96/BiasAddBiasAddconv2d_96/Conv2D:output:0(conv2d_96/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_96/ReluReluconv2d_96/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_11/AvgPoolAvgPoolconv2d_96/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_97/Conv2D/ReadVariableOpReadVariableOp(conv2d_97_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_97/Conv2DConv2D%average_pooling2d_11/AvgPool:output:0'conv2d_97/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_97/BiasAdd/ReadVariableOpReadVariableOp)conv2d_97_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_97/BiasAddBiasAddconv2d_97/Conv2D:output:0(conv2d_97/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_97/ReluReluconv2d_97/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_12/AvgPoolAvgPoolconv2d_97/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides

conv2d_98/Conv2D/ReadVariableOpReadVariableOp(conv2d_98_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ī
conv2d_98/Conv2DConv2D%average_pooling2d_12/AvgPool:output:0'conv2d_98/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides

 conv2d_98/BiasAdd/ReadVariableOpReadVariableOp)conv2d_98_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_98/BiasAddBiasAddconv2d_98/Conv2D:output:0(conv2d_98/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’m
conv2d_98/ReluReluconv2d_98/BiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’¼
average_pooling2d_13/AvgPoolAvgPoolconv2d_98/Relu:activations:0*
T0*0
_output_shapes
:’’’’’’’’’*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
flatten_1/ReshapeReshape%average_pooling2d_13/AvgPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_4/MatMulMatMuldense_3/Relu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’f
dense_4/SoftmaxSoftmaxdense_4/BiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’”
NoOpNoOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp!^conv2d_96/BiasAdd/ReadVariableOp ^conv2d_96/Conv2D/ReadVariableOp!^conv2d_97/BiasAdd/ReadVariableOp ^conv2d_97/Conv2D/ReadVariableOp!^conv2d_98/BiasAdd/ReadVariableOp ^conv2d_98/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2D
 conv2d_96/BiasAdd/ReadVariableOp conv2d_96/BiasAdd/ReadVariableOp2B
conv2d_96/Conv2D/ReadVariableOpconv2d_96/Conv2D/ReadVariableOp2D
 conv2d_97/BiasAdd/ReadVariableOp conv2d_97/BiasAdd/ReadVariableOp2B
conv2d_97/Conv2D/ReadVariableOpconv2d_97/Conv2D/ReadVariableOp2D
 conv2d_98/BiasAdd/ReadVariableOp conv2d_98/BiasAdd/ReadVariableOp2B
conv2d_98/Conv2D/ReadVariableOpconv2d_98/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

ž
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170908

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’~~@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’~~@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
”
l
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
į
O
+__inference_sequential_layer_call_fn_170066
resizing_input
identityĆ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170058j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:a ]
1
_output_shapes
:’’’’’’’’’
(
_user_specified_nameresizing_input
”
l
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
’É
Ā
"__inference__traced_restore_171434
file_prefix;
!assignvariableop_conv2d_94_kernel:@/
!assignvariableop_1_conv2d_94_bias:@>
#assignvariableop_2_conv2d_95_kernel:@0
!assignvariableop_3_conv2d_95_bias:	?
#assignvariableop_4_conv2d_96_kernel:0
!assignvariableop_5_conv2d_96_bias:	?
#assignvariableop_6_conv2d_97_kernel:0
!assignvariableop_7_conv2d_97_bias:	?
#assignvariableop_8_conv2d_98_kernel:0
!assignvariableop_9_conv2d_98_bias:	6
"assignvariableop_10_dense_3_kernel:
/
 assignvariableop_11_dense_3_bias:	5
"assignvariableop_12_dense_4_kernel:	.
 assignvariableop_13_dense_4_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: E
+assignvariableop_16_adam_m_conv2d_94_kernel:@E
+assignvariableop_17_adam_v_conv2d_94_kernel:@7
)assignvariableop_18_adam_m_conv2d_94_bias:@7
)assignvariableop_19_adam_v_conv2d_94_bias:@F
+assignvariableop_20_adam_m_conv2d_95_kernel:@F
+assignvariableop_21_adam_v_conv2d_95_kernel:@8
)assignvariableop_22_adam_m_conv2d_95_bias:	8
)assignvariableop_23_adam_v_conv2d_95_bias:	G
+assignvariableop_24_adam_m_conv2d_96_kernel:G
+assignvariableop_25_adam_v_conv2d_96_kernel:8
)assignvariableop_26_adam_m_conv2d_96_bias:	8
)assignvariableop_27_adam_v_conv2d_96_bias:	G
+assignvariableop_28_adam_m_conv2d_97_kernel:G
+assignvariableop_29_adam_v_conv2d_97_kernel:8
)assignvariableop_30_adam_m_conv2d_97_bias:	8
)assignvariableop_31_adam_v_conv2d_97_bias:	G
+assignvariableop_32_adam_m_conv2d_98_kernel:G
+assignvariableop_33_adam_v_conv2d_98_kernel:8
)assignvariableop_34_adam_m_conv2d_98_bias:	8
)assignvariableop_35_adam_v_conv2d_98_bias:	=
)assignvariableop_36_adam_m_dense_3_kernel:
=
)assignvariableop_37_adam_v_dense_3_kernel:
6
'assignvariableop_38_adam_m_dense_3_bias:	6
'assignvariableop_39_adam_v_dense_3_bias:	<
)assignvariableop_40_adam_m_dense_4_kernel:	<
)assignvariableop_41_adam_v_dense_4_kernel:	5
'assignvariableop_42_adam_m_dense_4_bias:5
'assignvariableop_43_adam_v_dense_4_bias:%
assignvariableop_44_total_1: %
assignvariableop_45_count_1: #
assignvariableop_46_total: #
assignvariableop_47_count: 
identity_49¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9õ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*
valueB1B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHŅ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ś
_output_shapesĒ
Ä:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_94_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_94_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_95_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_95_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_96_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_96_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_97_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_97_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_98_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_98_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_3_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_3_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_4_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:¶
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ŗ
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_m_conv2d_94_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_v_conv2d_94_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_m_conv2d_94_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_v_conv2d_94_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_m_conv2d_95_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_v_conv2d_95_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_conv2d_95_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_conv2d_95_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_m_conv2d_96_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_v_conv2d_96_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_m_conv2d_96_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_v_conv2d_96_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adam_m_conv2d_97_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_v_conv2d_97_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_conv2d_97_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_conv2d_97_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_m_conv2d_98_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ä
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_v_conv2d_98_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_conv2d_98_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_conv2d_98_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_dense_3_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_dense_3_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_m_dense_3_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_v_dense_3_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_dense_4_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_dense_4_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_m_dense_4_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_v_dense_4_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ļ
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: Ü
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
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
¦

÷
C__inference_dense_3_layer_call_and_return_conditional_losses_170255

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


-__inference_sequential_2_layer_call_fn_170693

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170279o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
÷
a
E__inference_rescaling_layer_call_and_return_conditional_losses_170027

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
³
F
*__inference_flatten_1_layer_call_fn_171043

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ó
¢
*__inference_conv2d_96_layer_call_fn_170957

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


$__inference_signature_wrapper_170660
sequential_input!
unknown:@
	unknown_0:@$
	unknown_1:@
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_170004o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input
Ā
Q
5__inference_average_pooling2d_13_layer_call_fn_171033

inputs
identityŽ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
”
l
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_171008

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ē

(__inference_dense_3_layer_call_fn_171058

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallŁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_170255p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ć

(__inference_dense_4_layer_call_fn_171078

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallŲ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_170272o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
į
O
+__inference_sequential_layer_call_fn_170033
resizing_input
identityĆ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170030j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:a ]
1
_output_shapes
:’’’’’’’’’
(
_user_specified_nameresizing_input
É
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_171049

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:’’’’’’’’’:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

ž
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:’’’’’’’’’~~@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:’’’’’’’’’~~@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:’’’’’’’’’~~@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ļ
j
F__inference_sequential_layer_call_and_return_conditional_losses_170078
resizing_input
identityŹ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_resizing_layer_call_and_return_conditional_losses_170017ß
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_170027t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:a ]
1
_output_shapes
:’’’’’’’’’
(
_user_specified_nameresizing_input
®
`
D__inference_resizing_layer_call_and_return_conditional_losses_171100

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
®
`
D__inference_resizing_layer_call_and_return_conditional_losses_170017

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_96_layer_call_and_return_conditional_losses_170968

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’==j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’==w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’??@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’??@
 
_user_specified_nameinputs
¦;
ō
H__inference_sequential_2_layer_call_and_return_conditional_losses_170623
sequential_input*
conv2d_94_170581:@
conv2d_94_170583:@+
conv2d_95_170587:@
conv2d_95_170589:	,
conv2d_96_170593:
conv2d_96_170595:	,
conv2d_97_170599:
conv2d_97_170601:	,
conv2d_98_170605:
conv2d_98_170607:	"
dense_3_170612:

dense_3_170614:	!
dense_4_170617:	
dense_4_170619:
identity¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢!conv2d_96/StatefulPartitionedCall¢!conv2d_97/StatefulPartitionedCall¢!conv2d_98/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCallŠ
sequential/PartitionedCallPartitionedCallsequential_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_170058
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall#sequential/PartitionedCall:output:0conv2d_94_170581conv2d_94_170583*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’~~@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170157ś
#average_pooling2d_9/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:’’’’’’’’’??@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087£
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall,average_pooling2d_9/PartitionedCall:output:0conv2d_95_170587conv2d_95_170589*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175ż
$average_pooling2d_10/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099¤
!conv2d_96/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_10/PartitionedCall:output:0conv2d_96_170593conv2d_96_170595*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170193ż
$average_pooling2d_11/PartitionedCallPartitionedCall*conv2d_96/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170111¤
!conv2d_97/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_11/PartitionedCall:output:0conv2d_97_170599conv2d_97_170601*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211ż
$average_pooling2d_12/PartitionedCallPartitionedCall*conv2d_97/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_170123¤
!conv2d_98/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_12/PartitionedCall:output:0conv2d_98_170605conv2d_98_170607*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_98_layer_call_and_return_conditional_losses_170229ż
$average_pooling2d_13/PartitionedCallPartitionedCall*conv2d_98/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135ā
flatten_1/PartitionedCallPartitionedCall-average_pooling2d_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_170242
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_170612dense_3_170614*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_170255
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_170617dense_4_170619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_170272w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’¾
NoOpNoOp"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall"^conv2d_96/StatefulPartitionedCall"^conv2d_97/StatefulPartitionedCall"^conv2d_98/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2F
!conv2d_96/StatefulPartitionedCall!conv2d_96/StatefulPartitionedCall2F
!conv2d_97/StatefulPartitionedCall!conv2d_97/StatefulPartitionedCall2F
!conv2d_98/StatefulPartitionedCall!conv2d_98/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input
”
l
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170099

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ļ
j
F__inference_sequential_layer_call_and_return_conditional_losses_170072
resizing_input
identityŹ
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_resizing_layer_call_and_return_conditional_losses_170017ß
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_170027t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:a ]
1
_output_shapes
:’’’’’’’’’
(
_user_specified_nameresizing_input
”
l
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170948

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


E__inference_conv2d_95_layer_call_and_return_conditional_losses_170938

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’==Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’==j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’==w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’??@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:’’’’’’’’’??@
 
_user_specified_nameinputs


E__inference_conv2d_97_layer_call_and_return_conditional_losses_170211

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:’’’’’’’’’Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:’’’’’’’’’j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
š
”
*__inference_conv2d_95_layer_call_fn_170927

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCallć
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:’’’’’’’’’==*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170175x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:’’’’’’’’’==`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:’’’’’’’’’??@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:’’’’’’’’’??@
 
_user_specified_nameinputs
£

õ
C__inference_dense_4_layer_call_and_return_conditional_losses_171089

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:’’’’’’’’’`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ą
P
4__inference_average_pooling2d_9_layer_call_fn_170913

inputs
identityŻ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170087
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
”
l
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_170135

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
±
¢
-__inference_sequential_2_layer_call_fn_170310
sequential_input!
unknown:@
	unknown_0:@$
	unknown_1:@
	unknown_2:	%
	unknown_3:
	unknown_4:	%
	unknown_5:
	unknown_6:	%
	unknown_7:
	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsequential_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170279o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:’’’’’’’’’: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
1
_output_shapes
:’’’’’’’’’
*
_user_specified_namesequential_input
Ē
F
*__inference_rescaling_layer_call_fn_171105

inputs
identityŗ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_rescaling_layer_call_and_return_conditional_losses_170027j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
	
b
F__inference_sequential_layer_call_and_return_conditional_losses_170888

inputs
identitye
resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ­
resizing/resize/ResizeBilinearResizeBilinearinputsresizing/resize/size:output:0*
T0*1
_output_shapes
:’’’’’’’’’*
half_pixel_centers(U
rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;W
rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
rescaling/mulMul/resizing/resize/ResizeBilinear:resized_images:0rescaling/Cast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’
rescaling/addAddV2rescaling/mul:z:0rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’c
IdentityIdentityrescaling/add:z:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
÷
a
E__inference_rescaling_layer_call_and_return_conditional_losses_171113

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:’’’’’’’’’Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:’’’’’’’’’:Y U
1
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
 
k
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170918

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
”
l
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170978

inputs
identity«
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’:r n
J
_output_shapes8
6:4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ę
serving_default²
W
sequential_inputC
"serving_default_sequential_input:0’’’’’’’’’;
dense_40
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:°
Ö
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ä
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ż
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
„
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
Ż
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias
 7_jit_compiled_convolution_op"
_tf_keras_layer
„
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
Ż
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias
 F_jit_compiled_convolution_op"
_tf_keras_layer
„
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
Ż
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias
 U_jit_compiled_convolution_op"
_tf_keras_layer
„
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_layer
Ż
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses

bkernel
cbias
 d_jit_compiled_convolution_op"
_tf_keras_layer
„
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
„
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
»
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias"
_tf_keras_layer
¼
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	bias"
_tf_keras_layer

&0
'1
52
63
D4
E5
S6
T7
b8
c9
w10
x11
12
13"
trackable_list_wrapper

&0
'1
52
63
D4
E5
S6
T7
b8
c9
w10
x11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ļ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ń
trace_0
trace_1
trace_2
trace_32ž
-__inference_sequential_2_layer_call_fn_170310
-__inference_sequential_2_layer_call_fn_170693
-__inference_sequential_2_layer_call_fn_170726
-__inference_sequential_2_layer_call_fn_170531æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ż
trace_0
trace_1
trace_2
trace_32ź
H__inference_sequential_2_layer_call_and_return_conditional_losses_170792
H__inference_sequential_2_layer_call_and_return_conditional_losses_170858
H__inference_sequential_2_layer_call_and_return_conditional_losses_170577
H__inference_sequential_2_layer_call_and_return_conditional_losses_170623æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ÕBŅ
!__inference__wrapped_model_170004sequential_input"
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
annotationsŖ *
 
£

_variables
_iterations
_learning_rate
_index_dict

_momentums
_velocities
_update_step_xla"
experimentalOptimizer
-
serving_default"
signature_map
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+”&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¢non_trainable_variables
£layers
¤metrics
 „layer_regularization_losses
¦layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
é
§trace_0
Øtrace_1
©trace_2
Ŗtrace_32ö
+__inference_sequential_layer_call_fn_170033
+__inference_sequential_layer_call_fn_170863
+__inference_sequential_layer_call_fn_170868
+__inference_sequential_layer_call_fn_170066æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z§trace_0zØtrace_1z©trace_2zŖtrace_3
Õ
«trace_0
¬trace_1
­trace_2
®trace_32ā
F__inference_sequential_layer_call_and_return_conditional_losses_170878
F__inference_sequential_layer_call_and_return_conditional_losses_170888
F__inference_sequential_layer_call_and_return_conditional_losses_170072
F__inference_sequential_layer_call_and_return_conditional_losses_170078æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z«trace_0z¬trace_1z­trace_2z®trace_3
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
š
“trace_02Ń
*__inference_conv2d_94_layer_call_fn_170897¢
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
annotationsŖ *
 z“trace_0

µtrace_02ģ
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170908¢
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
annotationsŖ *
 zµtrace_0
*:(@2conv2d_94/kernel
:@2conv2d_94/bias
“2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¶non_trainable_variables
·layers
ømetrics
 ¹layer_regularization_losses
ŗlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
ś
»trace_02Ū
4__inference_average_pooling2d_9_layer_call_fn_170913¢
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
annotationsŖ *
 z»trace_0

¼trace_02ö
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170918¢
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
annotationsŖ *
 z¼trace_0
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
²
½non_trainable_variables
¾layers
æmetrics
 Ąlayer_regularization_losses
Įlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
š
Ātrace_02Ń
*__inference_conv2d_95_layer_call_fn_170927¢
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
annotationsŖ *
 zĀtrace_0

Ćtrace_02ģ
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170938¢
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
annotationsŖ *
 zĆtrace_0
+:)@2conv2d_95/kernel
:2conv2d_95/bias
“2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Änon_trainable_variables
Ålayers
Ęmetrics
 Ēlayer_regularization_losses
Člayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ū
Étrace_02Ü
5__inference_average_pooling2d_10_layer_call_fn_170943¢
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
annotationsŖ *
 zÉtrace_0

Źtrace_02÷
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170948¢
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
annotationsŖ *
 zŹtrace_0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ėnon_trainable_variables
Ģlayers
Ķmetrics
 Īlayer_regularization_losses
Ļlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
š
Štrace_02Ń
*__inference_conv2d_96_layer_call_fn_170957¢
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
annotationsŖ *
 zŠtrace_0

Ńtrace_02ģ
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170968¢
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
annotationsŖ *
 zŃtrace_0
,:*2conv2d_96/kernel
:2conv2d_96/bias
“2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ņnon_trainable_variables
Ólayers
Ōmetrics
 Õlayer_regularization_losses
Ölayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ū
×trace_02Ü
5__inference_average_pooling2d_11_layer_call_fn_170973¢
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
annotationsŖ *
 z×trace_0

Ųtrace_02÷
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170978¢
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
annotationsŖ *
 zŲtrace_0
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Łnon_trainable_variables
Ślayers
Ūmetrics
 Ülayer_regularization_losses
Żlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
š
Žtrace_02Ń
*__inference_conv2d_97_layer_call_fn_170987¢
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
annotationsŖ *
 zŽtrace_0

ßtrace_02ģ
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170998¢
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
annotationsŖ *
 zßtrace_0
,:*2conv2d_97/kernel
:2conv2d_97/bias
“2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ąnon_trainable_variables
įlayers
āmetrics
 ćlayer_regularization_losses
älayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ū
åtrace_02Ü
5__inference_average_pooling2d_12_layer_call_fn_171003¢
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
annotationsŖ *
 zåtrace_0

ętrace_02÷
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_171008¢
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
annotationsŖ *
 zętrace_0
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ēnon_trainable_variables
člayers
émetrics
 źlayer_regularization_losses
ėlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
š
ģtrace_02Ń
*__inference_conv2d_98_layer_call_fn_171017¢
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
annotationsŖ *
 zģtrace_0

ķtrace_02ģ
E__inference_conv2d_98_layer_call_and_return_conditional_losses_171028¢
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
annotationsŖ *
 zķtrace_0
,:*2conv2d_98/kernel
:2conv2d_98/bias
“2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
īnon_trainable_variables
ļlayers
šmetrics
 ńlayer_regularization_losses
ņlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
ū
ótrace_02Ü
5__inference_average_pooling2d_13_layer_call_fn_171033¢
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
annotationsŖ *
 zótrace_0

ōtrace_02÷
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_171038¢
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
annotationsŖ *
 zōtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
õnon_trainable_variables
ölayers
÷metrics
 ųlayer_regularization_losses
łlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
š
śtrace_02Ń
*__inference_flatten_1_layer_call_fn_171043¢
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
annotationsŖ *
 zśtrace_0

ūtrace_02ģ
E__inference_flatten_1_layer_call_and_return_conditional_losses_171049¢
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
annotationsŖ *
 zūtrace_0
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ünon_trainable_variables
żlayers
žmetrics
 ’layer_regularization_losses
layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
ī
trace_02Ļ
(__inference_dense_3_layer_call_fn_171058¢
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
annotationsŖ *
 ztrace_0

trace_02ź
C__inference_dense_3_layer_call_and_return_conditional_losses_171069¢
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
annotationsŖ *
 ztrace_0
": 
2dense_3/kernel
:2dense_3/bias
/
0
1"
trackable_list_wrapper
/
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
ī
trace_02Ļ
(__inference_dense_4_layer_call_fn_171078¢
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
annotationsŖ *
 ztrace_0

trace_02ź
C__inference_dense_4_layer_call_and_return_conditional_losses_171089¢
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
annotationsŖ *
 ztrace_0
!:	2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
-__inference_sequential_2_layer_call_fn_170310sequential_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
žBū
-__inference_sequential_2_layer_call_fn_170693inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
žBū
-__inference_sequential_2_layer_call_fn_170726inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
-__inference_sequential_2_layer_call_fn_170531sequential_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_170792inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
H__inference_sequential_2_layer_call_and_return_conditional_losses_170858inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
£B 
H__inference_sequential_2_layer_call_and_return_conditional_losses_170577sequential_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
£B 
H__inference_sequential_2_layer_call_and_return_conditional_losses_170623sequential_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 

0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
”22
¢23
£24
¤25
„26
¦27
§28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

0
1
2
3
4
5
6
7
8
9
 10
¢11
¤12
¦13"
trackable_list_wrapper

0
1
2
3
4
5
6
7
8
9
”10
£11
„12
§13"
trackable_list_wrapper
æ2¼¹
®²Ŗ
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 0
ŌBŃ
$__inference_signature_wrapper_170660sequential_input"
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
annotationsŖ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ø
Ønon_trainable_variables
©layers
Ŗmetrics
 «layer_regularization_losses
¬layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ļ
­trace_02Š
)__inference_resizing_layer_call_fn_171094¢
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
annotationsŖ *
 z­trace_0

®trace_02ė
D__inference_resizing_layer_call_and_return_conditional_losses_171100¢
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
annotationsŖ *
 z®trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ø
Ænon_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
š
“trace_02Ń
*__inference_rescaling_layer_call_fn_171105¢
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
annotationsŖ *
 z“trace_0

µtrace_02ģ
E__inference_rescaling_layer_call_and_return_conditional_losses_171113¢
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
annotationsŖ *
 zµtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
+__inference_sequential_layer_call_fn_170033resizing_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
üBł
+__inference_sequential_layer_call_fn_170863inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
üBł
+__inference_sequential_layer_call_fn_170868inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
+__inference_sequential_layer_call_fn_170066resizing_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_170878inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_170888inputs"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_170072resizing_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_170078resizing_input"æ
¶²²
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

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
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
ŽBŪ
*__inference_conv2d_94_layer_call_fn_170897inputs"¢
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
annotationsŖ *
 
łBö
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170908inputs"¢
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
annotationsŖ *
 
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
čBå
4__inference_average_pooling2d_9_layer_call_fn_170913inputs"¢
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
annotationsŖ *
 
B
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170918inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_conv2d_95_layer_call_fn_170927inputs"¢
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
annotationsŖ *
 
łBö
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170938inputs"¢
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
annotationsŖ *
 
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
éBę
5__inference_average_pooling2d_10_layer_call_fn_170943inputs"¢
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
annotationsŖ *
 
B
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170948inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_conv2d_96_layer_call_fn_170957inputs"¢
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
annotationsŖ *
 
łBö
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170968inputs"¢
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
annotationsŖ *
 
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
éBę
5__inference_average_pooling2d_11_layer_call_fn_170973inputs"¢
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
annotationsŖ *
 
B
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170978inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_conv2d_97_layer_call_fn_170987inputs"¢
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
annotationsŖ *
 
łBö
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170998inputs"¢
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
annotationsŖ *
 
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
éBę
5__inference_average_pooling2d_12_layer_call_fn_171003inputs"¢
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
annotationsŖ *
 
B
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_171008inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_conv2d_98_layer_call_fn_171017inputs"¢
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
annotationsŖ *
 
łBö
E__inference_conv2d_98_layer_call_and_return_conditional_losses_171028inputs"¢
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
annotationsŖ *
 
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
éBę
5__inference_average_pooling2d_13_layer_call_fn_171033inputs"¢
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
annotationsŖ *
 
B
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_171038inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_flatten_1_layer_call_fn_171043inputs"¢
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
annotationsŖ *
 
łBö
E__inference_flatten_1_layer_call_and_return_conditional_losses_171049inputs"¢
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
annotationsŖ *
 
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
ÜBŁ
(__inference_dense_3_layer_call_fn_171058inputs"¢
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
annotationsŖ *
 
÷Bō
C__inference_dense_3_layer_call_and_return_conditional_losses_171069inputs"¢
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
annotationsŖ *
 
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
ÜBŁ
(__inference_dense_4_layer_call_fn_171078inputs"¢
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
annotationsŖ *
 
÷Bō
C__inference_dense_4_layer_call_and_return_conditional_losses_171089inputs"¢
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
annotationsŖ *
 
R
¶	variables
·	keras_api

øtotal

¹count"
_tf_keras_metric
c
ŗ	variables
»	keras_api

¼total

½count
¾
_fn_kwargs"
_tf_keras_metric
/:-@2Adam/m/conv2d_94/kernel
/:-@2Adam/v/conv2d_94/kernel
!:@2Adam/m/conv2d_94/bias
!:@2Adam/v/conv2d_94/bias
0:.@2Adam/m/conv2d_95/kernel
0:.@2Adam/v/conv2d_95/kernel
": 2Adam/m/conv2d_95/bias
": 2Adam/v/conv2d_95/bias
1:/2Adam/m/conv2d_96/kernel
1:/2Adam/v/conv2d_96/kernel
": 2Adam/m/conv2d_96/bias
": 2Adam/v/conv2d_96/bias
1:/2Adam/m/conv2d_97/kernel
1:/2Adam/v/conv2d_97/kernel
": 2Adam/m/conv2d_97/bias
": 2Adam/v/conv2d_97/bias
1:/2Adam/m/conv2d_98/kernel
1:/2Adam/v/conv2d_98/kernel
": 2Adam/m/conv2d_98/bias
": 2Adam/v/conv2d_98/bias
':%
2Adam/m/dense_3/kernel
':%
2Adam/v/dense_3/kernel
 :2Adam/m/dense_3/bias
 :2Adam/v/dense_3/bias
&:$	2Adam/m/dense_4/kernel
&:$	2Adam/v/dense_4/kernel
:2Adam/m/dense_4/bias
:2Adam/v/dense_4/bias
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
ŻBŚ
)__inference_resizing_layer_call_fn_171094inputs"¢
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
annotationsŖ *
 
ųBõ
D__inference_resizing_layer_call_and_return_conditional_losses_171100inputs"¢
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
annotationsŖ *
 
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
ŽBŪ
*__inference_rescaling_layer_call_fn_171105inputs"¢
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
annotationsŖ *
 
łBö
E__inference_rescaling_layer_call_and_return_conditional_losses_171113inputs"¢
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
annotationsŖ *
 
0
ø0
¹1"
trackable_list_wrapper
.
¶	variables"
_generic_user_object
:  (2total
:  (2count
0
¼0
½1"
trackable_list_wrapper
.
ŗ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperÆ
!__inference__wrapped_model_170004&'56DESTbcwxC¢@
9¢6
41
sequential_input’’’’’’’’’
Ŗ "1Ŗ.
,
dense_4!
dense_4’’’’’’’’’ś
P__inference_average_pooling2d_10_layer_call_and_return_conditional_losses_170948„R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "O¢L
EB
tensor_04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Ō
5__inference_average_pooling2d_10_layer_call_fn_170943R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "DA
unknown4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’ś
P__inference_average_pooling2d_11_layer_call_and_return_conditional_losses_170978„R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "O¢L
EB
tensor_04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Ō
5__inference_average_pooling2d_11_layer_call_fn_170973R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "DA
unknown4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’ś
P__inference_average_pooling2d_12_layer_call_and_return_conditional_losses_171008„R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "O¢L
EB
tensor_04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Ō
5__inference_average_pooling2d_12_layer_call_fn_171003R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "DA
unknown4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’ś
P__inference_average_pooling2d_13_layer_call_and_return_conditional_losses_171038„R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "O¢L
EB
tensor_04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Ō
5__inference_average_pooling2d_13_layer_call_fn_171033R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "DA
unknown4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’ł
O__inference_average_pooling2d_9_layer_call_and_return_conditional_losses_170918„R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "O¢L
EB
tensor_04’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
 Ó
4__inference_average_pooling2d_9_layer_call_fn_170913R¢O
H¢E
C@
inputs4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ŗ "DA
unknown4’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’¾
E__inference_conv2d_94_layer_call_and_return_conditional_losses_170908u&'9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ "4¢1
*'
tensor_0’’’’’’’’’~~@
 
*__inference_conv2d_94_layer_call_fn_170897j&'9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ ")&
unknown’’’’’’’’’~~@½
E__inference_conv2d_95_layer_call_and_return_conditional_losses_170938t567¢4
-¢*
(%
inputs’’’’’’’’’??@
Ŗ "5¢2
+(
tensor_0’’’’’’’’’==
 
*__inference_conv2d_95_layer_call_fn_170927i567¢4
-¢*
(%
inputs’’’’’’’’’??@
Ŗ "*'
unknown’’’’’’’’’==¾
E__inference_conv2d_96_layer_call_and_return_conditional_losses_170968uDE8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "5¢2
+(
tensor_0’’’’’’’’’
 
*__inference_conv2d_96_layer_call_fn_170957jDE8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "*'
unknown’’’’’’’’’¾
E__inference_conv2d_97_layer_call_and_return_conditional_losses_170998uST8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "5¢2
+(
tensor_0’’’’’’’’’
 
*__inference_conv2d_97_layer_call_fn_170987jST8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "*'
unknown’’’’’’’’’¾
E__inference_conv2d_98_layer_call_and_return_conditional_losses_171028ubc8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "5¢2
+(
tensor_0’’’’’’’’’
 
*__inference_conv2d_98_layer_call_fn_171017jbc8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "*'
unknown’’’’’’’’’¬
C__inference_dense_3_layer_call_and_return_conditional_losses_171069ewx0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
(__inference_dense_3_layer_call_fn_171058Zwx0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ ""
unknown’’’’’’’’’¬
C__inference_dense_4_layer_call_and_return_conditional_losses_171089e0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ ",¢)
"
tensor_0’’’’’’’’’
 
(__inference_dense_4_layer_call_fn_171078Z0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "!
unknown’’’’’’’’’²
E__inference_flatten_1_layer_call_and_return_conditional_losses_171049i8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ "-¢*
# 
tensor_0’’’’’’’’’
 
*__inference_flatten_1_layer_call_fn_171043^8¢5
.¢+
)&
inputs’’’’’’’’’
Ŗ ""
unknown’’’’’’’’’¼
E__inference_rescaling_layer_call_and_return_conditional_losses_171113s9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 
*__inference_rescaling_layer_call_fn_171105h9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ "+(
unknown’’’’’’’’’»
D__inference_resizing_layer_call_and_return_conditional_losses_171100s9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 
)__inference_resizing_layer_call_fn_171094h9¢6
/¢,
*'
inputs’’’’’’’’’
Ŗ "+(
unknown’’’’’’’’’Ł
H__inference_sequential_2_layer_call_and_return_conditional_losses_170577&'56DESTbcwxK¢H
A¢>
41
sequential_input’’’’’’’’’
p 

 
Ŗ ",¢)
"
tensor_0’’’’’’’’’
 Ł
H__inference_sequential_2_layer_call_and_return_conditional_losses_170623&'56DESTbcwxK¢H
A¢>
41
sequential_input’’’’’’’’’
p

 
Ŗ ",¢)
"
tensor_0’’’’’’’’’
 Ļ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170792&'56DESTbcwxA¢>
7¢4
*'
inputs’’’’’’’’’
p 

 
Ŗ ",¢)
"
tensor_0’’’’’’’’’
 Ļ
H__inference_sequential_2_layer_call_and_return_conditional_losses_170858&'56DESTbcwxA¢>
7¢4
*'
inputs’’’’’’’’’
p

 
Ŗ ",¢)
"
tensor_0’’’’’’’’’
 ³
-__inference_sequential_2_layer_call_fn_170310&'56DESTbcwxK¢H
A¢>
41
sequential_input’’’’’’’’’
p 

 
Ŗ "!
unknown’’’’’’’’’³
-__inference_sequential_2_layer_call_fn_170531&'56DESTbcwxK¢H
A¢>
41
sequential_input’’’’’’’’’
p

 
Ŗ "!
unknown’’’’’’’’’Ø
-__inference_sequential_2_layer_call_fn_170693w&'56DESTbcwxA¢>
7¢4
*'
inputs’’’’’’’’’
p 

 
Ŗ "!
unknown’’’’’’’’’Ø
-__inference_sequential_2_layer_call_fn_170726w&'56DESTbcwxA¢>
7¢4
*'
inputs’’’’’’’’’
p

 
Ŗ "!
unknown’’’’’’’’’Ī
F__inference_sequential_layer_call_and_return_conditional_losses_170072I¢F
?¢<
2/
resizing_input’’’’’’’’’
p 

 
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 Ī
F__inference_sequential_layer_call_and_return_conditional_losses_170078I¢F
?¢<
2/
resizing_input’’’’’’’’’
p

 
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 Å
F__inference_sequential_layer_call_and_return_conditional_losses_170878{A¢>
7¢4
*'
inputs’’’’’’’’’
p 

 
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 Å
F__inference_sequential_layer_call_and_return_conditional_losses_170888{A¢>
7¢4
*'
inputs’’’’’’’’’
p

 
Ŗ "6¢3
,)
tensor_0’’’’’’’’’
 §
+__inference_sequential_layer_call_fn_170033xI¢F
?¢<
2/
resizing_input’’’’’’’’’
p 

 
Ŗ "+(
unknown’’’’’’’’’§
+__inference_sequential_layer_call_fn_170066xI¢F
?¢<
2/
resizing_input’’’’’’’’’
p

 
Ŗ "+(
unknown’’’’’’’’’
+__inference_sequential_layer_call_fn_170863pA¢>
7¢4
*'
inputs’’’’’’’’’
p 

 
Ŗ "+(
unknown’’’’’’’’’
+__inference_sequential_layer_call_fn_170868pA¢>
7¢4
*'
inputs’’’’’’’’’
p

 
Ŗ "+(
unknown’’’’’’’’’Ę
$__inference_signature_wrapper_170660&'56DESTbcwxW¢T
¢ 
MŖJ
H
sequential_input41
sequential_input’’’’’’’’’"1Ŗ.
,
dense_4!
dense_4’’’’’’’’’