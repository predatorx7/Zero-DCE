§ƒ*
ь“
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
Л
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
3
Square
x"T
y"T"
Ttype:
2
	
Ѕ
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
executor_typestring И®
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.7.02v2.7.0-0-gc256c071bb28≠Њ(
¶
!separable_conv2d/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!separable_conv2d/depthwise_kernel
Я
5separable_conv2d/depthwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/depthwise_kernel*&
_output_shapes
:*
dtype0
¶
!separable_conv2d/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!separable_conv2d/pointwise_kernel
Я
5separable_conv2d/pointwise_kernel/Read/ReadVariableOpReadVariableOp!separable_conv2d/pointwise_kernel*&
_output_shapes
: *
dtype0
В
separable_conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameseparable_conv2d/bias
{
)separable_conv2d/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_1/depthwise_kernel
£
7separable_conv2d_1/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/depthwise_kernel*&
_output_shapes
: *
dtype0
™
#separable_conv2d_1/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *4
shared_name%#separable_conv2d_1/pointwise_kernel
£
7separable_conv2d_1/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_1/pointwise_kernel*&
_output_shapes
:  *
dtype0
Ж
separable_conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_1/bias

+separable_conv2d_1/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_1/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_2/depthwise_kernel
£
7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/depthwise_kernel*&
_output_shapes
: *
dtype0
™
#separable_conv2d_2/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *4
shared_name%#separable_conv2d_2/pointwise_kernel
£
7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_2/pointwise_kernel*&
_output_shapes
:  *
dtype0
Ж
separable_conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_2/bias

+separable_conv2d_2/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_2/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#separable_conv2d_3/depthwise_kernel
£
7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/depthwise_kernel*&
_output_shapes
: *
dtype0
™
#separable_conv2d_3/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *4
shared_name%#separable_conv2d_3/pointwise_kernel
£
7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_3/pointwise_kernel*&
_output_shapes
:  *
dtype0
Ж
separable_conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_3/bias

+separable_conv2d_3/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_3/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_4/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_4/depthwise_kernel
£
7separable_conv2d_4/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/depthwise_kernel*&
_output_shapes
:@*
dtype0
™
#separable_conv2d_4/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *4
shared_name%#separable_conv2d_4/pointwise_kernel
£
7separable_conv2d_4/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_4/pointwise_kernel*&
_output_shapes
:@ *
dtype0
Ж
separable_conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_4/bias

+separable_conv2d_4/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_4/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_5/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_5/depthwise_kernel
£
7separable_conv2d_5/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_5/depthwise_kernel*&
_output_shapes
:@*
dtype0
™
#separable_conv2d_5/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *4
shared_name%#separable_conv2d_5/pointwise_kernel
£
7separable_conv2d_5/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_5/pointwise_kernel*&
_output_shapes
:@ *
dtype0
Ж
separable_conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameseparable_conv2d_5/bias

+separable_conv2d_5/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_5/bias*
_output_shapes
: *
dtype0
™
#separable_conv2d_6/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_6/depthwise_kernel
£
7separable_conv2d_6/depthwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_6/depthwise_kernel*&
_output_shapes
:@*
dtype0
™
#separable_conv2d_6/pointwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#separable_conv2d_6/pointwise_kernel
£
7separable_conv2d_6/pointwise_kernel/Read/ReadVariableOpReadVariableOp#separable_conv2d_6/pointwise_kernel*&
_output_shapes
:@*
dtype0
Ж
separable_conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameseparable_conv2d_6/bias

+separable_conv2d_6/bias/Read/ReadVariableOpReadVariableOpseparable_conv2d_6/bias*
_output_shapes
:*
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
і
(Adam/separable_conv2d/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/depthwise_kernel/m
≠
<Adam/separable_conv2d/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/depthwise_kernel/m*&
_output_shapes
:*
dtype0
і
(Adam/separable_conv2d/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/separable_conv2d/pointwise_kernel/m
≠
<Adam/separable_conv2d/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/pointwise_kernel/m*&
_output_shapes
: *
dtype0
Р
Adam/separable_conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/separable_conv2d/bias/m
Й
0Adam/separable_conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_1/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_1/depthwise_kernel/m
±
>Adam/separable_conv2d_1/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/depthwise_kernel/m*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_1/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_1/pointwise_kernel/m
±
>Adam/separable_conv2d_1/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/pointwise_kernel/m*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_1/bias/m
Н
2Adam/separable_conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_1/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_2/depthwise_kernel/m
±
>Adam/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/depthwise_kernel/m*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_2/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_2/pointwise_kernel/m
±
>Adam/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/pointwise_kernel/m*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_2/bias/m
Н
2Adam/separable_conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_2/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_3/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_3/depthwise_kernel/m
±
>Adam/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/depthwise_kernel/m*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_3/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_3/pointwise_kernel/m
±
>Adam/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/pointwise_kernel/m*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_3/bias/m
Н
2Adam/separable_conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_3/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_4/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_4/depthwise_kernel/m
±
>Adam/separable_conv2d_4/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_4/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/separable_conv2d_4/pointwise_kernel/m
±
>Adam/separable_conv2d_4/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/pointwise_kernel/m*&
_output_shapes
:@ *
dtype0
Ф
Adam/separable_conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_4/bias/m
Н
2Adam/separable_conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_4/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_5/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_5/depthwise_kernel/m
±
>Adam/separable_conv2d_5/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_5/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_5/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/separable_conv2d_5/pointwise_kernel/m
±
>Adam/separable_conv2d_5/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_5/pointwise_kernel/m*&
_output_shapes
:@ *
dtype0
Ф
Adam/separable_conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_5/bias/m
Н
2Adam/separable_conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_5/bias/m*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_6/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_6/depthwise_kernel/m
±
>Adam/separable_conv2d_6/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_6/depthwise_kernel/m*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_6/pointwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_6/pointwise_kernel/m
±
>Adam/separable_conv2d_6/pointwise_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_6/pointwise_kernel/m*&
_output_shapes
:@*
dtype0
Ф
Adam/separable_conv2d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/separable_conv2d_6/bias/m
Н
2Adam/separable_conv2d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_6/bias/m*
_output_shapes
:*
dtype0
і
(Adam/separable_conv2d/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/separable_conv2d/depthwise_kernel/v
≠
<Adam/separable_conv2d/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/depthwise_kernel/v*&
_output_shapes
:*
dtype0
і
(Adam/separable_conv2d/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(Adam/separable_conv2d/pointwise_kernel/v
≠
<Adam/separable_conv2d/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/separable_conv2d/pointwise_kernel/v*&
_output_shapes
: *
dtype0
Р
Adam/separable_conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/separable_conv2d/bias/v
Й
0Adam/separable_conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_1/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_1/depthwise_kernel/v
±
>Adam/separable_conv2d_1/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/depthwise_kernel/v*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_1/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_1/pointwise_kernel/v
±
>Adam/separable_conv2d_1/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_1/pointwise_kernel/v*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_1/bias/v
Н
2Adam/separable_conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_1/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_2/depthwise_kernel/v
±
>Adam/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/depthwise_kernel/v*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_2/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_2/pointwise_kernel/v
±
>Adam/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_2/pointwise_kernel/v*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_2/bias/v
Н
2Adam/separable_conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_2/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_3/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*Adam/separable_conv2d_3/depthwise_kernel/v
±
>Adam/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/depthwise_kernel/v*&
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_3/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *;
shared_name,*Adam/separable_conv2d_3/pointwise_kernel/v
±
>Adam/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_3/pointwise_kernel/v*&
_output_shapes
:  *
dtype0
Ф
Adam/separable_conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_3/bias/v
Н
2Adam/separable_conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_3/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_4/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_4/depthwise_kernel/v
±
>Adam/separable_conv2d_4/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_4/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/separable_conv2d_4/pointwise_kernel/v
±
>Adam/separable_conv2d_4/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_4/pointwise_kernel/v*&
_output_shapes
:@ *
dtype0
Ф
Adam/separable_conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_4/bias/v
Н
2Adam/separable_conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_4/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_5/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_5/depthwise_kernel/v
±
>Adam/separable_conv2d_5/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_5/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_5/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/separable_conv2d_5/pointwise_kernel/v
±
>Adam/separable_conv2d_5/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_5/pointwise_kernel/v*&
_output_shapes
:@ *
dtype0
Ф
Adam/separable_conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/separable_conv2d_5/bias/v
Н
2Adam/separable_conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_5/bias/v*
_output_shapes
: *
dtype0
Є
*Adam/separable_conv2d_6/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_6/depthwise_kernel/v
±
>Adam/separable_conv2d_6/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_6/depthwise_kernel/v*&
_output_shapes
:@*
dtype0
Є
*Adam/separable_conv2d_6/pointwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*Adam/separable_conv2d_6/pointwise_kernel/v
±
>Adam/separable_conv2d_6/pointwise_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/separable_conv2d_6/pointwise_kernel/v*&
_output_shapes
:@*
dtype0
Ф
Adam/separable_conv2d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/separable_conv2d_6/bias/v
Н
2Adam/separable_conv2d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/separable_conv2d_6/bias/v*
_output_shapes
:*
dtype0
К
ConstConst*&
_output_shapes
:*
dtype0*E
value<B:"$              Ањ  А?                
М
Const_1Const*&
_output_shapes
:*
dtype0*E
value<B:"$                  А?  Ањ            
М
Const_2Const*&
_output_shapes
:*
dtype0*E
value<B:"$      Ањ          А?                
М
Const_3Const*&
_output_shapes
:*
dtype0*E
value<B:"$                  А?          Ањ    

NoOpNoOp
≈b
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*юa
valueфaBсa Bкa
З
depth_conv1
depth_conv2
depth_conv3
depth_conv4
depth_conv5
depth_conv6
depth_conv_out
	optimizer
	loss

loss_weights
	variables
trainable_variables
regularization_losses
	keras_api

signatures
И
depthwise_kernel
pointwise_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
И
depthwise_kernel
pointwise_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
И
depthwise_kernel
pointwise_kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
И
%depthwise_kernel
&pointwise_kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
И
,depthwise_kernel
-pointwise_kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
И
3depthwise_kernel
4pointwise_kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
И
:depthwise_kernel
;pointwise_kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
“
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratemnmompmqmrmsmtmu mv%mw&mx'my,mz-m{.m|3m}4m~5m:mА;mБ<mВvГvДvЕvЖvЗvИvЙvК vЛ%vМ&vН'vО,vП-vР.vС3vТ4vУ5vФ:vХ;vЦ<vЧ
 
 
Ю
0
1
2
3
4
5
6
7
 8
%9
&10
'11
,12
-13
.14
315
416
517
:18
;19
<20
Ю
0
1
2
3
4
5
6
7
 8
%9
&10
'11
,12
-13
.14
315
416
517
:18
;19
<20
 
≠
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
 
nl
VARIABLE_VALUE!separable_conv2d/depthwise_kernel7depth_conv1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE!separable_conv2d/pointwise_kernel7depth_conv1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEseparable_conv2d/bias+depth_conv1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

0
1
2
 
≠
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
pn
VARIABLE_VALUE#separable_conv2d_1/depthwise_kernel7depth_conv2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE#separable_conv2d_1/pointwise_kernel7depth_conv2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEseparable_conv2d_1/bias+depth_conv2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
2

0
1
2
 
≠
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
pn
VARIABLE_VALUE#separable_conv2d_2/depthwise_kernel7depth_conv3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE#separable_conv2d_2/pointwise_kernel7depth_conv3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEseparable_conv2d_2/bias+depth_conv3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 2

0
1
 2
 
≠
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
pn
VARIABLE_VALUE#separable_conv2d_3/depthwise_kernel7depth_conv4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE#separable_conv2d_3/pointwise_kernel7depth_conv4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEseparable_conv2d_3/bias+depth_conv4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
'2

%0
&1
'2
 
≠
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
(	variables
)trainable_variables
*regularization_losses
pn
VARIABLE_VALUE#separable_conv2d_4/depthwise_kernel7depth_conv5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE#separable_conv2d_4/pointwise_kernel7depth_conv5/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEseparable_conv2d_4/bias+depth_conv5/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
.2

,0
-1
.2
 
≠
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
/	variables
0trainable_variables
1regularization_losses
pn
VARIABLE_VALUE#separable_conv2d_5/depthwise_kernel7depth_conv6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE#separable_conv2d_5/pointwise_kernel7depth_conv6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEseparable_conv2d_5/bias+depth_conv6/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
52

30
41
52
 
≠
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
6	variables
7trainable_variables
8regularization_losses
sq
VARIABLE_VALUE#separable_conv2d_6/depthwise_kernel:depth_conv_out/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE#separable_conv2d_6/pointwise_kernel:depth_conv_out/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEseparable_conv2d_6/bias.depth_conv_out/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
<2

:0
;1
<2
 
≠
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
=	variables
>trainable_variables
?regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
ТП
VARIABLE_VALUE(Adam/separable_conv2d/depthwise_kernel/mSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE(Adam/separable_conv2d/pointwise_kernel/mSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/separable_conv2d/bias/mGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_1/depthwise_kernel/mSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_1/pointwise_kernel/mSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_1/bias/mGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_2/depthwise_kernel/mSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_2/pointwise_kernel/mSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_2/bias/mGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_3/depthwise_kernel/mSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_3/pointwise_kernel/mSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_3/bias/mGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_4/depthwise_kernel/mSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_4/pointwise_kernel/mSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_4/bias/mGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_5/depthwise_kernel/mSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_5/pointwise_kernel/mSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_5/bias/mGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE*Adam/separable_conv2d_6/depthwise_kernel/mVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE*Adam/separable_conv2d_6/pointwise_kernel/mVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/separable_conv2d_6/bias/mJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE(Adam/separable_conv2d/depthwise_kernel/vSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE(Adam/separable_conv2d/pointwise_kernel/vSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/separable_conv2d/bias/vGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_1/depthwise_kernel/vSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_1/pointwise_kernel/vSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_1/bias/vGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_2/depthwise_kernel/vSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_2/pointwise_kernel/vSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_2/bias/vGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_3/depthwise_kernel/vSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_3/pointwise_kernel/vSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_3/bias/vGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_4/depthwise_kernel/vSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_4/pointwise_kernel/vSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_4/bias/vGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_5/depthwise_kernel/vSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE*Adam/separable_conv2d_5/pointwise_kernel/vSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/separable_conv2d_5/bias/vGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE*Adam/separable_conv2d_6/depthwise_kernel/vVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE*Adam/separable_conv2d_6/pointwise_kernel/vVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/separable_conv2d_6/bias/vJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
О
serving_default_input_1Placeholder*1
_output_shapes
:€€€€€€€€€»ђ*
dtype0*&
shape:€€€€€€€€€»ђ
µ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelseparable_conv2d/bias#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelseparable_conv2d_1/bias#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/bias#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/bias#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelseparable_conv2d_4/bias#separable_conv2d_5/depthwise_kernel#separable_conv2d_5/pointwise_kernelseparable_conv2d_5/bias#separable_conv2d_6/depthwise_kernel#separable_conv2d_6/pointwise_kernelseparable_conv2d_6/bias*!
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€»ђ:€€€€€€€€€»ђ*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_46351
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ђ 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5separable_conv2d/depthwise_kernel/Read/ReadVariableOp5separable_conv2d/pointwise_kernel/Read/ReadVariableOp)separable_conv2d/bias/Read/ReadVariableOp7separable_conv2d_1/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_1/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_1/bias/Read/ReadVariableOp7separable_conv2d_2/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_2/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_2/bias/Read/ReadVariableOp7separable_conv2d_3/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_3/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_3/bias/Read/ReadVariableOp7separable_conv2d_4/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_4/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_4/bias/Read/ReadVariableOp7separable_conv2d_5/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_5/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_5/bias/Read/ReadVariableOp7separable_conv2d_6/depthwise_kernel/Read/ReadVariableOp7separable_conv2d_6/pointwise_kernel/Read/ReadVariableOp+separable_conv2d_6/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp<Adam/separable_conv2d/depthwise_kernel/m/Read/ReadVariableOp<Adam/separable_conv2d/pointwise_kernel/m/Read/ReadVariableOp0Adam/separable_conv2d/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_1/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_1/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_1/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_2/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_2/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_2/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_3/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_3/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_3/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_4/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_4/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_4/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_5/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_5/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_5/bias/m/Read/ReadVariableOp>Adam/separable_conv2d_6/depthwise_kernel/m/Read/ReadVariableOp>Adam/separable_conv2d_6/pointwise_kernel/m/Read/ReadVariableOp2Adam/separable_conv2d_6/bias/m/Read/ReadVariableOp<Adam/separable_conv2d/depthwise_kernel/v/Read/ReadVariableOp<Adam/separable_conv2d/pointwise_kernel/v/Read/ReadVariableOp0Adam/separable_conv2d/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_1/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_1/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_1/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_2/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_2/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_2/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_3/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_3/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_3/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_4/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_4/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_4/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_5/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_5/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_5/bias/v/Read/ReadVariableOp>Adam/separable_conv2d_6/depthwise_kernel/v/Read/ReadVariableOp>Adam/separable_conv2d_6/pointwise_kernel/v/Read/ReadVariableOp2Adam/separable_conv2d_6/bias/v/Read/ReadVariableOpConst_4*Q
TinJ
H2F	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_47397
‘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!separable_conv2d/depthwise_kernel!separable_conv2d/pointwise_kernelseparable_conv2d/bias#separable_conv2d_1/depthwise_kernel#separable_conv2d_1/pointwise_kernelseparable_conv2d_1/bias#separable_conv2d_2/depthwise_kernel#separable_conv2d_2/pointwise_kernelseparable_conv2d_2/bias#separable_conv2d_3/depthwise_kernel#separable_conv2d_3/pointwise_kernelseparable_conv2d_3/bias#separable_conv2d_4/depthwise_kernel#separable_conv2d_4/pointwise_kernelseparable_conv2d_4/bias#separable_conv2d_5/depthwise_kernel#separable_conv2d_5/pointwise_kernelseparable_conv2d_5/bias#separable_conv2d_6/depthwise_kernel#separable_conv2d_6/pointwise_kernelseparable_conv2d_6/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate(Adam/separable_conv2d/depthwise_kernel/m(Adam/separable_conv2d/pointwise_kernel/mAdam/separable_conv2d/bias/m*Adam/separable_conv2d_1/depthwise_kernel/m*Adam/separable_conv2d_1/pointwise_kernel/mAdam/separable_conv2d_1/bias/m*Adam/separable_conv2d_2/depthwise_kernel/m*Adam/separable_conv2d_2/pointwise_kernel/mAdam/separable_conv2d_2/bias/m*Adam/separable_conv2d_3/depthwise_kernel/m*Adam/separable_conv2d_3/pointwise_kernel/mAdam/separable_conv2d_3/bias/m*Adam/separable_conv2d_4/depthwise_kernel/m*Adam/separable_conv2d_4/pointwise_kernel/mAdam/separable_conv2d_4/bias/m*Adam/separable_conv2d_5/depthwise_kernel/m*Adam/separable_conv2d_5/pointwise_kernel/mAdam/separable_conv2d_5/bias/m*Adam/separable_conv2d_6/depthwise_kernel/m*Adam/separable_conv2d_6/pointwise_kernel/mAdam/separable_conv2d_6/bias/m(Adam/separable_conv2d/depthwise_kernel/v(Adam/separable_conv2d/pointwise_kernel/vAdam/separable_conv2d/bias/v*Adam/separable_conv2d_1/depthwise_kernel/v*Adam/separable_conv2d_1/pointwise_kernel/vAdam/separable_conv2d_1/bias/v*Adam/separable_conv2d_2/depthwise_kernel/v*Adam/separable_conv2d_2/pointwise_kernel/vAdam/separable_conv2d_2/bias/v*Adam/separable_conv2d_3/depthwise_kernel/v*Adam/separable_conv2d_3/pointwise_kernel/vAdam/separable_conv2d_3/bias/v*Adam/separable_conv2d_4/depthwise_kernel/v*Adam/separable_conv2d_4/pointwise_kernel/vAdam/separable_conv2d_4/bias/v*Adam/separable_conv2d_5/depthwise_kernel/v*Adam/separable_conv2d_5/pointwise_kernel/vAdam/separable_conv2d_5/bias/v*Adam/separable_conv2d_6/depthwise_kernel/v*Adam/separable_conv2d_6/pointwise_kernel/vAdam/separable_conv2d_6/bias/v*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_47611Ал%
Ђ
Д
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45725

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї
ћ
2__inference_separable_conv2d_5_layer_call_fn_46819

inputs!
unknown:@#
	unknown_0:@ 
	unknown_1: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45962y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
±
Д
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45987

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђZ
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
IdentityIdentityTanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ•
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46635

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
ь
ћ
2__inference_separable_conv2d_4_layer_call_fn_46754

inputs!
unknown:@#
	unknown_0:@ 
	unknown_1: 
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45754Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ўX
с	
"__inference_internal_grad_fn_47310
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
result_grads_28
result_grads_29
result_grads_30
result_grads_31
result_grads_32
result_grads_33
result_grads_34
result_grads_35
result_grads_36
result_grads_37
result_grads_38
result_grads_39
result_grads_40
result_grads_41
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27
identity_28
identity_29
identity_30
identity_31
identity_32
identity_33
identity_34
identity_35
identity_36
identity_37
identity_38
identity_39
identity_40
identity_41U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:W

Identity_1Identityresult_grads_1*
T0*&
_output_shapes
: K

Identity_2Identityresult_grads_2*
T0*
_output_shapes
: W

Identity_3Identityresult_grads_3*
T0*&
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
:  K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
: W

Identity_6Identityresult_grads_6*
T0*&
_output_shapes
: W

Identity_7Identityresult_grads_7*
T0*&
_output_shapes
:  K

Identity_8Identityresult_grads_8*
T0*
_output_shapes
: W

Identity_9Identityresult_grads_9*
T0*&
_output_shapes
: Y
Identity_10Identityresult_grads_10*
T0*&
_output_shapes
:  M
Identity_11Identityresult_grads_11*
T0*
_output_shapes
: Y
Identity_12Identityresult_grads_12*
T0*&
_output_shapes
:@Y
Identity_13Identityresult_grads_13*
T0*&
_output_shapes
:@ M
Identity_14Identityresult_grads_14*
T0*
_output_shapes
: Y
Identity_15Identityresult_grads_15*
T0*&
_output_shapes
:@Y
Identity_16Identityresult_grads_16*
T0*&
_output_shapes
:@ M
Identity_17Identityresult_grads_17*
T0*
_output_shapes
: Y
Identity_18Identityresult_grads_18*
T0*&
_output_shapes
:@Y
Identity_19Identityresult_grads_19*
T0*&
_output_shapes
:@M
Identity_20Identityresult_grads_20*
T0*
_output_shapes
:У
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19result_grads_20result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19result_grads_20*3
T.
,2**+
_gradient_op_typeCustomGradient-47225*в
_output_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:\
Identity_21IdentityIdentityN:output:0*
T0*&
_output_shapes
:\
Identity_22IdentityIdentityN:output:1*
T0*&
_output_shapes
: P
Identity_23IdentityIdentityN:output:2*
T0*
_output_shapes
: \
Identity_24IdentityIdentityN:output:3*
T0*&
_output_shapes
: \
Identity_25IdentityIdentityN:output:4*
T0*&
_output_shapes
:  P
Identity_26IdentityIdentityN:output:5*
T0*
_output_shapes
: \
Identity_27IdentityIdentityN:output:6*
T0*&
_output_shapes
: \
Identity_28IdentityIdentityN:output:7*
T0*&
_output_shapes
:  P
Identity_29IdentityIdentityN:output:8*
T0*
_output_shapes
: \
Identity_30IdentityIdentityN:output:9*
T0*&
_output_shapes
: ]
Identity_31IdentityIdentityN:output:10*
T0*&
_output_shapes
:  Q
Identity_32IdentityIdentityN:output:11*
T0*
_output_shapes
: ]
Identity_33IdentityIdentityN:output:12*
T0*&
_output_shapes
:@]
Identity_34IdentityIdentityN:output:13*
T0*&
_output_shapes
:@ Q
Identity_35IdentityIdentityN:output:14*
T0*
_output_shapes
: ]
Identity_36IdentityIdentityN:output:15*
T0*&
_output_shapes
:@]
Identity_37IdentityIdentityN:output:16*
T0*&
_output_shapes
:@ Q
Identity_38IdentityIdentityN:output:17*
T0*
_output_shapes
: ]
Identity_39IdentityIdentityN:output:18*
T0*&
_output_shapes
:@]
Identity_40IdentityIdentityN:output:19*
T0*&
_output_shapes
:@Q
Identity_41IdentityIdentityN:output:20*
T0*
_output_shapes
:"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0"#
identity_28Identity_28:output:0"#
identity_29Identity_29:output:0"#
identity_30Identity_30:output:0"#
identity_31Identity_31:output:0"#
identity_32Identity_32:output:0"#
identity_33Identity_33:output:0"#
identity_34Identity_34:output:0"#
identity_35Identity_35:output:0"#
identity_36Identity_36:output:0"#
identity_37Identity_37:output:0"#
identity_38Identity_38:output:0"#
identity_39Identity_39:output:0"#
identity_40Identity_40:output:0"#
identity_41Identity_41:output:0*б
_input_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_1:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_2:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_4:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_5:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_6:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_7:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_8:V	R
&
_output_shapes
: 
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:  
)
_user_specified_nameresult_grads_10:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_12:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_13:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_14:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_15:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_16:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_17:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_18:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_19:KG

_output_shapes
:
)
_user_specified_nameresult_grads_20:WS
&
_output_shapes
:
)
_user_specified_nameresult_grads_21:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_22:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_23:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_24:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_25:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_26:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_27:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_28:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_29:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_30:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_31:K G

_output_shapes
: 
)
_user_specified_nameresult_grads_32:W!S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_33:W"S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_34:K#G

_output_shapes
: 
)
_user_specified_nameresult_grads_35:W$S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_36:W%S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_37:K&G

_output_shapes
: 
)
_user_specified_nameresult_grads_38:W'S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_39:W(S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_40:K)G

_output_shapes
:
)
_user_specified_nameresult_grads_41
ƒ
™
#__inference_signature_wrapper_46351
input_1!
unknown:#
	unknown_0: 
	unknown_1: #
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: #
	unknown_6:  
	unknown_7: #
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:@$

unknown_12:@ 

unknown_13: $

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17:@$

unknown_18:@

unknown_19:
identity

identity_1ИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€»ђ:€€€€€€€€€»ђ*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_45618y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€»ђ
!
_user_specified_name	input_1
ь
ћ
2__inference_separable_conv2d_5_layer_call_fn_46808

inputs!
unknown:@#
	unknown_0:@ 
	unknown_1: 
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45783Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
є
В
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46581

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
Й≠
Ђ
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46527

inputsS
9separable_conv2d_separable_conv2d_readvariableop_resource:U
;separable_conv2d_separable_conv2d_readvariableop_1_resource: >
0separable_conv2d_biasadd_readvariableop_resource: U
;separable_conv2d_1_separable_conv2d_readvariableop_resource: W
=separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  @
2separable_conv2d_1_biasadd_readvariableop_resource: U
;separable_conv2d_2_separable_conv2d_readvariableop_resource: W
=separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  @
2separable_conv2d_2_biasadd_readvariableop_resource: U
;separable_conv2d_3_separable_conv2d_readvariableop_resource: W
=separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  @
2separable_conv2d_3_biasadd_readvariableop_resource: U
;separable_conv2d_4_separable_conv2d_readvariableop_resource:@W
=separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ @
2separable_conv2d_4_biasadd_readvariableop_resource: U
;separable_conv2d_5_separable_conv2d_readvariableop_resource:@W
=separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ @
2separable_conv2d_5_biasadd_readvariableop_resource: U
;separable_conv2d_6_separable_conv2d_readvariableop_resource:@W
=separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@@
2separable_conv2d_6_biasadd_readvariableop_resource:
identity

identity_1ИҐ'separable_conv2d/BiasAdd/ReadVariableOpҐ0separable_conv2d/separable_conv2d/ReadVariableOpҐ2separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_1/BiasAdd/ReadVariableOpҐ2separable_conv2d_1/separable_conv2d/ReadVariableOpҐ4separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_2/BiasAdd/ReadVariableOpҐ2separable_conv2d_2/separable_conv2d/ReadVariableOpҐ4separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_3/BiasAdd/ReadVariableOpҐ2separable_conv2d_3/separable_conv2d/ReadVariableOpҐ4separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_4/BiasAdd/ReadVariableOpҐ2separable_conv2d_4/separable_conv2d/ReadVariableOpҐ4separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_5/BiasAdd/ReadVariableOpҐ2separable_conv2d_5/separable_conv2d/ReadVariableOpҐ4separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ)separable_conv2d_6/BiasAdd/ReadVariableOpҐ2separable_conv2d_6/separable_conv2d/ReadVariableOpҐ4separable_conv2d_6/separable_conv2d/ReadVariableOp_1≤
0separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOp9separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ґ
2separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOp;separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0А
'separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            А
/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      к
+separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs8separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingSAME*
strides
В
!separable_conv2d/separable_conv2dConv2D4separable_conv2d/separable_conv2d/depthwise:output:0:separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ф
'separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp0separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Љ
separable_conv2d/BiasAddBiasAdd*separable_conv2d/separable_conv2d:output:0/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ |
separable_conv2d/ReluRelu!separable_conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ґ
2separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ї
4separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0В
)separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             В
1separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Л
-separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative#separable_conv2d/Relu:activations:0:separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
И
#separable_conv2d_1/separable_conv2dConv2D6separable_conv2d_1/separable_conv2d/depthwise:output:0<separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ш
)separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
separable_conv2d_1/BiasAddBiasAdd,separable_conv2d_1/separable_conv2d:output:01separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ А
separable_conv2d_1/ReluRelu#separable_conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ґ
2separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ї
4separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0В
)separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             В
1separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Н
-separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative%separable_conv2d_1/Relu:activations:0:separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
И
#separable_conv2d_2/separable_conv2dConv2D6separable_conv2d_2/separable_conv2d/depthwise:output:0<separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ш
)separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
separable_conv2d_2/BiasAddBiasAdd,separable_conv2d_2/separable_conv2d:output:01separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ А
separable_conv2d_2/ReluRelu#separable_conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ґ
2separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ї
4separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0В
)separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             В
1separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Н
-separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative%separable_conv2d_2/Relu:activations:0:separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
И
#separable_conv2d_3/separable_conv2dConv2D6separable_conv2d_3/separable_conv2d/depthwise:output:0<separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ш
)separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
separable_conv2d_3/BiasAddBiasAdd,separable_conv2d_3/separable_conv2d:output:01separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ А
separable_conv2d_3/ReluRelu#separable_conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ї
concatConcatV2%separable_conv2d_2/Relu:activations:0%separable_conv2d_3/Relu:activations:0concat/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@ґ
2separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ї
4separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0В
)separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      В
1separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ч
-separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeconcat:output:0:separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
И
#separable_conv2d_4/separable_conv2dConv2D6separable_conv2d_4/separable_conv2d/depthwise:output:0<separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ш
)separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
separable_conv2d_4/BiasAddBiasAdd,separable_conv2d_4/separable_conv2d:output:01separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ А
separable_conv2d_4/ReluRelu#separable_conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€њ
concat_1ConcatV2%separable_conv2d_1/Relu:activations:0%separable_conv2d_4/Relu:activations:0concat_1/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@ґ
2separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ї
4separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0В
)separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      В
1separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      щ
-separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeconcat_1:output:0:separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
И
#separable_conv2d_5/separable_conv2dConv2D6separable_conv2d_5/separable_conv2d/depthwise:output:0<separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
Ш
)separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
separable_conv2d_5/BiasAddBiasAdd,separable_conv2d_5/separable_conv2d:output:01separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ А
separable_conv2d_5/ReluRelu#separable_conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ X
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€љ
concat_2ConcatV2#separable_conv2d/Relu:activations:0%separable_conv2d_5/Relu:activations:0concat_2/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@ґ
2separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOp;separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ї
4separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOp=separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0В
)separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      В
1separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      щ
-separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeconcat_2:output:0:separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
И
#separable_conv2d_6/separable_conv2dConv2D6separable_conv2d_6/separable_conv2d/depthwise:output:0<separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingVALID*
strides
Ш
)separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp2separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
separable_conv2d_6/BiasAddBiasAdd,separable_conv2d_6/separable_conv2d:output:01separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђА
separable_conv2d_6/TanhTanh#separable_conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђT
SquareSquareinputs*
T0*1
_output_shapes
:€€€€€€€€€»ђZ
subSub
Square:y:0inputs*
T0*1
_output_shapes
:€€€€€€€€€»ђl
mulMulseparable_conv2d_6/Tanh:y:0sub:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
addAddV2inputsmul:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_1Mulseparable_conv2d_6/Tanh:y:0	sub_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_2Mulseparable_conv2d_6/Tanh:y:0	sub_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_3Mulseparable_conv2d_6/Tanh:y:0	sub_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_4Mulseparable_conv2d_6/Tanh:y:0	sub_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_5Mulseparable_conv2d_6/Tanh:y:0	sub_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_6Mulseparable_conv2d_6/Tanh:y:0	sub_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђp
mul_7Mulseparable_conv2d_6/Tanh:y:0	sub_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђv

Identity_1Identityseparable_conv2d_6/Tanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђи
NoOpNoOp(^separable_conv2d/BiasAdd/ReadVariableOp1^separable_conv2d/separable_conv2d/ReadVariableOp3^separable_conv2d/separable_conv2d/ReadVariableOp_1*^separable_conv2d_1/BiasAdd/ReadVariableOp3^separable_conv2d_1/separable_conv2d/ReadVariableOp5^separable_conv2d_1/separable_conv2d/ReadVariableOp_1*^separable_conv2d_2/BiasAdd/ReadVariableOp3^separable_conv2d_2/separable_conv2d/ReadVariableOp5^separable_conv2d_2/separable_conv2d/ReadVariableOp_1*^separable_conv2d_3/BiasAdd/ReadVariableOp3^separable_conv2d_3/separable_conv2d/ReadVariableOp5^separable_conv2d_3/separable_conv2d/ReadVariableOp_1*^separable_conv2d_4/BiasAdd/ReadVariableOp3^separable_conv2d_4/separable_conv2d/ReadVariableOp5^separable_conv2d_4/separable_conv2d/ReadVariableOp_1*^separable_conv2d_5/BiasAdd/ReadVariableOp3^separable_conv2d_5/separable_conv2d/ReadVariableOp5^separable_conv2d_5/separable_conv2d/ReadVariableOp_1*^separable_conv2d_6/BiasAdd/ReadVariableOp3^separable_conv2d_6/separable_conv2d/ReadVariableOp5^separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 2R
'separable_conv2d/BiasAdd/ReadVariableOp'separable_conv2d/BiasAdd/ReadVariableOp2d
0separable_conv2d/separable_conv2d/ReadVariableOp0separable_conv2d/separable_conv2d/ReadVariableOp2h
2separable_conv2d/separable_conv2d/ReadVariableOp_12separable_conv2d/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_1/BiasAdd/ReadVariableOp)separable_conv2d_1/BiasAdd/ReadVariableOp2h
2separable_conv2d_1/separable_conv2d/ReadVariableOp2separable_conv2d_1/separable_conv2d/ReadVariableOp2l
4separable_conv2d_1/separable_conv2d/ReadVariableOp_14separable_conv2d_1/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_2/BiasAdd/ReadVariableOp)separable_conv2d_2/BiasAdd/ReadVariableOp2h
2separable_conv2d_2/separable_conv2d/ReadVariableOp2separable_conv2d_2/separable_conv2d/ReadVariableOp2l
4separable_conv2d_2/separable_conv2d/ReadVariableOp_14separable_conv2d_2/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_3/BiasAdd/ReadVariableOp)separable_conv2d_3/BiasAdd/ReadVariableOp2h
2separable_conv2d_3/separable_conv2d/ReadVariableOp2separable_conv2d_3/separable_conv2d/ReadVariableOp2l
4separable_conv2d_3/separable_conv2d/ReadVariableOp_14separable_conv2d_3/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_4/BiasAdd/ReadVariableOp)separable_conv2d_4/BiasAdd/ReadVariableOp2h
2separable_conv2d_4/separable_conv2d/ReadVariableOp2separable_conv2d_4/separable_conv2d/ReadVariableOp2l
4separable_conv2d_4/separable_conv2d/ReadVariableOp_14separable_conv2d_4/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_5/BiasAdd/ReadVariableOp)separable_conv2d_5/BiasAdd/ReadVariableOp2h
2separable_conv2d_5/separable_conv2d/ReadVariableOp2separable_conv2d_5/separable_conv2d/ReadVariableOp2l
4separable_conv2d_5/separable_conv2d/ReadVariableOp_14separable_conv2d_5/separable_conv2d/ReadVariableOp_12V
)separable_conv2d_6/BiasAdd/ReadVariableOp)separable_conv2d_6/BiasAdd/ReadVariableOp2h
2separable_conv2d_6/separable_conv2d/ReadVariableOp2separable_conv2d_6/separable_conv2d/ReadVariableOp2l
4separable_conv2d_6/separable_conv2d/ReadVariableOp_14separable_conv2d_6/separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
є
В
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45843

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
ўа
±
__inference_test_step_9780

inputs[
Adce_net_separable_conv2d_separable_conv2d_readvariableop_resource:]
Cdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource: F
8dce_net_separable_conv2d_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_1_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_2_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_3_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_4_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_5_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@H
:dce_net_separable_conv2d_6_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter
identity

identity_1

identity_2

identity_3

identity_4ИҐ/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpҐ8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpҐ:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1¬
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOpAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0∆
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0И
/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            И
7DCE-Net/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      с
3DCE-Net/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
С
)DCE-Net/separable_conv2d/separable_conv2dConv2D<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
§
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp8dce_net_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
 DCE-Net/separable_conv2d/BiasAddBiasAdd2DCE-Net/separable_conv2d/separable_conv2d:output:07DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ Г
DCE-Net/separable_conv2d/ReluRelu)DCE-Net/separable_conv2d/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ъ
5DCE-Net/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative+DCE-Net/separable_conv2d/Relu:activations:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_1/separable_conv2dConv2D>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_1/BiasAddBiasAdd4DCE-Net/separable_conv2d_1/separable_conv2d:output:09DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_1/ReluRelu+DCE-Net/separable_conv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_1/Relu:activations:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_2/separable_conv2dConv2D>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_2/BiasAddBiasAdd4DCE-Net/separable_conv2d_2/separable_conv2d:output:09DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_2/ReluRelu+DCE-Net/separable_conv2d_2/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_2/Relu:activations:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_3/separable_conv2dConv2D>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_3/BiasAddBiasAdd4DCE-Net/separable_conv2d_3/separable_conv2d:output:09DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_3/ReluRelu+DCE-Net/separable_conv2d_3/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ^
DCE-Net/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€“
DCE-Net/concatConcatV2-DCE-Net/separable_conv2d_2/Relu:activations:0-DCE-Net/separable_conv2d_3/Relu:activations:0DCE-Net/concat/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ж
5DCE-Net/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_4/separable_conv2dConv2D>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_4/BiasAddBiasAdd4DCE-Net/separable_conv2d_4/separable_conv2d:output:09DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_4/ReluRelu+DCE-Net/separable_conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
DCE-Net/concat_1ConcatV2-DCE-Net/separable_conv2d_1/Relu:activations:0-DCE-Net/separable_conv2d_4/Relu:activations:0DCE-Net/concat_1/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_1:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_5/separable_conv2dConv2D>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_5/BiasAddBiasAdd4DCE-Net/separable_conv2d_5/separable_conv2d:output:09DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_5/ReluRelu+DCE-Net/separable_conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€‘
DCE-Net/concat_2ConcatV2+DCE-Net/separable_conv2d/Relu:activations:0-DCE-Net/separable_conv2d_5/Relu:activations:0DCE-Net/concat_2/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0К
1DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_2:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_6/separable_conv2dConv2D>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0—
"DCE-Net/separable_conv2d_6/BiasAddBiasAdd4DCE-Net/separable_conv2d_6/separable_conv2d:output:09DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђЗ
DCE-Net/separable_conv2d_6/TanhTanh+DCE-Net/separable_conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:»ђS
DCE-Net/SquareSquareinputs*
T0*(
_output_shapes
:»ђa
DCE-Net/subSubDCE-Net/Square:y:0inputs*
T0*(
_output_shapes
:»ђ{
DCE-Net/mulMul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/addAddV2inputsDCE-Net/mul:z:0*
T0*(
_output_shapes
:»ђ^
DCE-Net/Square_1SquareDCE-Net/add:z:0*
T0*(
_output_shapes
:»ђn
DCE-Net/sub_1SubDCE-Net/Square_1:y:0DCE-Net/add:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_1Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђm
DCE-Net/add_1AddV2DCE-Net/add:z:0DCE-Net/mul_1:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_2SquareDCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_2SubDCE-Net/Square_2:y:0DCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_2Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_2AddV2DCE-Net/add_1:z:0DCE-Net/mul_2:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_3SquareDCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_3SubDCE-Net/Square_3:y:0DCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_3Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_3AddV2DCE-Net/add_2:z:0DCE-Net/mul_3:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_4SquareDCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_4SubDCE-Net/Square_4:y:0DCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_4Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_4AddV2DCE-Net/add_3:z:0DCE-Net/mul_4:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_5SquareDCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_5SubDCE-Net/Square_5:y:0DCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_5Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_5AddV2DCE-Net/add_4:z:0DCE-Net/mul_5:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_6SquareDCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_6SubDCE-Net/Square_6:y:0DCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_6Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_6AddV2DCE-Net/add_5:z:0DCE-Net/mul_6:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_7SquareDCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_7SubDCE-Net/Square_7:y:0DCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_7Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_7AddV2DCE-Net/add_6:z:0DCE-Net/mul_7:z:0*
T0*(
_output_shapes
:»ђx
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€І
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ґ
SpatialConsistencyLoss/Mean_1MeanDCE-Net/add_7:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Њ
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
¬
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
—
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
§
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*&
_output_shapes
:2Kx
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*&
_output_shapes
:2KЬ
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*&
_output_shapes
:2KЫ
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*&
_output_shapes
:2KЭ
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*&
_output_shapes
:2Ku
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             П
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: ≥
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :™
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :€
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: Љ
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: »
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Д
MeanMeanDCE-Net/add_7:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Р
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћ?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
:J
SquareSquaresub:z:0*
T0*&
_output_shapes
:^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ж
Mean_2MeanDCE-Net/add_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Я
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:A
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: S
Mean_3MeanSqueeze:output:0Const_1:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  †@P
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_7StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: n
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*%
valueB"                [
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ƒ
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:p
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_8StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:«ђP
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:«ђ`
Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_2:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_9StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: o
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*%
valueB"                \
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : »
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:q
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            О
strided_slice_10StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:»ЂP
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:»Ђ`
Const_3Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_3:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  HDN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: Р

NoOpNoOp0^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp9^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:»ђ: : : : : : : : : : : : : : : : : : : : : ::::2b
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp2t
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp2x
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:P L
(
_output_shapes
:»ђ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
ћв
≤
__inference_test_step_10083

inputs[
Adce_net_separable_conv2d_separable_conv2d_readvariableop_resource:]
Cdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource: F
8dce_net_separable_conv2d_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_1_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_2_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_3_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_4_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_5_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@H
:dce_net_separable_conv2d_6_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter
identity

identity_1

identity_2

identity_3

identity_4ИҐ/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpҐ8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpҐ:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1¬
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOpAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0∆
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0И
/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            И
7DCE-Net/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      с
3DCE-Net/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
С
)DCE-Net/separable_conv2d/separable_conv2dConv2D<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
§
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp8dce_net_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
 DCE-Net/separable_conv2d/BiasAddBiasAdd2DCE-Net/separable_conv2d/separable_conv2d:output:07DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ Г
DCE-Net/separable_conv2d/ReluRelu)DCE-Net/separable_conv2d/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ъ
5DCE-Net/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative+DCE-Net/separable_conv2d/Relu:activations:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_1/separable_conv2dConv2D>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_1/BiasAddBiasAdd4DCE-Net/separable_conv2d_1/separable_conv2d:output:09DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_1/ReluRelu+DCE-Net/separable_conv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_1/Relu:activations:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_2/separable_conv2dConv2D>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_2/BiasAddBiasAdd4DCE-Net/separable_conv2d_2/separable_conv2d:output:09DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_2/ReluRelu+DCE-Net/separable_conv2d_2/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_2/Relu:activations:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_3/separable_conv2dConv2D>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_3/BiasAddBiasAdd4DCE-Net/separable_conv2d_3/separable_conv2d:output:09DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_3/ReluRelu+DCE-Net/separable_conv2d_3/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ^
DCE-Net/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€“
DCE-Net/concatConcatV2-DCE-Net/separable_conv2d_2/Relu:activations:0-DCE-Net/separable_conv2d_3/Relu:activations:0DCE-Net/concat/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ж
5DCE-Net/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_4/separable_conv2dConv2D>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_4/BiasAddBiasAdd4DCE-Net/separable_conv2d_4/separable_conv2d:output:09DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_4/ReluRelu+DCE-Net/separable_conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
DCE-Net/concat_1ConcatV2-DCE-Net/separable_conv2d_1/Relu:activations:0-DCE-Net/separable_conv2d_4/Relu:activations:0DCE-Net/concat_1/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_1:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_5/separable_conv2dConv2D>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_5/BiasAddBiasAdd4DCE-Net/separable_conv2d_5/separable_conv2d:output:09DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_5/ReluRelu+DCE-Net/separable_conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€‘
DCE-Net/concat_2ConcatV2+DCE-Net/separable_conv2d/Relu:activations:0-DCE-Net/separable_conv2d_5/Relu:activations:0DCE-Net/concat_2/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0К
1DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_2:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_6/separable_conv2dConv2D>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0—
"DCE-Net/separable_conv2d_6/BiasAddBiasAdd4DCE-Net/separable_conv2d_6/separable_conv2d:output:09DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђЗ
DCE-Net/separable_conv2d_6/TanhTanh+DCE-Net/separable_conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:»ђS
DCE-Net/SquareSquareinputs*
T0*(
_output_shapes
:»ђa
DCE-Net/subSubDCE-Net/Square:y:0inputs*
T0*(
_output_shapes
:»ђ{
DCE-Net/mulMul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/addAddV2inputsDCE-Net/mul:z:0*
T0*(
_output_shapes
:»ђ^
DCE-Net/Square_1SquareDCE-Net/add:z:0*
T0*(
_output_shapes
:»ђn
DCE-Net/sub_1SubDCE-Net/Square_1:y:0DCE-Net/add:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_1Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђm
DCE-Net/add_1AddV2DCE-Net/add:z:0DCE-Net/mul_1:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_2SquareDCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_2SubDCE-Net/Square_2:y:0DCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_2Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_2AddV2DCE-Net/add_1:z:0DCE-Net/mul_2:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_3SquareDCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_3SubDCE-Net/Square_3:y:0DCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_3Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_3AddV2DCE-Net/add_2:z:0DCE-Net/mul_3:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_4SquareDCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_4SubDCE-Net/Square_4:y:0DCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_4Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_4AddV2DCE-Net/add_3:z:0DCE-Net/mul_4:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_5SquareDCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_5SubDCE-Net/Square_5:y:0DCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_5Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_5AddV2DCE-Net/add_4:z:0DCE-Net/mul_5:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_6SquareDCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_6SubDCE-Net/Square_6:y:0DCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_6Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_6AddV2DCE-Net/add_5:z:0DCE-Net/mul_6:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_7SquareDCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_7SubDCE-Net/Square_7:y:0DCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_7Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_7AddV2DCE-Net/add_6:z:0DCE-Net/mul_7:z:0*
T0*(
_output_shapes
:»ђx
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€І
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ґ
SpatialConsistencyLoss/Mean_1MeanDCE-Net/add_7:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Њ
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
¬
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
—
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
§
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*&
_output_shapes
:2Kx
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*&
_output_shapes
:2KЬ
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*&
_output_shapes
:2KЫ
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*&
_output_shapes
:2KЭ
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*&
_output_shapes
:2Ku
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             П
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: ≥
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :™
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :€
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: Љ
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: »
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Д
MeanMeanDCE-Net/add_7:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Р
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћ?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
:J
SquareSquaresub:z:0*
T0*&
_output_shapes
:^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ж
Mean_2MeanDCE-Net/add_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Я
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:=
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: Q
Mean_3MeanSqueeze:output:0range:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  †@P
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_7StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: n
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*%
valueB"                [
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ƒ
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:p
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_8StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:«ђP
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:«ђ`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_1:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_9StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: o
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*%
valueB"                \
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : »
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:q
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            О
strided_slice_10StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:»ЂP
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:»Ђ`
Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_2:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  HDN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: Р

NoOpNoOp0^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp9^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Ы
_input_shapesЙ
Ж:»ђ: : : : : : : : : : : : : : : : : : : : : ::::2b
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp2t
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp2x
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:P L
(
_output_shapes
:»ђ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
ь
ћ
2__inference_separable_conv2d_2_layer_call_fn_46646

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45696Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46781

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ї
ћ
2__inference_separable_conv2d_2_layer_call_fn_46657

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45889y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45866

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45696

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ш
 
0__inference_separable_conv2d_layer_call_fn_46538

inputs!
unknown:#
	unknown_0: 
	unknown_1: 
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45638Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ёу
л7
__inference_train_step_10915

inputs[
Adce_net_separable_conv2d_separable_conv2d_readvariableop_resource:]
Cdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource: F
8dce_net_separable_conv2d_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_1_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_2_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_3_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_4_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_5_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@H
:dce_net_separable_conv2d_6_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: >
$adam_adam_update_resourceapplyadam_m:>
$adam_adam_update_resourceapplyadam_v:@
&adam_adam_update_1_resourceapplyadam_m: @
&adam_adam_update_1_resourceapplyadam_v: 4
&adam_adam_update_2_resourceapplyadam_m: 4
&adam_adam_update_2_resourceapplyadam_v: @
&adam_adam_update_3_resourceapplyadam_m: @
&adam_adam_update_3_resourceapplyadam_v: @
&adam_adam_update_4_resourceapplyadam_m:  @
&adam_adam_update_4_resourceapplyadam_v:  4
&adam_adam_update_5_resourceapplyadam_m: 4
&adam_adam_update_5_resourceapplyadam_v: @
&adam_adam_update_6_resourceapplyadam_m: @
&adam_adam_update_6_resourceapplyadam_v: @
&adam_adam_update_7_resourceapplyadam_m:  @
&adam_adam_update_7_resourceapplyadam_v:  4
&adam_adam_update_8_resourceapplyadam_m: 4
&adam_adam_update_8_resourceapplyadam_v: @
&adam_adam_update_9_resourceapplyadam_m: @
&adam_adam_update_9_resourceapplyadam_v: A
'adam_adam_update_10_resourceapplyadam_m:  A
'adam_adam_update_10_resourceapplyadam_v:  5
'adam_adam_update_11_resourceapplyadam_m: 5
'adam_adam_update_11_resourceapplyadam_v: A
'adam_adam_update_12_resourceapplyadam_m:@A
'adam_adam_update_12_resourceapplyadam_v:@A
'adam_adam_update_13_resourceapplyadam_m:@ A
'adam_adam_update_13_resourceapplyadam_v:@ 5
'adam_adam_update_14_resourceapplyadam_m: 5
'adam_adam_update_14_resourceapplyadam_v: A
'adam_adam_update_15_resourceapplyadam_m:@A
'adam_adam_update_15_resourceapplyadam_v:@A
'adam_adam_update_16_resourceapplyadam_m:@ A
'adam_adam_update_16_resourceapplyadam_v:@ 5
'adam_adam_update_17_resourceapplyadam_m: 5
'adam_adam_update_17_resourceapplyadam_v: A
'adam_adam_update_18_resourceapplyadam_m:@A
'adam_adam_update_18_resourceapplyadam_v:@A
'adam_adam_update_19_resourceapplyadam_m:@A
'adam_adam_update_19_resourceapplyadam_v:@5
'adam_adam_update_20_resourceapplyadam_m:5
'adam_adam_update_20_resourceapplyadam_v:
identity

identity_1

identity_2

identity_3

identity_4ИҐAdam/Adam/AssignAddVariableOpҐ"Adam/Adam/update/ResourceApplyAdamҐ$Adam/Adam/update_1/ResourceApplyAdamҐ%Adam/Adam/update_10/ResourceApplyAdamҐ%Adam/Adam/update_11/ResourceApplyAdamҐ%Adam/Adam/update_12/ResourceApplyAdamҐ%Adam/Adam/update_13/ResourceApplyAdamҐ%Adam/Adam/update_14/ResourceApplyAdamҐ%Adam/Adam/update_15/ResourceApplyAdamҐ%Adam/Adam/update_16/ResourceApplyAdamҐ%Adam/Adam/update_17/ResourceApplyAdamҐ%Adam/Adam/update_18/ResourceApplyAdamҐ%Adam/Adam/update_19/ResourceApplyAdamҐ$Adam/Adam/update_2/ResourceApplyAdamҐ%Adam/Adam/update_20/ResourceApplyAdamҐ$Adam/Adam/update_3/ResourceApplyAdamҐ$Adam/Adam/update_4/ResourceApplyAdamҐ$Adam/Adam/update_5/ResourceApplyAdamҐ$Adam/Adam/update_6/ResourceApplyAdamҐ$Adam/Adam/update_7/ResourceApplyAdamҐ$Adam/Adam/update_8/ResourceApplyAdamҐ$Adam/Adam/update_9/ResourceApplyAdamҐAdam/Cast/ReadVariableOpҐAdam/Cast_2/ReadVariableOpҐAdam/Cast_3/ReadVariableOpҐAdam/ReadVariableOpҐ/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpҐ8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpҐ:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1¬
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOpAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0∆
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0И
/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            И
7DCE-Net/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      с
3DCE-Net/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
С
)DCE-Net/separable_conv2d/separable_conv2dConv2D<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
§
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp8dce_net_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
 DCE-Net/separable_conv2d/BiasAddBiasAdd2DCE-Net/separable_conv2d/separable_conv2d:output:07DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ Г
DCE-Net/separable_conv2d/ReluRelu)DCE-Net/separable_conv2d/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ъ
5DCE-Net/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative+DCE-Net/separable_conv2d/Relu:activations:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_1/separable_conv2dConv2D>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_1/BiasAddBiasAdd4DCE-Net/separable_conv2d_1/separable_conv2d:output:09DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_1/ReluRelu+DCE-Net/separable_conv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_1/Relu:activations:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_2/separable_conv2dConv2D>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_2/BiasAddBiasAdd4DCE-Net/separable_conv2d_2/separable_conv2d:output:09DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_2/ReluRelu+DCE-Net/separable_conv2d_2/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_2/Relu:activations:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_3/separable_conv2dConv2D>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_3/BiasAddBiasAdd4DCE-Net/separable_conv2d_3/separable_conv2d:output:09DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_3/ReluRelu+DCE-Net/separable_conv2d_3/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ^
DCE-Net/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€“
DCE-Net/concatConcatV2-DCE-Net/separable_conv2d_2/Relu:activations:0-DCE-Net/separable_conv2d_3/Relu:activations:0DCE-Net/concat/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ж
5DCE-Net/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_4/separable_conv2dConv2D>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_4/BiasAddBiasAdd4DCE-Net/separable_conv2d_4/separable_conv2d:output:09DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_4/ReluRelu+DCE-Net/separable_conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
DCE-Net/concat_1ConcatV2-DCE-Net/separable_conv2d_1/Relu:activations:0-DCE-Net/separable_conv2d_4/Relu:activations:0DCE-Net/concat_1/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_1:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_5/separable_conv2dConv2D>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_5/BiasAddBiasAdd4DCE-Net/separable_conv2d_5/separable_conv2d:output:09DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_5/ReluRelu+DCE-Net/separable_conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€‘
DCE-Net/concat_2ConcatV2+DCE-Net/separable_conv2d/Relu:activations:0-DCE-Net/separable_conv2d_5/Relu:activations:0DCE-Net/concat_2/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0К
1DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_2:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_6/separable_conv2dConv2D>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0—
"DCE-Net/separable_conv2d_6/BiasAddBiasAdd4DCE-Net/separable_conv2d_6/separable_conv2d:output:09DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђЗ
DCE-Net/separable_conv2d_6/TanhTanh+DCE-Net/separable_conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:»ђS
DCE-Net/SquareSquareinputs*
T0*(
_output_shapes
:»ђa
DCE-Net/subSubDCE-Net/Square:y:0inputs*
T0*(
_output_shapes
:»ђ{
DCE-Net/mulMul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/addAddV2inputsDCE-Net/mul:z:0*
T0*(
_output_shapes
:»ђ^
DCE-Net/Square_1SquareDCE-Net/add:z:0*
T0*(
_output_shapes
:»ђn
DCE-Net/sub_1SubDCE-Net/Square_1:y:0DCE-Net/add:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_1Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђm
DCE-Net/add_1AddV2DCE-Net/add:z:0DCE-Net/mul_1:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_2SquareDCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_2SubDCE-Net/Square_2:y:0DCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_2Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_2AddV2DCE-Net/add_1:z:0DCE-Net/mul_2:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_3SquareDCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_3SubDCE-Net/Square_3:y:0DCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_3Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_3AddV2DCE-Net/add_2:z:0DCE-Net/mul_3:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_4SquareDCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_4SubDCE-Net/Square_4:y:0DCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_4Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_4AddV2DCE-Net/add_3:z:0DCE-Net/mul_4:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_5SquareDCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_5SubDCE-Net/Square_5:y:0DCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_5Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_5AddV2DCE-Net/add_4:z:0DCE-Net/mul_5:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_6SquareDCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_6SubDCE-Net/Square_6:y:0DCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_6Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_6AddV2DCE-Net/add_5:z:0DCE-Net/mul_6:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_7SquareDCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_7SubDCE-Net/Square_7:y:0DCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_7Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_7AddV2DCE-Net/add_6:z:0DCE-Net/mul_7:z:0*
T0*(
_output_shapes
:»ђx
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€І
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ґ
SpatialConsistencyLoss/Mean_1MeanDCE-Net/add_7:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Њ
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
¬
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
—
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
§
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*&
_output_shapes
:2Kx
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*&
_output_shapes
:2KЬ
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*&
_output_shapes
:2KЫ
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*&
_output_shapes
:2KЭ
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*&
_output_shapes
:2Ku
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             П
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: ≥
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :™
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :€
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: Љ
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: »
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Д
MeanMeanDCE-Net/add_7:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Р
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћ?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
:J
SquareSquaresub:z:0*
T0*&
_output_shapes
:^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ж
Mean_2MeanDCE-Net/add_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Я
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:A
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: S
Mean_3MeanSqueeze:output:0Const_1:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  †@P
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_7StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: n
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*%
valueB"                [
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ƒ
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:p
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_8StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:«ђP
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:«ђ`
Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_2:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_9StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: o
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*%
valueB"                \
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : »
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:q
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            О
strided_slice_10StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:»ЂP
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:»Ђ`
Const_3Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_3:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  HDN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
gradient_tape/mul_6/MulMulones:output:0truediv_2:z:0*
T0*
_output_shapes
: b
gradient_tape/mul_6/Mul_1Mulones:output:0mul_6/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_2/MulMulones:output:0Mean_3:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_2/Mul_1Mulones:output:0mul_2/x:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_2/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ћ
-gradient_tape/truediv_2/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_2/Shape:output:0(gradient_tape/truediv_2/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€t
gradient_tape/truediv_2/RealDivRealDivgradient_tape/mul_6/Mul_1:z:0Cast:y:0*
T0*
_output_shapes
: Ь
gradient_tape/truediv_2/SumSum#gradient_tape/truediv_2/RealDiv:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv_2/ReshapeReshape$gradient_tape/truediv_2/Sum:output:0&gradient_tape/truediv_2/Shape:output:0*
T0*
_output_shapes
: N
gradient_tape/truediv_2/NegNeg	mul_5:z:0*
T0*
_output_shapes
: x
!gradient_tape/truediv_2/RealDiv_1RealDivgradient_tape/truediv_2/Neg:y:0Cast:y:0*
T0*
_output_shapes
: ~
!gradient_tape/truediv_2/RealDiv_2RealDiv%gradient_tape/truediv_2/RealDiv_1:z:0Cast:y:0*
T0*
_output_shapes
: Й
gradient_tape/truediv_2/mulMulgradient_tape/mul_6/Mul_1:z:0%gradient_tape/truediv_2/RealDiv_2:z:0*
T0*
_output_shapes
: Ъ
gradient_tape/truediv_2/Sum_1Sumgradient_tape/truediv_2/mul:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Я
!gradient_tape/truediv_2/Reshape_1Reshape&gradient_tape/truediv_2/Sum_1:output:0(gradient_tape/truediv_2/Shape_1:output:0*
T0*
_output_shapes
: |
gradient_tape/mul/MulMulones:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: ^
gradient_tape/mul/Mul_1Mulones:output:0mul/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_1/MulMulones:output:0Mean_1:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_1/Mul_1Mulones:output:0mul_1/x:output:0*
T0*
_output_shapes
: e
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:К
gradient_tape/ReshapeReshapegradient_tape/mul_2/Mul_1:z:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:]
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB:}
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
:Z
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   AВ
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
:t
gradient_tape/mul_5/MulMul(gradient_tape/truediv_2/Reshape:output:0	add_2:z:0*
T0*
_output_shapes
: }
gradient_tape/mul_5/Mul_1Mul(gradient_tape/truediv_2/Reshape:output:0mul_5/x:output:0*
T0*
_output_shapes
: Б
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB Г
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ѓ
Ngradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€…
Cgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nanDivNoNangradient_tape/mul/Mul_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: В
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/SumSumGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: ь
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ReshapeReshapeEgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum:output:0Ggradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: Щ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/NegNeg3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: р
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1DivNoNan@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Neg:y:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: щ
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2DivNoNanIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: ћ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mulMulgradient_tape/mul/Mul_1:z:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: э
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1Sum@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mul:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: В
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape_1ReshapeGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Reshape_1Reshapegradient_tape/mul_1/Mul_1:z:0&gradient_tape/Reshape_1/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"            П
gradient_tape/Tile_1Tile gradient_tape/Reshape_1:output:0gradient_tape/Const_2:output:0*
T0*&
_output_shapes
:Z
gradient_tape/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ЎDТ
gradient_tape/truediv_1RealDivgradient_tape/Tile_1:output:0gradient_tape/Const_3:output:0*
T0*&
_output_shapes
:l
gradient_tape/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            М
gradient_tape/Reshape_2Reshapegradient_tape/truediv:z:0gradient_tape/Shape:output:0*
T0*&
_output_shapes
:Г
@gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB Е
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ю
:gradient_tape/SpatialConsistencyLoss/weighted_loss/ReshapeReshapeIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape:output:0Kgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: {
8gradient_tape/SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB и
7gradient_tape/SpatialConsistencyLoss/weighted_loss/TileTileCgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape:output:0Agradient_tape/SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: t
gradient_tape/Const_4Const^gradient_tape/truediv_1*
_output_shapes
: *
dtype0*
valueB
 *   @r
gradient_tape/MulMulsub:z:0gradient_tape/Const_4:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_1Mulgradient_tape/truediv_1:z:0gradient_tape/Mul:z:0*
T0*&
_output_shapes
:
gradient_tape/SqrtGradSqrtGradSqrt:y:0 gradient_tape/Reshape_2:output:0*
T0*&
_output_shapes
:^
gradient_tape/truediv/ShapeConst*
_output_shapes
: *
dtype0*
valueB `
gradient_tape/truediv/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ∆
+gradient_tape/truediv/BroadcastGradientArgsBroadcastGradientArgs$gradient_tape/truediv/Shape:output:0&gradient_tape/truediv/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€t
gradient_tape/truediv/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: Ц
gradient_tape/truediv/SumSum!gradient_tape/truediv/RealDiv:z:00gradient_tape/truediv/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: У
gradient_tape/truediv/ReshapeReshape"gradient_tape/truediv/Sum:output:0$gradient_tape/truediv/Shape:output:0*
T0*
_output_shapes
: O
gradient_tape/truediv/NegNegSum:output:0*
T0*
_output_shapes
: v
gradient_tape/truediv/RealDiv_1RealDivgradient_tape/truediv/Neg:y:0
Cast_1:y:0*
T0*
_output_shapes
: |
gradient_tape/truediv/RealDiv_2RealDiv#gradient_tape/truediv/RealDiv_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: Е
gradient_tape/truediv/mulMulgradient_tape/mul_5/Mul_1:z:0#gradient_tape/truediv/RealDiv_2:z:0*
T0*
_output_shapes
: Ф
gradient_tape/truediv/Sum_1Sumgradient_tape/truediv/mul:z:00gradient_tape/truediv/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv/Reshape_1Reshape$gradient_tape/truediv/Sum_1:output:0&gradient_tape/truediv/Shape_1:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ћ
-gradient_tape/truediv_1/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_1/Shape:output:0(gradient_tape/truediv_1/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€v
gradient_tape/truediv_1/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: Ь
gradient_tape/truediv_1/SumSum#gradient_tape/truediv_1/RealDiv:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv_1/ReshapeReshape$gradient_tape/truediv_1/Sum:output:0&gradient_tape/truediv_1/Shape:output:0*
T0*
_output_shapes
: S
gradient_tape/truediv_1/NegNegSum_1:output:0*
T0*
_output_shapes
: z
!gradient_tape/truediv_1/RealDiv_1RealDivgradient_tape/truediv_1/Neg:y:0
Cast_2:y:0*
T0*
_output_shapes
: А
!gradient_tape/truediv_1/RealDiv_2RealDiv%gradient_tape/truediv_1/RealDiv_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: Й
gradient_tape/truediv_1/mulMulgradient_tape/mul_5/Mul_1:z:0%gradient_tape/truediv_1/RealDiv_2:z:0*
T0*
_output_shapes
: Ъ
gradient_tape/truediv_1/Sum_1Sumgradient_tape/truediv_1/mul:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Я
!gradient_tape/truediv_1/Reshape_1Reshape&gradient_tape/truediv_1/Sum_1:output:0(gradient_tape/truediv_1/Shape_1:output:0*
T0*
_output_shapes
: Е
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shapeConst*
_output_shapes
: *
dtype0*
valueB З
Dgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1Const*
_output_shapes
: *
dtype0*
valueB щ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1Reshape@gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile:output:0Mgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB о
9gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1TileEgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1:output:0Cgradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            £
gradient_tape/Reshape_3Reshape&gradient_tape/truediv/Reshape:output:0&gradient_tape/Reshape_3/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_5Const*
_output_shapes
:*
dtype0*%
valueB"   «   ,     С
gradient_tape/Tile_2Tile gradient_tape/Reshape_3:output:0gradient_tape/Const_5:output:0*
T0*(
_output_shapes
:«ђv
gradient_tape/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            •
gradient_tape/Reshape_4Reshape(gradient_tape/truediv_1/Reshape:output:0&gradient_tape/Reshape_4/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   +     С
gradient_tape/Tile_3Tile gradient_tape/Reshape_4:output:0gradient_tape/Const_6:output:0*
T0*(
_output_shapes
:»Ђ„
6gradient_tape/SpatialConsistencyLoss/weighted_loss/MulMulBgradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: v
gradient_tape/AvgPool2D/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     в
#gradient_tape/AvgPool2D/AvgPoolGradAvgPoolGrad&gradient_tape/AvgPool2D/Shape:output:0gradient_tape/Mul_1:z:0*
T0*(
_output_shapes
:»ђ*
ksize
*
paddingVALID*
strides
s
gradient_tape/Const_7Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @y
gradient_tape/Mul_2MulSquare_3:y:0gradient_tape/Const_7:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_3Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_2:z:0*
T0*&
_output_shapes
:q
gradient_tape/Const_8Const^gradient_tape/Tile_2*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_4Mul	sub_7:z:0gradient_tape/Const_8:output:0*
T0*(
_output_shapes
:«ђЕ
gradient_tape/Mul_5Mulgradient_tape/Tile_2:output:0gradient_tape/Mul_4:z:0*
T0*(
_output_shapes
:«ђq
gradient_tape/Const_9Const^gradient_tape/Tile_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_6Mul	sub_9:z:0gradient_tape/Const_9:output:0*
T0*(
_output_shapes
:»ЂЕ
gradient_tape/Mul_7Mulgradient_tape/Tile_3:output:0gradient_tape/Mul_6:z:0*
T0*(
_output_shapes
:»ЂЛ
2gradient_tape/SpatialConsistencyLoss/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            б
,gradient_tape/SpatialConsistencyLoss/ReshapeReshape:gradient_tape/SpatialConsistencyLoss/weighted_loss/Mul:z:0;gradient_tape/SpatialConsistencyLoss/Reshape/shape:output:0*
T0*&
_output_shapes
:Г
*gradient_tape/SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"   2   K      ќ
)gradient_tape/SpatialConsistencyLoss/TileTile5gradient_tape/SpatialConsistencyLoss/Reshape:output:03gradient_tape/SpatialConsistencyLoss/Const:output:0*
T0*&
_output_shapes
:2Kq
,gradient_tape/SpatialConsistencyLoss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 * »ѓG”
,gradient_tape/SpatialConsistencyLoss/truedivRealDiv2gradient_tape/SpatialConsistencyLoss/Tile:output:05gradient_tape/SpatialConsistencyLoss/Const_1:output:0*
T0*&
_output_shapes
:2Kp
gradient_tape/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Y
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :Й
gradient_tape/MaximumMaximum gradient_tape/Maximum/x:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
:q
gradient_tape/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Е
gradient_tape/floordivFloorDiv!gradient_tape/floordiv/x:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Ђ
gradient_tape/Reshape_5Reshape,gradient_tape/AvgPool2D/AvgPoolGrad:output:0&gradient_tape/Reshape_5/shape:output:0*
T0*(
_output_shapes
:»ђw
gradient_tape/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Tile_4Tile gradient_tape/Reshape_5:output:0'gradient_tape/Tile_4/multiples:output:0*
T0*(
_output_shapes
:»ђ[
gradient_tape/Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *  @@Х
gradient_tape/truediv_2RealDivgradient_tape/Tile_4:output:0gradient_tape/Const_10:output:0*
T0*(
_output_shapes
:»ђt
gradient_tape/Const_11Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @z
gradient_tape/Mul_8MulSquare_1:y:0gradient_tape/Const_11:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_9Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_8:z:0*
T0*&
_output_shapes
:t
gradient_tape/Const_12Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @{
gradient_tape/Mul_10MulSquare_2:y:0gradient_tape/Const_12:output:0*
T0*&
_output_shapes
:В
gradient_tape/Mul_11Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_10:z:0*
T0*&
_output_shapes
:q
gradient_tape/Const_13Const^gradient_tape/Mul_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_12Mul	sub_3:z:0gradient_tape/Const_13:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_13Mulgradient_tape/Mul_3:z:0gradient_tape/Mul_12:z:0*
T0*&
_output_shapes
:j
gradient_tape/sub_7/NegNeggradient_tape/Mul_5:z:0*
T0*(
_output_shapes
:«ђj
gradient_tape/sub_9/NegNeggradient_tape/Mul_7:z:0*
T0*(
_output_shapes
:»Ђq
gradient_tape/Const_14Const^gradient_tape/Mul_9*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_14Mul	sub_1:z:0gradient_tape/Const_14:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_15Mulgradient_tape/Mul_9:z:0gradient_tape/Mul_14:z:0*
T0*&
_output_shapes
:r
gradient_tape/Const_15Const^gradient_tape/Mul_11*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_16Mul	sub_2:z:0gradient_tape/Const_15:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_17Mulgradient_tape/Mul_11:z:0gradient_tape/Mul_16:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_3/NegNeggradient_tape/Mul_13:z:0*
T0*&
_output_shapes
:|
#gradient_tape/strided_slice_7/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_7/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_7/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               Л
2gradient_tape/strided_slice_7/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_7/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            є
.gradient_tape/strided_slice_7/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_7/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_7/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_7/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_7/StridedSliceGrad/strides:output:0gradient_tape/Mul_5:z:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask|
#gradient_tape/strided_slice_8/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_8/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_8/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_8/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            Ґ
.gradient_tape/strided_slice_8/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_8/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_8/StridedSliceGrad/begin:output:0 strided_slice_8/stack_1:output:0?gradient_tape/strided_slice_8/StridedSliceGrad/strides:output:0gradient_tape/sub_7/Neg:y:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask|
#gradient_tape/strided_slice_9/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_9/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_9/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               Л
2gradient_tape/strided_slice_9/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_9/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            є
.gradient_tape/strided_slice_9/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_9/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_9/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_9/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_9/StridedSliceGrad/strides:output:0gradient_tape/Mul_7:z:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask}
$gradient_tape/strided_slice_10/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     О
5gradient_tape/strided_slice_10/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     О
5gradient_tape/strided_slice_10/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                Р
7gradient_tape/strided_slice_10/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            І
/gradient_tape/strided_slice_10/StridedSliceGradStridedSliceGrad>gradient_tape/strided_slice_10/StridedSliceGrad/shape:output:0>gradient_tape/strided_slice_10/StridedSliceGrad/begin:output:0!strided_slice_10/stack_1:output:0@gradient_tape/strided_slice_10/StridedSliceGrad/strides:output:0gradient_tape/sub_9/Neg:y:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask†
,gradient_tape/SpatialConsistencyLoss/Const_2Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @є
(gradient_tape/SpatialConsistencyLoss/MulMul SpatialConsistencyLoss/sub_3:z:05gradient_tape/SpatialConsistencyLoss/Const_2:output:0*
T0*&
_output_shapes
:2K¬
*gradient_tape/SpatialConsistencyLoss/Mul_1Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0,gradient_tape/SpatialConsistencyLoss/Mul:z:0*
T0*&
_output_shapes
:2Ki
gradient_tape/sub_1/NegNeggradient_tape/Mul_15:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_2/NegNeggradient_tape/Mul_17:z:0*
T0*&
_output_shapes
:†
,gradient_tape/SpatialConsistencyLoss/Const_3Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @ї
*gradient_tape/SpatialConsistencyLoss/Mul_2Mul SpatialConsistencyLoss/sub_2:z:05gradient_tape/SpatialConsistencyLoss/Const_3:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_3Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_2:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_3/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_1:z:0*
T0*&
_output_shapes
:2Kz
AddNAddNgradient_tape/Mul_15:z:0gradient_tape/Mul_17:z:0*
N*
T0*&
_output_shapes
:В
AddN_1AddNgradient_tape/sub_3/Neg:y:0gradient_tape/sub_1/Neg:y:0*
N*
T0*&
_output_shapes
:
AddN_2AddNgradient_tape/Mul_13:z:0gradient_tape/sub_2/Neg:y:0*
N*
T0*&
_output_shapes
:Ь
gradient_tape/concatConcatV2
AddN:sum:0AddN_1:sum:0AddN_2:sum:0split/split_dim:output:0*
N*
T0*&
_output_shapes
:†
,gradient_tape/SpatialConsistencyLoss/Const_4Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @є
*gradient_tape/SpatialConsistencyLoss/Mul_4MulSpatialConsistencyLoss/sub:z:05gradient_tape/SpatialConsistencyLoss/Const_4:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_5Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_4:z:0*
T0*&
_output_shapes
:2K†
,gradient_tape/SpatialConsistencyLoss/Const_5Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @ї
*gradient_tape/SpatialConsistencyLoss/Mul_6Mul SpatialConsistencyLoss/sub_1:z:05gradient_tape/SpatialConsistencyLoss/Const_5:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_7Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_6:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_2/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_3:z:0*
T0*&
_output_shapes
:2KЊ
+gradient_tape/SpatialConsistencyLoss/ShapeNShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
N*
T0* 
_output_shapes
::Ї
8gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInputConv2DBackpropInput4gradient_tape/SpatialConsistencyLoss/ShapeN:output:0&spatialconsistencyloss_conv2d_3_filter2gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
Ѕ
9gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilterConv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:04gradient_tape/SpatialConsistencyLoss/ShapeN:output:12gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
gradient_tape/Maximum_1/xConst*
_output_shapes
:*
dtype0*%
valueB"            [
gradient_tape/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
gradient_tape/Maximum_1Maximum"gradient_tape/Maximum_1/x:output:0"gradient_tape/Maximum_1/y:output:0*
T0*
_output_shapes
:s
gradient_tape/floordiv_1/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Л
gradient_tape/floordiv_1FloorDiv#gradient_tape/floordiv_1/x:output:0gradient_tape/Maximum_1:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Reshape_6Reshapegradient_tape/concat:output:0&gradient_tape/Reshape_6/shape:output:0*
T0*&
_output_shapes
:w
gradient_tape/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Ъ
gradient_tape/Tile_5Tile gradient_tape/Reshape_6:output:0'gradient_tape/Tile_5/multiples:output:0*
T0*(
_output_shapes
:»ђ[
gradient_tape/Const_16Const*
_output_shapes
: *
dtype0*
valueB
 * `jGХ
gradient_tape/truediv_3RealDivgradient_tape/Tile_5:output:0gradient_tape/Const_16:output:0*
T0*(
_output_shapes
:»ђФ
,gradient_tape/SpatialConsistencyLoss/sub/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_5:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_1/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_7:z:0*
T0*&
_output_shapes
:2Kј
-gradient_tape/SpatialConsistencyLoss/ShapeN_1ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
N*
T0* 
_output_shapes
::Њ
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:0&spatialconsistencyloss_conv2d_2_filter2gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
≈
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_1Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:12gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
Њ
-gradient_tape/SpatialConsistencyLoss/ShapeN_2ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
N*
T0* 
_output_shapes
::Ї
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:0$spatialconsistencyloss_conv2d_filter0gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
√
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_2Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:10gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
ј
-gradient_tape/SpatialConsistencyLoss/ShapeN_3ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
N*
T0* 
_output_shapes
::Њ
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:0&spatialconsistencyloss_conv2d_1_filter2gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
≈
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_3Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:12gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
Џ
AddN_3AddNAgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3:output:0*
N*
T0*&
_output_shapes
:2KП
6gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Й
<gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGradAvgPoolGrad?gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/Shape:output:0AddN_3:sum:0*
T0*(
_output_shapes
:»ђ*
ksize
*
paddingVALID*
strides
Н
4gradient_tape/SpatialConsistencyLoss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     т
.gradient_tape/SpatialConsistencyLoss/Reshape_1ReshapeEgradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGrad:output:0=gradient_tape/SpatialConsistencyLoss/Reshape_1/shape:output:0*
T0*(
_output_shapes
:»ђО
5gradient_tape/SpatialConsistencyLoss/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            я
+gradient_tape/SpatialConsistencyLoss/Tile_1Tile7gradient_tape/SpatialConsistencyLoss/Reshape_1:output:0>gradient_tape/SpatialConsistencyLoss/Tile_1/multiples:output:0*
T0*(
_output_shapes
:»ђq
,gradient_tape/SpatialConsistencyLoss/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  @@ў
.gradient_tape/SpatialConsistencyLoss/truediv_1RealDiv4gradient_tape/SpatialConsistencyLoss/Tile_1:output:05gradient_tape/SpatialConsistencyLoss/Const_6:output:0*
T0*(
_output_shapes
:»ђЄ
AddN_4AddNgradient_tape/truediv_2:z:0gradient_tape/truediv_3:z:02gradient_tape/SpatialConsistencyLoss/truediv_1:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_7/MulMulAddN_4:sum:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_7/Mul_1MulAddN_4:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_7/NegNeg%gradient_tape/DCE-Net/mul_7/Mul_1:z:0*
T0*(
_output_shapes
:»ђД
gradient_tape/DCE-Net/ConstConst"^gradient_tape/DCE-Net/mul_7/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @М
gradient_tape/DCE-Net/MulMulDCE-Net/add_6:z:0$gradient_tape/DCE-Net/Const:output:0*
T0*(
_output_shapes
:»ђЫ
gradient_tape/DCE-Net/Mul_1Mul%gradient_tape/DCE-Net/mul_7/Mul_1:z:0gradient_tape/DCE-Net/Mul:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_5AddNAddN_4:sum:0#gradient_tape/DCE-Net/sub_7/Neg:y:0gradient_tape/DCE-Net/Mul_1:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_6/MulMulAddN_5:sum:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_6/Mul_1MulAddN_5:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_6/NegNeg%gradient_tape/DCE-Net/mul_6/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_1Const"^gradient_tape/DCE-Net/mul_6/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_2MulDCE-Net/add_5:z:0&gradient_tape/DCE-Net/Const_1:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_3Mul%gradient_tape/DCE-Net/mul_6/Mul_1:z:0gradient_tape/DCE-Net/Mul_2:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_6AddNAddN_5:sum:0#gradient_tape/DCE-Net/sub_6/Neg:y:0gradient_tape/DCE-Net/Mul_3:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_5/MulMulAddN_6:sum:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_5/Mul_1MulAddN_6:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_5/NegNeg%gradient_tape/DCE-Net/mul_5/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_2Const"^gradient_tape/DCE-Net/mul_5/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_4MulDCE-Net/add_4:z:0&gradient_tape/DCE-Net/Const_2:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_5Mul%gradient_tape/DCE-Net/mul_5/Mul_1:z:0gradient_tape/DCE-Net/Mul_4:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_7AddNAddN_6:sum:0#gradient_tape/DCE-Net/sub_5/Neg:y:0gradient_tape/DCE-Net/Mul_5:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_4/MulMulAddN_7:sum:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_4/Mul_1MulAddN_7:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_4/NegNeg%gradient_tape/DCE-Net/mul_4/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_3Const"^gradient_tape/DCE-Net/mul_4/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_6MulDCE-Net/add_3:z:0&gradient_tape/DCE-Net/Const_3:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_7Mul%gradient_tape/DCE-Net/mul_4/Mul_1:z:0gradient_tape/DCE-Net/Mul_6:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_8AddNAddN_7:sum:0#gradient_tape/DCE-Net/sub_4/Neg:y:0gradient_tape/DCE-Net/Mul_7:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_3/MulMulAddN_8:sum:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_3/Mul_1MulAddN_8:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_3/NegNeg%gradient_tape/DCE-Net/mul_3/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_4Const"^gradient_tape/DCE-Net/mul_3/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_8MulDCE-Net/add_2:z:0&gradient_tape/DCE-Net/Const_4:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_9Mul%gradient_tape/DCE-Net/mul_3/Mul_1:z:0gradient_tape/DCE-Net/Mul_8:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_9AddNAddN_8:sum:0#gradient_tape/DCE-Net/sub_3/Neg:y:0gradient_tape/DCE-Net/Mul_9:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_2/MulMulAddN_9:sum:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_2/Mul_1MulAddN_9:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_2/NegNeg%gradient_tape/DCE-Net/mul_2/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_5Const"^gradient_tape/DCE-Net/mul_2/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @С
gradient_tape/DCE-Net/Mul_10MulDCE-Net/add_1:z:0&gradient_tape/DCE-Net/Const_5:output:0*
T0*(
_output_shapes
:»ђЯ
gradient_tape/DCE-Net/Mul_11Mul%gradient_tape/DCE-Net/mul_2/Mul_1:z:0 gradient_tape/DCE-Net/Mul_10:z:0*
T0*(
_output_shapes
:»ђ†
AddN_10AddNAddN_9:sum:0#gradient_tape/DCE-Net/sub_2/Neg:y:0 gradient_tape/DCE-Net/Mul_11:z:0*
N*
T0*(
_output_shapes
:»ђ{
gradient_tape/DCE-Net/mul_1/MulMulAddN_10:sum:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђП
!gradient_tape/DCE-Net/mul_1/Mul_1MulAddN_10:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_1/NegNeg%gradient_tape/DCE-Net/mul_1/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_6Const"^gradient_tape/DCE-Net/mul_1/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @П
gradient_tape/DCE-Net/Mul_12MulDCE-Net/add:z:0&gradient_tape/DCE-Net/Const_6:output:0*
T0*(
_output_shapes
:»ђЯ
gradient_tape/DCE-Net/Mul_13Mul%gradient_tape/DCE-Net/mul_1/Mul_1:z:0 gradient_tape/DCE-Net/Mul_12:z:0*
T0*(
_output_shapes
:»ђ°
AddN_11AddNAddN_10:sum:0#gradient_tape/DCE-Net/sub_1/Neg:y:0 gradient_tape/DCE-Net/Mul_13:z:0*
N*
T0*(
_output_shapes
:»ђw
gradient_tape/DCE-Net/mul/MulMulAddN_11:sum:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђН
gradient_tape/DCE-Net/mul/Mul_1MulAddN_11:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђ÷
AddN_12AddN7gradient_tape/strided_slice_7/StridedSliceGrad:output:07gradient_tape/strided_slice_8/StridedSliceGrad:output:07gradient_tape/strided_slice_9/StridedSliceGrad:output:08gradient_tape/strided_slice_10/StridedSliceGrad:output:0#gradient_tape/DCE-Net/mul_7/Mul:z:0#gradient_tape/DCE-Net/mul_6/Mul:z:0#gradient_tape/DCE-Net/mul_5/Mul:z:0#gradient_tape/DCE-Net/mul_4/Mul:z:0#gradient_tape/DCE-Net/mul_3/Mul:z:0#gradient_tape/DCE-Net/mul_2/Mul:z:0#gradient_tape/DCE-Net/mul_1/Mul:z:0!gradient_tape/DCE-Net/mul/Mul:z:0*
N*
T0*(
_output_shapes
:»ђ§
1gradient_tape/DCE-Net/separable_conv2d_6/TanhGradTanhGrad#DCE-Net/separable_conv2d_6/Tanh:y:0AddN_12:sum:0*
T0*(
_output_shapes
:»ђІ
<gradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*
_output_shapes
:Д
@gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::И
Mgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:05gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
В
Ngradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeN:output:15gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*&
_output_shapes
:@*
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ь
]gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat_2:output:0Jgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
\
gradient_tape/DCE-Net/RankConst*
_output_shapes
: *
dtype0*
value	B :Л
gradient_tape/DCE-Net/modFloorModDCE-Net/concat_2/axis:output:0#gradient_tape/DCE-Net/Rank:output:0*
T0*
_output_shapes
: t
gradient_tape/DCE-Net/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,       
"gradient_tape/DCE-Net/ConcatOffsetConcatOffsetgradient_tape/DCE-Net/mod:z:0$gradient_tape/DCE-Net/Shape:output:0&gradient_tape/DCE-Net/Shape_1:output:0*
N* 
_output_shapes
::Ю
gradient_tape/DCE-Net/SliceSliceegradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0+gradient_tape/DCE-Net/ConcatOffset:offset:0$gradient_tape/DCE-Net/Shape:output:0*
Index0*
T0*(
_output_shapes
:»ђ Ґ
gradient_tape/DCE-Net/Slice_1Sliceegradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0+gradient_tape/DCE-Net/ConcatOffset:offset:1&gradient_tape/DCE-Net/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_5/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_1:output:0-DCE-Net/separable_conv2d_5/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ь
]gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat_1:output:0Jgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
^
gradient_tape/DCE-Net/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :П
gradient_tape/DCE-Net/mod_1FloorModDCE-Net/concat_1/axis:output:0%gradient_tape/DCE-Net/Rank_1:output:0*
T0*
_output_shapes
: v
gradient_tape/DCE-Net/Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      –
$gradient_tape/DCE-Net/ConcatOffset_1ConcatOffsetgradient_tape/DCE-Net/mod_1:z:0&gradient_tape/DCE-Net/Shape_2:output:0&gradient_tape/DCE-Net/Shape_3:output:0*
N* 
_output_shapes
::§
gradient_tape/DCE-Net/Slice_2Sliceegradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_1:offset:0&gradient_tape/DCE-Net/Shape_2:output:0*
Index0*
T0*(
_output_shapes
:»ђ §
gradient_tape/DCE-Net/Slice_3Sliceegradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_1:offset:1&gradient_tape/DCE-Net/Shape_3:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_4/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_3:output:0-DCE-Net/separable_conv2d_4/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ъ
]gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat:output:0Jgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
^
gradient_tape/DCE-Net/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :Н
gradient_tape/DCE-Net/mod_2FloorModDCE-Net/concat/axis:output:0%gradient_tape/DCE-Net/Rank_2:output:0*
T0*
_output_shapes
: v
gradient_tape/DCE-Net/Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      –
$gradient_tape/DCE-Net/ConcatOffset_2ConcatOffsetgradient_tape/DCE-Net/mod_2:z:0&gradient_tape/DCE-Net/Shape_4:output:0&gradient_tape/DCE-Net/Shape_5:output:0*
N* 
_output_shapes
::§
gradient_tape/DCE-Net/Slice_4Sliceegradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_2:offset:0&gradient_tape/DCE-Net/Shape_4:output:0*
Index0*
T0*(
_output_shapes
:»ђ §
gradient_tape/DCE-Net/Slice_5Sliceegradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_2:offset:1&gradient_tape/DCE-Net/Shape_5:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_3/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_5:output:0-DCE-Net/separable_conv2d_3/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             ∞
]gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter-DCE-Net/separable_conv2d_2/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Џ
AddN_13AddN&gradient_tape/DCE-Net/Slice_4:output:0egradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ Ѓ
1gradient_tape/DCE-Net/separable_conv2d_2/ReluGradReluGradAddN_13:sum:0-DCE-Net/separable_conv2d_2/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             ∞
]gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter-DCE-Net/separable_conv2d_1/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Џ
AddN_14AddN&gradient_tape/DCE-Net/Slice_2:output:0egradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ Ѓ
1gradient_tape/DCE-Net/separable_conv2d_1/ReluGradReluGradAddN_14:sum:0-DCE-Net/separable_conv2d_1/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             Ѓ
]gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter+DCE-Net/separable_conv2d/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Ў
AddN_15AddN$gradient_tape/DCE-Net/Slice:output:0egradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ ™
/gradient_tape/DCE-Net/separable_conv2d/ReluGradReluGradAddN_15:sum:0+DCE-Net/separable_conv2d/Relu:activations:0*
T0*(
_output_shapes
:»ђ Ђ
:gradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGradBiasAddGrad;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*
_output_shapes
: ю
>gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeNShapeN<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::И
Kgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputGgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeN:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
В
Lgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0Ggradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeN:output:1;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
Ц
=gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ї
Zgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputFgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape:output:0@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0Tgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"            Г
[gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterinputsHgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape_1:output:0Tgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0К
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 RТ
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0О
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0О
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Й
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Л

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?Е

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Е
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: И
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?С

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?С

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: ≤
Adam/Identity_3Identitydgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:£
Adam/Identity_4IdentityUgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: Е
Adam/Identity_5IdentityCgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: і
Adam/Identity_6Identityfgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: •
Adam/Identity_7IdentityWgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  З
Adam/Identity_8IdentityEgradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: і
Adam/Identity_9Identityfgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: ¶
Adam/Identity_10IdentityWgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  И
Adam/Identity_11IdentityEgradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_12Identityfgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: ¶
Adam/Identity_13IdentityWgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  И
Adam/Identity_14IdentityEgradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_15Identityfgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_16IdentityWgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ И
Adam/Identity_17IdentityEgradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_18Identityfgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_19IdentityWgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ И
Adam/Identity_20IdentityEgradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_21Identityfgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_22IdentityWgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@И
Adam/Identity_23IdentityEgradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:∆"
Adam/IdentityN	IdentityNdgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Ugradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0Cgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0dgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Ugradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0Cgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0*3
T.
,2**+
_gradient_op_typeCustomGradient-10782*в
_output_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:ѕ
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:09^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(Ї
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam8dce_net_separable_conv2d_biasadd_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:20^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(б
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ј
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_1_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:52^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(б
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ј
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_2_biasadd_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:82^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_3_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:112^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_4_biasadd_readvariableop_resource'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:142^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:15;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:16=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_5_biasadd_readvariableop_resource'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:172^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:18;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:19=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_6_biasadd_readvariableop_resource'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:202^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Ь
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R•
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: „
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp0^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp9^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ч
_input_shapesе
в:»ђ: : : : : : : : : : : : : : : : : : : : : ::::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2N
%Adam/Adam/update_18/ResourceApplyAdam%Adam/Adam/update_18/ResourceApplyAdam2N
%Adam/Adam/update_19/ResourceApplyAdam%Adam/Adam/update_19/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2N
%Adam/Adam/update_20/ResourceApplyAdam%Adam/Adam/update_20/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2b
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp2t
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp2x
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:P L
(
_output_shapes
:»ђ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::ZV
T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource:ZV
T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource:\ X
V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource:\!X
V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource:Q"M
K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource:Q#M
K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource:\$X
V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource:\%X
V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource:^&Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource:^'Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource:S(O
M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource:S)O
M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource:\*X
V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource:\+X
V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource:^,Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource:^-Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource:S.O
M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource:S/O
M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource:\0X
V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource:\1X
V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource:^2Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource:^3Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource:S4O
M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource:S5O
M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource:\6X
V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource:\7X
V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource:^8Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource:^9Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource:S:O
M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource:S;O
M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource:\<X
V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource:\=X
V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource:^>Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource:^?Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource:S@O
M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource:SAO
M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource:\BX
V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource:\CX
V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource:^DZ
X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource:^EZ
X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource:SFO
M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource:SGO
M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource
ї
Д
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46689

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45754

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ёу
л7
__inference_train_step_11747

inputs[
Adce_net_separable_conv2d_separable_conv2d_readvariableop_resource:]
Cdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource: F
8dce_net_separable_conv2d_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_1_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_2_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_3_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_4_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_5_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@H
:dce_net_separable_conv2d_6_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: >
$adam_adam_update_resourceapplyadam_m:>
$adam_adam_update_resourceapplyadam_v:@
&adam_adam_update_1_resourceapplyadam_m: @
&adam_adam_update_1_resourceapplyadam_v: 4
&adam_adam_update_2_resourceapplyadam_m: 4
&adam_adam_update_2_resourceapplyadam_v: @
&adam_adam_update_3_resourceapplyadam_m: @
&adam_adam_update_3_resourceapplyadam_v: @
&adam_adam_update_4_resourceapplyadam_m:  @
&adam_adam_update_4_resourceapplyadam_v:  4
&adam_adam_update_5_resourceapplyadam_m: 4
&adam_adam_update_5_resourceapplyadam_v: @
&adam_adam_update_6_resourceapplyadam_m: @
&adam_adam_update_6_resourceapplyadam_v: @
&adam_adam_update_7_resourceapplyadam_m:  @
&adam_adam_update_7_resourceapplyadam_v:  4
&adam_adam_update_8_resourceapplyadam_m: 4
&adam_adam_update_8_resourceapplyadam_v: @
&adam_adam_update_9_resourceapplyadam_m: @
&adam_adam_update_9_resourceapplyadam_v: A
'adam_adam_update_10_resourceapplyadam_m:  A
'adam_adam_update_10_resourceapplyadam_v:  5
'adam_adam_update_11_resourceapplyadam_m: 5
'adam_adam_update_11_resourceapplyadam_v: A
'adam_adam_update_12_resourceapplyadam_m:@A
'adam_adam_update_12_resourceapplyadam_v:@A
'adam_adam_update_13_resourceapplyadam_m:@ A
'adam_adam_update_13_resourceapplyadam_v:@ 5
'adam_adam_update_14_resourceapplyadam_m: 5
'adam_adam_update_14_resourceapplyadam_v: A
'adam_adam_update_15_resourceapplyadam_m:@A
'adam_adam_update_15_resourceapplyadam_v:@A
'adam_adam_update_16_resourceapplyadam_m:@ A
'adam_adam_update_16_resourceapplyadam_v:@ 5
'adam_adam_update_17_resourceapplyadam_m: 5
'adam_adam_update_17_resourceapplyadam_v: A
'adam_adam_update_18_resourceapplyadam_m:@A
'adam_adam_update_18_resourceapplyadam_v:@A
'adam_adam_update_19_resourceapplyadam_m:@A
'adam_adam_update_19_resourceapplyadam_v:@5
'adam_adam_update_20_resourceapplyadam_m:5
'adam_adam_update_20_resourceapplyadam_v:
identity

identity_1

identity_2

identity_3

identity_4ИҐAdam/Adam/AssignAddVariableOpҐ"Adam/Adam/update/ResourceApplyAdamҐ$Adam/Adam/update_1/ResourceApplyAdamҐ%Adam/Adam/update_10/ResourceApplyAdamҐ%Adam/Adam/update_11/ResourceApplyAdamҐ%Adam/Adam/update_12/ResourceApplyAdamҐ%Adam/Adam/update_13/ResourceApplyAdamҐ%Adam/Adam/update_14/ResourceApplyAdamҐ%Adam/Adam/update_15/ResourceApplyAdamҐ%Adam/Adam/update_16/ResourceApplyAdamҐ%Adam/Adam/update_17/ResourceApplyAdamҐ%Adam/Adam/update_18/ResourceApplyAdamҐ%Adam/Adam/update_19/ResourceApplyAdamҐ$Adam/Adam/update_2/ResourceApplyAdamҐ%Adam/Adam/update_20/ResourceApplyAdamҐ$Adam/Adam/update_3/ResourceApplyAdamҐ$Adam/Adam/update_4/ResourceApplyAdamҐ$Adam/Adam/update_5/ResourceApplyAdamҐ$Adam/Adam/update_6/ResourceApplyAdamҐ$Adam/Adam/update_7/ResourceApplyAdamҐ$Adam/Adam/update_8/ResourceApplyAdamҐ$Adam/Adam/update_9/ResourceApplyAdamҐAdam/Cast/ReadVariableOpҐAdam/Cast_2/ReadVariableOpҐAdam/Cast_3/ReadVariableOpҐAdam/ReadVariableOpҐ/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpҐ8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpҐ:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1¬
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOpAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0∆
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0И
/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            И
7DCE-Net/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      с
3DCE-Net/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinputs@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
С
)DCE-Net/separable_conv2d/separable_conv2dConv2D<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
§
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp8dce_net_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
 DCE-Net/separable_conv2d/BiasAddBiasAdd2DCE-Net/separable_conv2d/separable_conv2d:output:07DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ Г
DCE-Net/separable_conv2d/ReluRelu)DCE-Net/separable_conv2d/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ъ
5DCE-Net/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative+DCE-Net/separable_conv2d/Relu:activations:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_1/separable_conv2dConv2D>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_1/BiasAddBiasAdd4DCE-Net/separable_conv2d_1/separable_conv2d:output:09DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_1/ReluRelu+DCE-Net/separable_conv2d_1/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_1/Relu:activations:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_2/separable_conv2dConv2D>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_2/BiasAddBiasAdd4DCE-Net/separable_conv2d_2/separable_conv2d:output:09DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_2/ReluRelu+DCE-Net/separable_conv2d_2/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ∆
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ь
5DCE-Net/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_2/Relu:activations:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_3/separable_conv2dConv2D>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_3/BiasAddBiasAdd4DCE-Net/separable_conv2d_3/separable_conv2d:output:09DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_3/ReluRelu+DCE-Net/separable_conv2d_3/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ ^
DCE-Net/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€“
DCE-Net/concatConcatV2-DCE-Net/separable_conv2d_2/Relu:activations:0-DCE-Net/separable_conv2d_3/Relu:activations:0DCE-Net/concat/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ж
5DCE-Net/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_4/separable_conv2dConv2D>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_4/BiasAddBiasAdd4DCE-Net/separable_conv2d_4/separable_conv2d:output:09DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_4/ReluRelu+DCE-Net/separable_conv2d_4/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€÷
DCE-Net/concat_1ConcatV2-DCE-Net/separable_conv2d_1/Relu:activations:0-DCE-Net/separable_conv2d_4/Relu:activations:0DCE-Net/concat_1/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_1:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_5/separable_conv2dConv2D>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0—
"DCE-Net/separable_conv2d_5/BiasAddBiasAdd4DCE-Net/separable_conv2d_5/separable_conv2d:output:09DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ З
DCE-Net/separable_conv2d_5/ReluRelu+DCE-Net/separable_conv2d_5/BiasAdd:output:0*
T0*(
_output_shapes
:»ђ `
DCE-Net/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€‘
DCE-Net/concat_2ConcatV2+DCE-Net/separable_conv2d/Relu:activations:0-DCE-Net/separable_conv2d_5/Relu:activations:0DCE-Net/concat_2/axis:output:0*
N*
T0*(
_output_shapes
:»ђ@∆
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0К
1DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      И
5DCE-Net/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_2:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ч
+DCE-Net/separable_conv2d_6/separable_conv2dConv2D>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0—
"DCE-Net/separable_conv2d_6/BiasAddBiasAdd4DCE-Net/separable_conv2d_6/separable_conv2d:output:09DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:»ђЗ
DCE-Net/separable_conv2d_6/TanhTanh+DCE-Net/separable_conv2d_6/BiasAdd:output:0*
T0*(
_output_shapes
:»ђS
DCE-Net/SquareSquareinputs*
T0*(
_output_shapes
:»ђa
DCE-Net/subSubDCE-Net/Square:y:0inputs*
T0*(
_output_shapes
:»ђ{
DCE-Net/mulMul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/addAddV2inputsDCE-Net/mul:z:0*
T0*(
_output_shapes
:»ђ^
DCE-Net/Square_1SquareDCE-Net/add:z:0*
T0*(
_output_shapes
:»ђn
DCE-Net/sub_1SubDCE-Net/Square_1:y:0DCE-Net/add:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_1Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђm
DCE-Net/add_1AddV2DCE-Net/add:z:0DCE-Net/mul_1:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_2SquareDCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_2SubDCE-Net/Square_2:y:0DCE-Net/add_1:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_2Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_2AddV2DCE-Net/add_1:z:0DCE-Net/mul_2:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_3SquareDCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_3SubDCE-Net/Square_3:y:0DCE-Net/add_2:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_3Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_3AddV2DCE-Net/add_2:z:0DCE-Net/mul_3:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_4SquareDCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_4SubDCE-Net/Square_4:y:0DCE-Net/add_3:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_4Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_4AddV2DCE-Net/add_3:z:0DCE-Net/mul_4:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_5SquareDCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_5SubDCE-Net/Square_5:y:0DCE-Net/add_4:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_5Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_5AddV2DCE-Net/add_4:z:0DCE-Net/mul_5:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_6SquareDCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_6SubDCE-Net/Square_6:y:0DCE-Net/add_5:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_6Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_6AddV2DCE-Net/add_5:z:0DCE-Net/mul_6:z:0*
T0*(
_output_shapes
:»ђ`
DCE-Net/Square_7SquareDCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђp
DCE-Net/sub_7SubDCE-Net/Square_7:y:0DCE-Net/add_6:z:0*
T0*(
_output_shapes
:»ђ
DCE-Net/mul_7Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђo
DCE-Net/add_7AddV2DCE-Net/add_6:z:0DCE-Net/mul_7:z:0*
T0*(
_output_shapes
:»ђx
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€І
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ґ
SpatialConsistencyLoss/Mean_1MeanDCE-Net/add_7:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Њ
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
¬
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*&
_output_shapes
:2K*
ksize
*
paddingVALID*
strides
—
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
’
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
„
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
§
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*&
_output_shapes
:2Kx
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*&
_output_shapes
:2K®
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*&
_output_shapes
:2K|
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*&
_output_shapes
:2KЬ
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*&
_output_shapes
:2KЫ
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*&
_output_shapes
:2KЭ
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*&
_output_shapes
:2Ku
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             П
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≠
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ч
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: ≥
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :™
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :€
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: Љ
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: »
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Д
MeanMeanDCE-Net/add_7:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:»ђ*
	keep_dims(Р
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћ?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
:J
SquareSquaresub:z:0*
T0*&
_output_shapes
:^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ж
Mean_2MeanDCE-Net/add_7:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Я
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:A
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: S
Mean_3MeanSqueeze:output:0Const_1:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  †@P
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,     _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_7StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: n
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*%
valueB"                [
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : ƒ
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:p
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_8StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:«ђ*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:«ђP
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:«ђ`
Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_2:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            К
strided_slice_9StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: o
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*%
valueB"                \
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : »
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:q
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            О
strided_slice_10StridedSlice#DCE-Net/separable_conv2d_6/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:»Ђ*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:»ЂP
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:»Ђ`
Const_3Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_3:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  HDN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  А?]
gradient_tape/mul_6/MulMulones:output:0truediv_2:z:0*
T0*
_output_shapes
: b
gradient_tape/mul_6/Mul_1Mulones:output:0mul_6/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_2/MulMulones:output:0Mean_3:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_2/Mul_1Mulones:output:0mul_2/x:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_2/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ћ
-gradient_tape/truediv_2/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_2/Shape:output:0(gradient_tape/truediv_2/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€t
gradient_tape/truediv_2/RealDivRealDivgradient_tape/mul_6/Mul_1:z:0Cast:y:0*
T0*
_output_shapes
: Ь
gradient_tape/truediv_2/SumSum#gradient_tape/truediv_2/RealDiv:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv_2/ReshapeReshape$gradient_tape/truediv_2/Sum:output:0&gradient_tape/truediv_2/Shape:output:0*
T0*
_output_shapes
: N
gradient_tape/truediv_2/NegNeg	mul_5:z:0*
T0*
_output_shapes
: x
!gradient_tape/truediv_2/RealDiv_1RealDivgradient_tape/truediv_2/Neg:y:0Cast:y:0*
T0*
_output_shapes
: ~
!gradient_tape/truediv_2/RealDiv_2RealDiv%gradient_tape/truediv_2/RealDiv_1:z:0Cast:y:0*
T0*
_output_shapes
: Й
gradient_tape/truediv_2/mulMulgradient_tape/mul_6/Mul_1:z:0%gradient_tape/truediv_2/RealDiv_2:z:0*
T0*
_output_shapes
: Ъ
gradient_tape/truediv_2/Sum_1Sumgradient_tape/truediv_2/mul:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Я
!gradient_tape/truediv_2/Reshape_1Reshape&gradient_tape/truediv_2/Sum_1:output:0(gradient_tape/truediv_2/Shape_1:output:0*
T0*
_output_shapes
: |
gradient_tape/mul/MulMulones:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: ^
gradient_tape/mul/Mul_1Mulones:output:0mul/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_1/MulMulones:output:0Mean_1:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_1/Mul_1Mulones:output:0mul_1/x:output:0*
T0*
_output_shapes
: e
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:К
gradient_tape/ReshapeReshapegradient_tape/mul_2/Mul_1:z:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:]
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB:}
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
:Z
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   @В
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
:t
gradient_tape/mul_5/MulMul(gradient_tape/truediv_2/Reshape:output:0	add_2:z:0*
T0*
_output_shapes
: }
gradient_tape/mul_5/Mul_1Mul(gradient_tape/truediv_2/Reshape:output:0mul_5/x:output:0*
T0*
_output_shapes
: Б
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB Г
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ѓ
Ngradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€…
Cgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nanDivNoNangradient_tape/mul/Mul_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: В
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/SumSumGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: ь
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ReshapeReshapeEgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum:output:0Ggradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: Щ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/NegNeg3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: р
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1DivNoNan@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Neg:y:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: щ
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2DivNoNanIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: ћ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mulMulgradient_tape/mul/Mul_1:z:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: э
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1Sum@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mul:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: В
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape_1ReshapeGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Reshape_1Reshapegradient_tape/mul_1/Mul_1:z:0&gradient_tape/Reshape_1/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"            П
gradient_tape/Tile_1Tile gradient_tape/Reshape_1:output:0gradient_tape/Const_2:output:0*
T0*&
_output_shapes
:Z
gradient_tape/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  ЎCТ
gradient_tape/truediv_1RealDivgradient_tape/Tile_1:output:0gradient_tape/Const_3:output:0*
T0*&
_output_shapes
:l
gradient_tape/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            М
gradient_tape/Reshape_2Reshapegradient_tape/truediv:z:0gradient_tape/Shape:output:0*
T0*&
_output_shapes
:Г
@gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB Е
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ю
:gradient_tape/SpatialConsistencyLoss/weighted_loss/ReshapeReshapeIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape:output:0Kgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: {
8gradient_tape/SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB и
7gradient_tape/SpatialConsistencyLoss/weighted_loss/TileTileCgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape:output:0Agradient_tape/SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: t
gradient_tape/Const_4Const^gradient_tape/truediv_1*
_output_shapes
: *
dtype0*
valueB
 *   @r
gradient_tape/MulMulsub:z:0gradient_tape/Const_4:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_1Mulgradient_tape/truediv_1:z:0gradient_tape/Mul:z:0*
T0*&
_output_shapes
:
gradient_tape/SqrtGradSqrtGradSqrt:y:0 gradient_tape/Reshape_2:output:0*
T0*&
_output_shapes
:^
gradient_tape/truediv/ShapeConst*
_output_shapes
: *
dtype0*
valueB `
gradient_tape/truediv/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ∆
+gradient_tape/truediv/BroadcastGradientArgsBroadcastGradientArgs$gradient_tape/truediv/Shape:output:0&gradient_tape/truediv/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€t
gradient_tape/truediv/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: Ц
gradient_tape/truediv/SumSum!gradient_tape/truediv/RealDiv:z:00gradient_tape/truediv/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: У
gradient_tape/truediv/ReshapeReshape"gradient_tape/truediv/Sum:output:0$gradient_tape/truediv/Shape:output:0*
T0*
_output_shapes
: O
gradient_tape/truediv/NegNegSum:output:0*
T0*
_output_shapes
: v
gradient_tape/truediv/RealDiv_1RealDivgradient_tape/truediv/Neg:y:0
Cast_1:y:0*
T0*
_output_shapes
: |
gradient_tape/truediv/RealDiv_2RealDiv#gradient_tape/truediv/RealDiv_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: Е
gradient_tape/truediv/mulMulgradient_tape/mul_5/Mul_1:z:0#gradient_tape/truediv/RealDiv_2:z:0*
T0*
_output_shapes
: Ф
gradient_tape/truediv/Sum_1Sumgradient_tape/truediv/mul:z:00gradient_tape/truediv/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv/Reshape_1Reshape$gradient_tape/truediv/Sum_1:output:0&gradient_tape/truediv/Shape_1:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ћ
-gradient_tape/truediv_1/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_1/Shape:output:0(gradient_tape/truediv_1/Shape_1:output:0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€v
gradient_tape/truediv_1/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: Ь
gradient_tape/truediv_1/SumSum#gradient_tape/truediv_1/RealDiv:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: Щ
gradient_tape/truediv_1/ReshapeReshape$gradient_tape/truediv_1/Sum:output:0&gradient_tape/truediv_1/Shape:output:0*
T0*
_output_shapes
: S
gradient_tape/truediv_1/NegNegSum_1:output:0*
T0*
_output_shapes
: z
!gradient_tape/truediv_1/RealDiv_1RealDivgradient_tape/truediv_1/Neg:y:0
Cast_2:y:0*
T0*
_output_shapes
: А
!gradient_tape/truediv_1/RealDiv_2RealDiv%gradient_tape/truediv_1/RealDiv_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: Й
gradient_tape/truediv_1/mulMulgradient_tape/mul_5/Mul_1:z:0%gradient_tape/truediv_1/RealDiv_2:z:0*
T0*
_output_shapes
: Ъ
gradient_tape/truediv_1/Sum_1Sumgradient_tape/truediv_1/mul:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: Я
!gradient_tape/truediv_1/Reshape_1Reshape&gradient_tape/truediv_1/Sum_1:output:0(gradient_tape/truediv_1/Shape_1:output:0*
T0*
_output_shapes
: Е
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shapeConst*
_output_shapes
: *
dtype0*
valueB З
Dgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1Const*
_output_shapes
: *
dtype0*
valueB щ
<gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1Reshape@gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile:output:0Mgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB о
9gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1TileEgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1:output:0Cgradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            £
gradient_tape/Reshape_3Reshape&gradient_tape/truediv/Reshape:output:0&gradient_tape/Reshape_3/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_5Const*
_output_shapes
:*
dtype0*%
valueB"   «   ,     С
gradient_tape/Tile_2Tile gradient_tape/Reshape_3:output:0gradient_tape/Const_5:output:0*
T0*(
_output_shapes
:«ђv
gradient_tape/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            •
gradient_tape/Reshape_4Reshape(gradient_tape/truediv_1/Reshape:output:0&gradient_tape/Reshape_4/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_6Const*
_output_shapes
:*
dtype0*%
valueB"   »   +     С
gradient_tape/Tile_3Tile gradient_tape/Reshape_4:output:0gradient_tape/Const_6:output:0*
T0*(
_output_shapes
:»Ђ„
6gradient_tape/SpatialConsistencyLoss/weighted_loss/MulMulBgradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: v
gradient_tape/AvgPool2D/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     в
#gradient_tape/AvgPool2D/AvgPoolGradAvgPoolGrad&gradient_tape/AvgPool2D/Shape:output:0gradient_tape/Mul_1:z:0*
T0*(
_output_shapes
:»ђ*
ksize
*
paddingVALID*
strides
s
gradient_tape/Const_7Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @y
gradient_tape/Mul_2MulSquare_3:y:0gradient_tape/Const_7:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_3Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_2:z:0*
T0*&
_output_shapes
:q
gradient_tape/Const_8Const^gradient_tape/Tile_2*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_4Mul	sub_7:z:0gradient_tape/Const_8:output:0*
T0*(
_output_shapes
:«ђЕ
gradient_tape/Mul_5Mulgradient_tape/Tile_2:output:0gradient_tape/Mul_4:z:0*
T0*(
_output_shapes
:«ђq
gradient_tape/Const_9Const^gradient_tape/Tile_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_6Mul	sub_9:z:0gradient_tape/Const_9:output:0*
T0*(
_output_shapes
:»ЂЕ
gradient_tape/Mul_7Mulgradient_tape/Tile_3:output:0gradient_tape/Mul_6:z:0*
T0*(
_output_shapes
:»ЂЛ
2gradient_tape/SpatialConsistencyLoss/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            б
,gradient_tape/SpatialConsistencyLoss/ReshapeReshape:gradient_tape/SpatialConsistencyLoss/weighted_loss/Mul:z:0;gradient_tape/SpatialConsistencyLoss/Reshape/shape:output:0*
T0*&
_output_shapes
:Г
*gradient_tape/SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"   2   K      ќ
)gradient_tape/SpatialConsistencyLoss/TileTile5gradient_tape/SpatialConsistencyLoss/Reshape:output:03gradient_tape/SpatialConsistencyLoss/Const:output:0*
T0*&
_output_shapes
:2Kq
,gradient_tape/SpatialConsistencyLoss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 * »ѓF”
,gradient_tape/SpatialConsistencyLoss/truedivRealDiv2gradient_tape/SpatialConsistencyLoss/Tile:output:05gradient_tape/SpatialConsistencyLoss/Const_1:output:0*
T0*&
_output_shapes
:2Kp
gradient_tape/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Y
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :Й
gradient_tape/MaximumMaximum gradient_tape/Maximum/x:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
:q
gradient_tape/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Е
gradient_tape/floordivFloorDiv!gradient_tape/floordiv/x:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Ђ
gradient_tape/Reshape_5Reshape,gradient_tape/AvgPool2D/AvgPoolGrad:output:0&gradient_tape/Reshape_5/shape:output:0*
T0*(
_output_shapes
:»ђw
gradient_tape/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Tile_4Tile gradient_tape/Reshape_5:output:0'gradient_tape/Tile_4/multiples:output:0*
T0*(
_output_shapes
:»ђ[
gradient_tape/Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *  @@Х
gradient_tape/truediv_2RealDivgradient_tape/Tile_4:output:0gradient_tape/Const_10:output:0*
T0*(
_output_shapes
:»ђt
gradient_tape/Const_11Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @z
gradient_tape/Mul_8MulSquare_1:y:0gradient_tape/Const_11:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_9Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_8:z:0*
T0*&
_output_shapes
:t
gradient_tape/Const_12Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @{
gradient_tape/Mul_10MulSquare_2:y:0gradient_tape/Const_12:output:0*
T0*&
_output_shapes
:В
gradient_tape/Mul_11Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_10:z:0*
T0*&
_output_shapes
:q
gradient_tape/Const_13Const^gradient_tape/Mul_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_12Mul	sub_3:z:0gradient_tape/Const_13:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_13Mulgradient_tape/Mul_3:z:0gradient_tape/Mul_12:z:0*
T0*&
_output_shapes
:j
gradient_tape/sub_7/NegNeggradient_tape/Mul_5:z:0*
T0*(
_output_shapes
:«ђj
gradient_tape/sub_9/NegNeggradient_tape/Mul_7:z:0*
T0*(
_output_shapes
:»Ђq
gradient_tape/Const_14Const^gradient_tape/Mul_9*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_14Mul	sub_1:z:0gradient_tape/Const_14:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_15Mulgradient_tape/Mul_9:z:0gradient_tape/Mul_14:z:0*
T0*&
_output_shapes
:r
gradient_tape/Const_15Const^gradient_tape/Mul_11*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_16Mul	sub_2:z:0gradient_tape/Const_15:output:0*
T0*&
_output_shapes
:А
gradient_tape/Mul_17Mulgradient_tape/Mul_11:z:0gradient_tape/Mul_16:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_3/NegNeggradient_tape/Mul_13:z:0*
T0*&
_output_shapes
:|
#gradient_tape/strided_slice_7/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_7/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_7/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               Л
2gradient_tape/strided_slice_7/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_7/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            є
.gradient_tape/strided_slice_7/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_7/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_7/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_7/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_7/StridedSliceGrad/strides:output:0gradient_tape/Mul_5:z:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask|
#gradient_tape/strided_slice_8/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_8/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_8/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_8/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            Ґ
.gradient_tape/strided_slice_8/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_8/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_8/StridedSliceGrad/begin:output:0 strided_slice_8/stack_1:output:0?gradient_tape/strided_slice_8/StridedSliceGrad/strides:output:0gradient_tape/sub_7/Neg:y:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask|
#gradient_tape/strided_slice_9/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_9/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Н
4gradient_tape/strided_slice_9/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               Л
2gradient_tape/strided_slice_9/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                П
6gradient_tape/strided_slice_9/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            є
.gradient_tape/strided_slice_9/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_9/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_9/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_9/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_9/StridedSliceGrad/strides:output:0gradient_tape/Mul_7:z:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask}
$gradient_tape/strided_slice_10/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     О
5gradient_tape/strided_slice_10/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     О
5gradient_tape/strided_slice_10/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                Р
7gradient_tape/strided_slice_10/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            І
/gradient_tape/strided_slice_10/StridedSliceGradStridedSliceGrad>gradient_tape/strided_slice_10/StridedSliceGrad/shape:output:0>gradient_tape/strided_slice_10/StridedSliceGrad/begin:output:0!strided_slice_10/stack_1:output:0@gradient_tape/strided_slice_10/StridedSliceGrad/strides:output:0gradient_tape/sub_9/Neg:y:0*
Index0*
T0*(
_output_shapes
:»ђ*

begin_mask*
end_mask†
,gradient_tape/SpatialConsistencyLoss/Const_2Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @є
(gradient_tape/SpatialConsistencyLoss/MulMul SpatialConsistencyLoss/sub_3:z:05gradient_tape/SpatialConsistencyLoss/Const_2:output:0*
T0*&
_output_shapes
:2K¬
*gradient_tape/SpatialConsistencyLoss/Mul_1Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0,gradient_tape/SpatialConsistencyLoss/Mul:z:0*
T0*&
_output_shapes
:2Ki
gradient_tape/sub_1/NegNeggradient_tape/Mul_15:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_2/NegNeggradient_tape/Mul_17:z:0*
T0*&
_output_shapes
:†
,gradient_tape/SpatialConsistencyLoss/Const_3Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @ї
*gradient_tape/SpatialConsistencyLoss/Mul_2Mul SpatialConsistencyLoss/sub_2:z:05gradient_tape/SpatialConsistencyLoss/Const_3:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_3Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_2:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_3/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_1:z:0*
T0*&
_output_shapes
:2Kz
AddNAddNgradient_tape/Mul_15:z:0gradient_tape/Mul_17:z:0*
N*
T0*&
_output_shapes
:В
AddN_1AddNgradient_tape/sub_3/Neg:y:0gradient_tape/sub_1/Neg:y:0*
N*
T0*&
_output_shapes
:
AddN_2AddNgradient_tape/Mul_13:z:0gradient_tape/sub_2/Neg:y:0*
N*
T0*&
_output_shapes
:Ь
gradient_tape/concatConcatV2
AddN:sum:0AddN_1:sum:0AddN_2:sum:0split/split_dim:output:0*
N*
T0*&
_output_shapes
:†
,gradient_tape/SpatialConsistencyLoss/Const_4Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @є
*gradient_tape/SpatialConsistencyLoss/Mul_4MulSpatialConsistencyLoss/sub:z:05gradient_tape/SpatialConsistencyLoss/Const_4:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_5Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_4:z:0*
T0*&
_output_shapes
:2K†
,gradient_tape/SpatialConsistencyLoss/Const_5Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @ї
*gradient_tape/SpatialConsistencyLoss/Mul_6Mul SpatialConsistencyLoss/sub_1:z:05gradient_tape/SpatialConsistencyLoss/Const_5:output:0*
T0*&
_output_shapes
:2Kƒ
*gradient_tape/SpatialConsistencyLoss/Mul_7Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_6:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_2/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_3:z:0*
T0*&
_output_shapes
:2KЊ
+gradient_tape/SpatialConsistencyLoss/ShapeNShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
N*
T0* 
_output_shapes
::Ї
8gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInputConv2DBackpropInput4gradient_tape/SpatialConsistencyLoss/ShapeN:output:0&spatialconsistencyloss_conv2d_3_filter2gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
Ѕ
9gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilterConv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:04gradient_tape/SpatialConsistencyLoss/ShapeN:output:12gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
gradient_tape/Maximum_1/xConst*
_output_shapes
:*
dtype0*%
valueB"            [
gradient_tape/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :П
gradient_tape/Maximum_1Maximum"gradient_tape/Maximum_1/x:output:0"gradient_tape/Maximum_1/y:output:0*
T0*
_output_shapes
:s
gradient_tape/floordiv_1/xConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Л
gradient_tape/floordiv_1FloorDiv#gradient_tape/floordiv_1/x:output:0gradient_tape/Maximum_1:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            Ъ
gradient_tape/Reshape_6Reshapegradient_tape/concat:output:0&gradient_tape/Reshape_6/shape:output:0*
T0*&
_output_shapes
:w
gradient_tape/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Ъ
gradient_tape/Tile_5Tile gradient_tape/Reshape_6:output:0'gradient_tape/Tile_5/multiples:output:0*
T0*(
_output_shapes
:»ђ[
gradient_tape/Const_16Const*
_output_shapes
: *
dtype0*
valueB
 * `jGХ
gradient_tape/truediv_3RealDivgradient_tape/Tile_5:output:0gradient_tape/Const_16:output:0*
T0*(
_output_shapes
:»ђФ
,gradient_tape/SpatialConsistencyLoss/sub/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_5:z:0*
T0*&
_output_shapes
:2KЦ
.gradient_tape/SpatialConsistencyLoss/sub_1/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_7:z:0*
T0*&
_output_shapes
:2Kј
-gradient_tape/SpatialConsistencyLoss/ShapeN_1ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
N*
T0* 
_output_shapes
::Њ
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:0&spatialconsistencyloss_conv2d_2_filter2gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
≈
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_1Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:12gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
Њ
-gradient_tape/SpatialConsistencyLoss/ShapeN_2ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
N*
T0* 
_output_shapes
::Ї
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:0$spatialconsistencyloss_conv2d_filter0gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
√
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_2Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:10gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
ј
-gradient_tape/SpatialConsistencyLoss/ShapeN_3ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
N*
T0* 
_output_shapes
::Њ
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:0&spatialconsistencyloss_conv2d_1_filter2gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:2K*
paddingSAME*
strides
≈
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_3Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:12gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
Џ
AddN_3AddNAgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3:output:0*
N*
T0*&
_output_shapes
:2KП
6gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     Й
<gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGradAvgPoolGrad?gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/Shape:output:0AddN_3:sum:0*
T0*(
_output_shapes
:»ђ*
ksize
*
paddingVALID*
strides
Н
4gradient_tape/SpatialConsistencyLoss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     т
.gradient_tape/SpatialConsistencyLoss/Reshape_1ReshapeEgradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGrad:output:0=gradient_tape/SpatialConsistencyLoss/Reshape_1/shape:output:0*
T0*(
_output_shapes
:»ђО
5gradient_tape/SpatialConsistencyLoss/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            я
+gradient_tape/SpatialConsistencyLoss/Tile_1Tile7gradient_tape/SpatialConsistencyLoss/Reshape_1:output:0>gradient_tape/SpatialConsistencyLoss/Tile_1/multiples:output:0*
T0*(
_output_shapes
:»ђq
,gradient_tape/SpatialConsistencyLoss/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  @@ў
.gradient_tape/SpatialConsistencyLoss/truediv_1RealDiv4gradient_tape/SpatialConsistencyLoss/Tile_1:output:05gradient_tape/SpatialConsistencyLoss/Const_6:output:0*
T0*(
_output_shapes
:»ђЄ
AddN_4AddNgradient_tape/truediv_2:z:0gradient_tape/truediv_3:z:02gradient_tape/SpatialConsistencyLoss/truediv_1:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_7/MulMulAddN_4:sum:0DCE-Net/sub_7:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_7/Mul_1MulAddN_4:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_7/NegNeg%gradient_tape/DCE-Net/mul_7/Mul_1:z:0*
T0*(
_output_shapes
:»ђД
gradient_tape/DCE-Net/ConstConst"^gradient_tape/DCE-Net/mul_7/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @М
gradient_tape/DCE-Net/MulMulDCE-Net/add_6:z:0$gradient_tape/DCE-Net/Const:output:0*
T0*(
_output_shapes
:»ђЫ
gradient_tape/DCE-Net/Mul_1Mul%gradient_tape/DCE-Net/mul_7/Mul_1:z:0gradient_tape/DCE-Net/Mul:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_5AddNAddN_4:sum:0#gradient_tape/DCE-Net/sub_7/Neg:y:0gradient_tape/DCE-Net/Mul_1:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_6/MulMulAddN_5:sum:0DCE-Net/sub_6:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_6/Mul_1MulAddN_5:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_6/NegNeg%gradient_tape/DCE-Net/mul_6/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_1Const"^gradient_tape/DCE-Net/mul_6/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_2MulDCE-Net/add_5:z:0&gradient_tape/DCE-Net/Const_1:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_3Mul%gradient_tape/DCE-Net/mul_6/Mul_1:z:0gradient_tape/DCE-Net/Mul_2:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_6AddNAddN_5:sum:0#gradient_tape/DCE-Net/sub_6/Neg:y:0gradient_tape/DCE-Net/Mul_3:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_5/MulMulAddN_6:sum:0DCE-Net/sub_5:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_5/Mul_1MulAddN_6:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_5/NegNeg%gradient_tape/DCE-Net/mul_5/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_2Const"^gradient_tape/DCE-Net/mul_5/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_4MulDCE-Net/add_4:z:0&gradient_tape/DCE-Net/Const_2:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_5Mul%gradient_tape/DCE-Net/mul_5/Mul_1:z:0gradient_tape/DCE-Net/Mul_4:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_7AddNAddN_6:sum:0#gradient_tape/DCE-Net/sub_5/Neg:y:0gradient_tape/DCE-Net/Mul_5:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_4/MulMulAddN_7:sum:0DCE-Net/sub_4:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_4/Mul_1MulAddN_7:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_4/NegNeg%gradient_tape/DCE-Net/mul_4/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_3Const"^gradient_tape/DCE-Net/mul_4/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_6MulDCE-Net/add_3:z:0&gradient_tape/DCE-Net/Const_3:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_7Mul%gradient_tape/DCE-Net/mul_4/Mul_1:z:0gradient_tape/DCE-Net/Mul_6:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_8AddNAddN_7:sum:0#gradient_tape/DCE-Net/sub_4/Neg:y:0gradient_tape/DCE-Net/Mul_7:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_3/MulMulAddN_8:sum:0DCE-Net/sub_3:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_3/Mul_1MulAddN_8:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_3/NegNeg%gradient_tape/DCE-Net/mul_3/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_4Const"^gradient_tape/DCE-Net/mul_3/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @Р
gradient_tape/DCE-Net/Mul_8MulDCE-Net/add_2:z:0&gradient_tape/DCE-Net/Const_4:output:0*
T0*(
_output_shapes
:»ђЭ
gradient_tape/DCE-Net/Mul_9Mul%gradient_tape/DCE-Net/mul_3/Mul_1:z:0gradient_tape/DCE-Net/Mul_8:z:0*
T0*(
_output_shapes
:»ђЮ
AddN_9AddNAddN_8:sum:0#gradient_tape/DCE-Net/sub_3/Neg:y:0gradient_tape/DCE-Net/Mul_9:z:0*
N*
T0*(
_output_shapes
:»ђz
gradient_tape/DCE-Net/mul_2/MulMulAddN_9:sum:0DCE-Net/sub_2:z:0*
T0*(
_output_shapes
:»ђО
!gradient_tape/DCE-Net/mul_2/Mul_1MulAddN_9:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_2/NegNeg%gradient_tape/DCE-Net/mul_2/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_5Const"^gradient_tape/DCE-Net/mul_2/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @С
gradient_tape/DCE-Net/Mul_10MulDCE-Net/add_1:z:0&gradient_tape/DCE-Net/Const_5:output:0*
T0*(
_output_shapes
:»ђЯ
gradient_tape/DCE-Net/Mul_11Mul%gradient_tape/DCE-Net/mul_2/Mul_1:z:0 gradient_tape/DCE-Net/Mul_10:z:0*
T0*(
_output_shapes
:»ђ†
AddN_10AddNAddN_9:sum:0#gradient_tape/DCE-Net/sub_2/Neg:y:0 gradient_tape/DCE-Net/Mul_11:z:0*
N*
T0*(
_output_shapes
:»ђ{
gradient_tape/DCE-Net/mul_1/MulMulAddN_10:sum:0DCE-Net/sub_1:z:0*
T0*(
_output_shapes
:»ђП
!gradient_tape/DCE-Net/mul_1/Mul_1MulAddN_10:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђА
gradient_tape/DCE-Net/sub_1/NegNeg%gradient_tape/DCE-Net/mul_1/Mul_1:z:0*
T0*(
_output_shapes
:»ђЖ
gradient_tape/DCE-Net/Const_6Const"^gradient_tape/DCE-Net/mul_1/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @П
gradient_tape/DCE-Net/Mul_12MulDCE-Net/add:z:0&gradient_tape/DCE-Net/Const_6:output:0*
T0*(
_output_shapes
:»ђЯ
gradient_tape/DCE-Net/Mul_13Mul%gradient_tape/DCE-Net/mul_1/Mul_1:z:0 gradient_tape/DCE-Net/Mul_12:z:0*
T0*(
_output_shapes
:»ђ°
AddN_11AddNAddN_10:sum:0#gradient_tape/DCE-Net/sub_1/Neg:y:0 gradient_tape/DCE-Net/Mul_13:z:0*
N*
T0*(
_output_shapes
:»ђw
gradient_tape/DCE-Net/mul/MulMulAddN_11:sum:0DCE-Net/sub:z:0*
T0*(
_output_shapes
:»ђН
gradient_tape/DCE-Net/mul/Mul_1MulAddN_11:sum:0#DCE-Net/separable_conv2d_6/Tanh:y:0*
T0*(
_output_shapes
:»ђ÷
AddN_12AddN7gradient_tape/strided_slice_7/StridedSliceGrad:output:07gradient_tape/strided_slice_8/StridedSliceGrad:output:07gradient_tape/strided_slice_9/StridedSliceGrad:output:08gradient_tape/strided_slice_10/StridedSliceGrad:output:0#gradient_tape/DCE-Net/mul_7/Mul:z:0#gradient_tape/DCE-Net/mul_6/Mul:z:0#gradient_tape/DCE-Net/mul_5/Mul:z:0#gradient_tape/DCE-Net/mul_4/Mul:z:0#gradient_tape/DCE-Net/mul_3/Mul:z:0#gradient_tape/DCE-Net/mul_2/Mul:z:0#gradient_tape/DCE-Net/mul_1/Mul:z:0!gradient_tape/DCE-Net/mul/Mul:z:0*
N*
T0*(
_output_shapes
:»ђ§
1gradient_tape/DCE-Net/separable_conv2d_6/TanhGradTanhGrad#DCE-Net/separable_conv2d_6/Tanh:y:0AddN_12:sum:0*
T0*(
_output_shapes
:»ђІ
<gradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*
_output_shapes
:Д
@gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::И
Mgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:05gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
В
Ngradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeN:output:15gradient_tape/DCE-Net/separable_conv2d_6/TanhGrad:z:0*
T0*&
_output_shapes
:@*
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ь
]gradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat_2:output:0Jgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
\
gradient_tape/DCE-Net/RankConst*
_output_shapes
: *
dtype0*
value	B :Л
gradient_tape/DCE-Net/modFloorModDCE-Net/concat_2/axis:output:0#gradient_tape/DCE-Net/Rank:output:0*
T0*
_output_shapes
: t
gradient_tape/DCE-Net/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,       
"gradient_tape/DCE-Net/ConcatOffsetConcatOffsetgradient_tape/DCE-Net/mod:z:0$gradient_tape/DCE-Net/Shape:output:0&gradient_tape/DCE-Net/Shape_1:output:0*
N* 
_output_shapes
::Ю
gradient_tape/DCE-Net/SliceSliceegradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0+gradient_tape/DCE-Net/ConcatOffset:offset:0$gradient_tape/DCE-Net/Shape:output:0*
Index0*
T0*(
_output_shapes
:»ђ Ґ
gradient_tape/DCE-Net/Slice_1Sliceegradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0+gradient_tape/DCE-Net/ConcatOffset:offset:1&gradient_tape/DCE-Net/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_5/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_1:output:0-DCE-Net/separable_conv2d_5/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_5/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ь
]gradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat_1:output:0Jgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
^
gradient_tape/DCE-Net/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :П
gradient_tape/DCE-Net/mod_1FloorModDCE-Net/concat_1/axis:output:0%gradient_tape/DCE-Net/Rank_1:output:0*
T0*
_output_shapes
: v
gradient_tape/DCE-Net/Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      –
$gradient_tape/DCE-Net/ConcatOffset_1ConcatOffsetgradient_tape/DCE-Net/mod_1:z:0&gradient_tape/DCE-Net/Shape_2:output:0&gradient_tape/DCE-Net/Shape_3:output:0*
N* 
_output_shapes
::§
gradient_tape/DCE-Net/Slice_2Sliceegradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_1:offset:0&gradient_tape/DCE-Net/Shape_2:output:0*
Index0*
T0*(
_output_shapes
:»ђ §
gradient_tape/DCE-Net/Slice_3Sliceegradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_1:offset:1&gradient_tape/DCE-Net/Shape_3:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_4/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_3:output:0-DCE-Net/separable_conv2d_4/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ@*
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_4/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,  @   √
\gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ@*
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"      @      Ъ
]gradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterDCE-Net/concat:output:0Jgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
^
gradient_tape/DCE-Net/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :Н
gradient_tape/DCE-Net/mod_2FloorModDCE-Net/concat/axis:output:0%gradient_tape/DCE-Net/Rank_2:output:0*
T0*
_output_shapes
: v
gradient_tape/DCE-Net/Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      v
gradient_tape/DCE-Net/Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   »   ,      –
$gradient_tape/DCE-Net/ConcatOffset_2ConcatOffsetgradient_tape/DCE-Net/mod_2:z:0&gradient_tape/DCE-Net/Shape_4:output:0&gradient_tape/DCE-Net/Shape_5:output:0*
N* 
_output_shapes
::§
gradient_tape/DCE-Net/Slice_4Sliceegradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_2:offset:0&gradient_tape/DCE-Net/Shape_4:output:0*
Index0*
T0*(
_output_shapes
:»ђ §
gradient_tape/DCE-Net/Slice_5Sliceegradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0-gradient_tape/DCE-Net/ConcatOffset_2:offset:1&gradient_tape/DCE-Net/Shape_5:output:0*
Index0*
T0*(
_output_shapes
:»ђ «
1gradient_tape/DCE-Net/separable_conv2d_3/ReluGradReluGrad&gradient_tape/DCE-Net/Slice_5:output:0-DCE-Net/separable_conv2d_3/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_3/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             ∞
]gradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter-DCE-Net/separable_conv2d_2/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Џ
AddN_13AddN&gradient_tape/DCE-Net/Slice_4:output:0egradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ Ѓ
1gradient_tape/DCE-Net/separable_conv2d_2/ReluGradReluGradAddN_13:sum:0-DCE-Net/separable_conv2d_2/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_2/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             ∞
]gradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter-DCE-Net/separable_conv2d_1/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Џ
AddN_14AddN&gradient_tape/DCE-Net/Slice_2:output:0egradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ Ѓ
1gradient_tape/DCE-Net/separable_conv2d_1/ReluGradReluGradAddN_14:sum:0-DCE-Net/separable_conv2d_1/Relu:activations:0*
T0*(
_output_shapes
:»ђ ѓ
<gradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGradBiasAddGrad=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*
_output_shapes
: Д
@gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeNShapeN>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::Р
Mgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputIgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeN:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ *
paddingVALID*
strides
К
Ngradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0Igradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeN:output:1=gradient_tape/DCE-Net/separable_conv2d_1/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingVALID*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,      √
\gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputHgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape:output:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0Vgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ *
paddingSAME*
strides
Ъ
Agradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"             Ѓ
]gradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilter+DCE-Net/separable_conv2d/Relu:activations:0Jgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Shape_1:output:0Vgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
Ў
AddN_15AddN$gradient_tape/DCE-Net/Slice:output:0egradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropInput:output:0*
N*
T0*(
_output_shapes
:»ђ ™
/gradient_tape/DCE-Net/separable_conv2d/ReluGradReluGradAddN_15:sum:0+DCE-Net/separable_conv2d/Relu:activations:0*
T0*(
_output_shapes
:»ђ Ђ
:gradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGradBiasAddGrad;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*
_output_shapes
: ю
>gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeNShapeN<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
N*
T0* 
_output_shapes
::И
Kgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInputConv2DBackpropInputGgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeN:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*(
_output_shapes
:»ђ*
paddingVALID*
strides
В
Lgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilterConv2DBackpropFilter<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0Ggradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeN:output:1;gradient_tape/DCE-Net/separable_conv2d/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingVALID*
strides
Ц
=gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   »   ,     ї
Zgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropInput"DepthwiseConv2dNativeBackpropInputFgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape:output:0@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0Tgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInput:output:0*
T0*(
_output_shapes
:»ђ*
paddingSAME*
strides
Ш
?gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"            Г
[gradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter#DepthwiseConv2dNativeBackpropFilterinputsHgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Shape_1:output:0Tgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropInput:output:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0К
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0	*
value	B	 RТ
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:GPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0О
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0О
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Й
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Л

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?Г
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?Е

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: Е
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: И
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?С

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?С

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*
_output_shapes
: ≤
Adam/Identity_3Identitydgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:£
Adam/Identity_4IdentityUgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: Е
Adam/Identity_5IdentityCgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: і
Adam/Identity_6Identityfgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: •
Adam/Identity_7IdentityWgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  З
Adam/Identity_8IdentityEgradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: і
Adam/Identity_9Identityfgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: ¶
Adam/Identity_10IdentityWgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  И
Adam/Identity_11IdentityEgradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_12Identityfgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
: ¶
Adam/Identity_13IdentityWgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  И
Adam/Identity_14IdentityEgradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_15Identityfgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_16IdentityWgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ И
Adam/Identity_17IdentityEgradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_18Identityfgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_19IdentityWgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ И
Adam/Identity_20IdentityEgradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: µ
Adam/Identity_21Identityfgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0*
T0*&
_output_shapes
:@¶
Adam/Identity_22IdentityWgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@И
Adam/Identity_23IdentityEgradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:∆"
Adam/IdentityN	IdentityNdgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Ugradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0Cgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0dgradient_tape/DCE-Net/separable_conv2d/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Ugradient_tape/DCE-Net/separable_conv2d/separable_conv2d/Conv2DBackpropFilter:output:0Cgradient_tape/DCE-Net/separable_conv2d/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_1/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_1/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_2/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_2/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_3/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_3/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_4/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_4/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_5/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_5/BiasAdd/BiasAddGrad:output:0fgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/DepthwiseConv2dNativeBackpropFilter:output:0Wgradient_tape/DCE-Net/separable_conv2d_6/separable_conv2d/Conv2DBackpropFilter:output:0Egradient_tape/DCE-Net/separable_conv2d_6/BiasAdd/BiasAddGrad:output:0*3
T.
,2**+
_gradient_op_typeCustomGradient-11614*в
_output_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:ѕ
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:09^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(Ї
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam8dce_net_separable_conv2d_biasadd_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:20^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(б
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ј
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_1_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:52^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(б
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ј
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_2_biasadd_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:82^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(џ
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_3_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:112^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_4_biasadd_readvariableop_resource'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:142^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:15;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:16=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_5_biasadd_readvariableop_resource'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:172^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(я
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdamCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:18;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource*
_output_shapes
 *
use_locking(е
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdamEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:19=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:GPU:0*
T0*X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource*
_output_shapes
 *
use_locking(ƒ
%Adam/Adam/update_20/ResourceApplyAdamResourceApplyAdam:dce_net_separable_conv2d_6_biasadd_readvariableop_resource'adam_adam_update_20_resourceapplyadam_m'adam_adam_update_20_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:202^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*
T0*M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Ь
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:GPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R•
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: „
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam&^Adam/Adam/update_20/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp0^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp9^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*ч
_input_shapesе
в:»ђ: : : : : : : : : : : : : : : : : : : : : ::::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2N
%Adam/Adam/update_18/ResourceApplyAdam%Adam/Adam/update_18/ResourceApplyAdam2N
%Adam/Adam/update_19/ResourceApplyAdam%Adam/Adam/update_19/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2N
%Adam/Adam/update_20/ResourceApplyAdam%Adam/Adam/update_20/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2b
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp2t
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp2x
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:P L
(
_output_shapes
:»ђ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::ZV
T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource:ZV
T
_classJ
HFloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp/resource:\ X
V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource:\!X
V
_classL
JHloc:@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1/resource:Q"M
K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource:Q#M
K
_classA
?=loc:@DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/resource:\$X
V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource:\%X
V
_classL
JHloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp/resource:^&Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource:^'Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1/resource:S(O
M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource:S)O
M
_classC
A?loc:@DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp/resource:\*X
V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource:\+X
V
_classL
JHloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp/resource:^,Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource:^-Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1/resource:S.O
M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource:S/O
M
_classC
A?loc:@DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp/resource:\0X
V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource:\1X
V
_classL
JHloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp/resource:^2Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource:^3Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1/resource:S4O
M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource:S5O
M
_classC
A?loc:@DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp/resource:\6X
V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource:\7X
V
_classL
JHloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp/resource:^8Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource:^9Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1/resource:S:O
M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource:S;O
M
_classC
A?loc:@DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp/resource:\<X
V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource:\=X
V
_classL
JHloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp/resource:^>Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource:^?Z
X
_classN
LJloc:@DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1/resource:S@O
M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource:SAO
M
_classC
A?loc:@DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp/resource:\BX
V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource:\CX
V
_classL
JHloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp/resource:^DZ
X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource:^EZ
X
_classN
LJloc:@DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1/resource:SFO
M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource:SGO
M
_classC
A?loc:@DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp/resource
Ј
 
0__inference_separable_conv2d_layer_call_fn_46549

inputs!
unknown:#
	unknown_0: 
	unknown_1: 
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45843y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
ї
ћ
2__inference_separable_conv2d_3_layer_call_fn_46711

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45912y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46727

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45912

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45889

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
еR
Х
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46294
input_10
separable_conv2d_46205:0
separable_conv2d_46207: $
separable_conv2d_46209: 2
separable_conv2d_1_46212: 2
separable_conv2d_1_46214:  &
separable_conv2d_1_46216: 2
separable_conv2d_2_46219: 2
separable_conv2d_2_46221:  &
separable_conv2d_2_46223: 2
separable_conv2d_3_46226: 2
separable_conv2d_3_46228:  &
separable_conv2d_3_46230: 2
separable_conv2d_4_46235:@2
separable_conv2d_4_46237:@ &
separable_conv2d_4_46239: 2
separable_conv2d_5_46244:@2
separable_conv2d_5_46246:@ &
separable_conv2d_5_46248: 2
separable_conv2d_6_46253:@2
separable_conv2d_6_46255:@&
separable_conv2d_6_46257:
identity

identity_1ИҐ(separable_conv2d/StatefulPartitionedCallҐ*separable_conv2d_1/StatefulPartitionedCallҐ*separable_conv2d_2/StatefulPartitionedCallҐ*separable_conv2d_3/StatefulPartitionedCallҐ*separable_conv2d_4/StatefulPartitionedCallҐ*separable_conv2d_5/StatefulPartitionedCallҐ*separable_conv2d_6/StatefulPartitionedCallµ
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1separable_conv2d_46205separable_conv2d_46207separable_conv2d_46209*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45843й
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0separable_conv2d_1_46212separable_conv2d_1_46214separable_conv2d_1_46216*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45866л
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0separable_conv2d_2_46219separable_conv2d_2_46221separable_conv2d_2_46223*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45889л
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0separable_conv2d_3_46226separable_conv2d_3_46228separable_conv2d_3_46230*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45912V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€„
concatConcatV23separable_conv2d_2/StatefulPartitionedCall:output:03separable_conv2d_3/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@«
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0separable_conv2d_4_46235separable_conv2d_4_46237separable_conv2d_4_46239*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45937X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€џ
concat_1ConcatV23separable_conv2d_1/StatefulPartitionedCall:output:03separable_conv2d_4/StatefulPartitionedCall:output:0concat_1/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@…
*separable_conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconcat_1:output:0separable_conv2d_5_46244separable_conv2d_5_46246separable_conv2d_5_46248*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45962X
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ў
concat_2ConcatV21separable_conv2d/StatefulPartitionedCall:output:03separable_conv2d_5/StatefulPartitionedCall:output:0concat_2/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@…
*separable_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconcat_2:output:0separable_conv2d_6_46253separable_conv2d_6_46255separable_conv2d_6_46257*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45987U
SquareSquareinput_1*
T0*1
_output_shapes
:€€€€€€€€€»ђ[
subSub
Square:y:0input_1*
T0*1
_output_shapes
:€€€€€€€€€»ђД
mulMul3separable_conv2d_6/StatefulPartitionedCall:output:0sub:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђZ
addAddV2input_1mul:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_1Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_2Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_3Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_4Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_5Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_6Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_7Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђО

Identity_1Identity3separable_conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ€
NoOpNoOp)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall+^separable_conv2d_5/StatefulPartitionedCall+^separable_conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall2X
*separable_conv2d_5/StatefulPartitionedCall*separable_conv2d_5/StatefulPartitionedCall2X
*separable_conv2d_6/StatefulPartitionedCall*separable_conv2d_6/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€»ђ
!
_user_specified_name	input_1
О¬
Џ
 __inference__wrapped_model_45618
input_1[
Adce_net_separable_conv2d_separable_conv2d_readvariableop_resource:]
Cdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource: F
8dce_net_separable_conv2d_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_1_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_2_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource: _
Edce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource:  H
:dce_net_separable_conv2d_3_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_4_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource:@ H
:dce_net_separable_conv2d_5_biasadd_readvariableop_resource: ]
Cdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource:@_
Edce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource:@H
:dce_net_separable_conv2d_6_biasadd_readvariableop_resource:
identity

identity_1ИҐ/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpҐ8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpҐ:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1Ґ1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpҐ:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpҐ<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1¬
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOpReadVariableOpAdce_net_separable_conv2d_separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0∆
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1ReadVariableOpCdce_net_separable_conv2d_separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0И
/DCE-Net/separable_conv2d/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            И
7DCE-Net/separable_conv2d/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ы
3DCE-Net/separable_conv2d/separable_conv2d/depthwiseDepthwiseConv2dNativeinput_1@DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingSAME*
strides
Ъ
)DCE-Net/separable_conv2d/separable_conv2dConv2D<DCE-Net/separable_conv2d/separable_conv2d/depthwise:output:0BDCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
§
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOpReadVariableOp8dce_net_separable_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0‘
 DCE-Net/separable_conv2d/BiasAddBiasAdd2DCE-Net/separable_conv2d/separable_conv2d:output:07DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ М
DCE-Net/separable_conv2d/ReluRelu)DCE-Net/separable_conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ∆
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_1_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_1_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_1/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_1/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      £
5DCE-Net/separable_conv2d_1/separable_conv2d/depthwiseDepthwiseConv2dNative+DCE-Net/separable_conv2d/Relu:activations:0BDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_1/separable_conv2dConv2D>DCE-Net/separable_conv2d_1/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Џ
"DCE-Net/separable_conv2d_1/BiasAddBiasAdd4DCE-Net/separable_conv2d_1/separable_conv2d:output:09DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Р
DCE-Net/separable_conv2d_1/ReluRelu+DCE-Net/separable_conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ∆
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_2_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_2_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_2/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_2/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      •
5DCE-Net/separable_conv2d_2/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_1/Relu:activations:0BDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_2/separable_conv2dConv2D>DCE-Net/separable_conv2d_2/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Џ
"DCE-Net/separable_conv2d_2/BiasAddBiasAdd4DCE-Net/separable_conv2d_2/separable_conv2d:output:09DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Р
DCE-Net/separable_conv2d_2/ReluRelu+DCE-Net/separable_conv2d_2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ∆
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_3_separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0 
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_3_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0К
1DCE-Net/separable_conv2d_3/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             К
9DCE-Net/separable_conv2d_3/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      •
5DCE-Net/separable_conv2d_3/separable_conv2d/depthwiseDepthwiseConv2dNative-DCE-Net/separable_conv2d_2/Relu:activations:0BDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_3/separable_conv2dConv2D>DCE-Net/separable_conv2d_3/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Џ
"DCE-Net/separable_conv2d_3/BiasAddBiasAdd4DCE-Net/separable_conv2d_3/separable_conv2d:output:09DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Р
DCE-Net/separable_conv2d_3/ReluRelu+DCE-Net/separable_conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ ^
DCE-Net/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€џ
DCE-Net/concatConcatV2-DCE-Net/separable_conv2d_2/Relu:activations:0-DCE-Net/separable_conv2d_3/Relu:activations:0DCE-Net/concat/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@∆
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_4_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_4_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_4/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_4/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      П
5DCE-Net/separable_conv2d_4/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat:output:0BDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_4/separable_conv2dConv2D>DCE-Net/separable_conv2d_4/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Џ
"DCE-Net/separable_conv2d_4/BiasAddBiasAdd4DCE-Net/separable_conv2d_4/separable_conv2d:output:09DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Р
DCE-Net/separable_conv2d_4/ReluRelu+DCE-Net/separable_conv2d_4/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
DCE-Net/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€я
DCE-Net/concat_1ConcatV2-DCE-Net/separable_conv2d_1/Relu:activations:0-DCE-Net/separable_conv2d_4/Relu:activations:0DCE-Net/concat_1/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@∆
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_5_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_5_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0К
1DCE-Net/separable_conv2d_5/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_5/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      С
5DCE-Net/separable_conv2d_5/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_1:output:0BDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_5/separable_conv2dConv2D>DCE-Net/separable_conv2d_5/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Џ
"DCE-Net/separable_conv2d_5/BiasAddBiasAdd4DCE-Net/separable_conv2d_5/separable_conv2d:output:09DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Р
DCE-Net/separable_conv2d_5/ReluRelu+DCE-Net/separable_conv2d_5/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
DCE-Net/concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Ё
DCE-Net/concat_2ConcatV2+DCE-Net/separable_conv2d/Relu:activations:0-DCE-Net/separable_conv2d_5/Relu:activations:0DCE-Net/concat_2/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@∆
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOpReadVariableOpCdce_net_separable_conv2d_6_separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0 
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1ReadVariableOpEdce_net_separable_conv2d_6_separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0К
1DCE-Net/separable_conv2d_6/separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      К
9DCE-Net/separable_conv2d_6/separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      С
5DCE-Net/separable_conv2d_6/separable_conv2d/depthwiseDepthwiseConv2dNativeDCE-Net/concat_2:output:0BDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
†
+DCE-Net/separable_conv2d_6/separable_conv2dConv2D>DCE-Net/separable_conv2d_6/separable_conv2d/depthwise:output:0DDCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingVALID*
strides
®
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOpReadVariableOp:dce_net_separable_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
"DCE-Net/separable_conv2d_6/BiasAddBiasAdd4DCE-Net/separable_conv2d_6/separable_conv2d:output:09DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђР
DCE-Net/separable_conv2d_6/TanhTanh+DCE-Net/separable_conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ]
DCE-Net/SquareSquareinput_1*
T0*1
_output_shapes
:€€€€€€€€€»ђk
DCE-Net/subSubDCE-Net/Square:y:0input_1*
T0*1
_output_shapes
:€€€€€€€€€»ђД
DCE-Net/mulMul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђj
DCE-Net/addAddV2input_1DCE-Net/mul:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђg
DCE-Net/Square_1SquareDCE-Net/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђw
DCE-Net/sub_1SubDCE-Net/Square_1:y:0DCE-Net/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_1Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђv
DCE-Net/add_1AddV2DCE-Net/add:z:0DCE-Net/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_2SquareDCE-Net/add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_2SubDCE-Net/Square_2:y:0DCE-Net/add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_2Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_2AddV2DCE-Net/add_1:z:0DCE-Net/mul_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_3SquareDCE-Net/add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_3SubDCE-Net/Square_3:y:0DCE-Net/add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_3Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_3AddV2DCE-Net/add_2:z:0DCE-Net/mul_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_4SquareDCE-Net/add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_4SubDCE-Net/Square_4:y:0DCE-Net/add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_4Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_4AddV2DCE-Net/add_3:z:0DCE-Net/mul_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_5SquareDCE-Net/add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_5SubDCE-Net/Square_5:y:0DCE-Net/add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_5Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_5AddV2DCE-Net/add_4:z:0DCE-Net/mul_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_6SquareDCE-Net/add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_6SubDCE-Net/Square_6:y:0DCE-Net/add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_6Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_6AddV2DCE-Net/add_5:z:0DCE-Net/mul_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђi
DCE-Net/Square_7SquareDCE-Net/add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђy
DCE-Net/sub_7SubDCE-Net/Square_7:y:0DCE-Net/add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
DCE-Net/mul_7Mul#DCE-Net/separable_conv2d_6/Tanh:y:0DCE-Net/sub_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђx
DCE-Net/add_7AddV2DCE-Net/add_6:z:0DCE-Net/mul_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђj
IdentityIdentityDCE-Net/add_7:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ~

Identity_1Identity#DCE-Net/separable_conv2d_6/Tanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђР

NoOpNoOp0^DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp9^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp;^DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12^DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp;^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp=^DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 2b
/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp/DCE-Net/separable_conv2d/BiasAdd/ReadVariableOp2t
8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp8DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp2x
:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_1:DCE-Net/separable_conv2d/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_1/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_1/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_2/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_2/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_3/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_3/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_4/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_4/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_5/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_5/separable_conv2d/ReadVariableOp_12f
1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp1DCE-Net/separable_conv2d_6/BiasAdd/ReadVariableOp2x
:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp:DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp2|
<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1<DCE-Net/separable_conv2d_6/separable_conv2d/ReadVariableOp_1:Z V
1
_output_shapes
:€€€€€€€€€»ђ
!
_user_specified_name	input_1
Ђ
Д
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46673

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45667

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
±
Д
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46905

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђZ
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
IdentityIdentityTanh:y:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ•
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46851

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
°
Д
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45812

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45937

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46835

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
ь
ћ
2__inference_separable_conv2d_6_layer_call_fn_46862

inputs!
unknown:@#
	unknown_0:@
	unknown_1:
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45812Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
з
≠
'__inference_DCE-Net_layer_call_fn_46400

inputs!
unknown:#
	unknown_0: 
	unknown_1: #
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: #
	unknown_6:  
	unknown_7: #
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:@$

unknown_12:@ 

unknown_13: $

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17:@$

unknown_18:@

unknown_19:
identity

identity_1ИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€»ђ:€€€€€€€€€»ђ*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46029y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
ь
ћ
2__inference_separable_conv2d_3_layer_call_fn_46700

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45725Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45962

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
©
В
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46565

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
яR
Ф
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46029

inputs0
separable_conv2d_45844:0
separable_conv2d_45846: $
separable_conv2d_45848: 2
separable_conv2d_1_45867: 2
separable_conv2d_1_45869:  &
separable_conv2d_1_45871: 2
separable_conv2d_2_45890: 2
separable_conv2d_2_45892:  &
separable_conv2d_2_45894: 2
separable_conv2d_3_45913: 2
separable_conv2d_3_45915:  &
separable_conv2d_3_45917: 2
separable_conv2d_4_45938:@2
separable_conv2d_4_45940:@ &
separable_conv2d_4_45942: 2
separable_conv2d_5_45963:@2
separable_conv2d_5_45965:@ &
separable_conv2d_5_45967: 2
separable_conv2d_6_45988:@2
separable_conv2d_6_45990:@&
separable_conv2d_6_45992:
identity

identity_1ИҐ(separable_conv2d/StatefulPartitionedCallҐ*separable_conv2d_1/StatefulPartitionedCallҐ*separable_conv2d_2/StatefulPartitionedCallҐ*separable_conv2d_3/StatefulPartitionedCallҐ*separable_conv2d_4/StatefulPartitionedCallҐ*separable_conv2d_5/StatefulPartitionedCallҐ*separable_conv2d_6/StatefulPartitionedCallі
(separable_conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsseparable_conv2d_45844separable_conv2d_45846separable_conv2d_45848*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45843й
*separable_conv2d_1/StatefulPartitionedCallStatefulPartitionedCall1separable_conv2d/StatefulPartitionedCall:output:0separable_conv2d_1_45867separable_conv2d_1_45869separable_conv2d_1_45871*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45866л
*separable_conv2d_2/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_1/StatefulPartitionedCall:output:0separable_conv2d_2_45890separable_conv2d_2_45892separable_conv2d_2_45894*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_45889л
*separable_conv2d_3/StatefulPartitionedCallStatefulPartitionedCall3separable_conv2d_2/StatefulPartitionedCall:output:0separable_conv2d_3_45913separable_conv2d_3_45915separable_conv2d_3_45917*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_45912V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€„
concatConcatV23separable_conv2d_2/StatefulPartitionedCall:output:03separable_conv2d_3/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@«
*separable_conv2d_4/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0separable_conv2d_4_45938separable_conv2d_4_45940separable_conv2d_4_45942*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45937X
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€џ
concat_1ConcatV23separable_conv2d_1/StatefulPartitionedCall:output:03separable_conv2d_4/StatefulPartitionedCall:output:0concat_1/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@…
*separable_conv2d_5/StatefulPartitionedCallStatefulPartitionedCallconcat_1:output:0separable_conv2d_5_45963separable_conv2d_5_45965separable_conv2d_5_45967*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45962X
concat_2/axisConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ў
concat_2ConcatV21separable_conv2d/StatefulPartitionedCall:output:03separable_conv2d_5/StatefulPartitionedCall:output:0concat_2/axis:output:0*
N*
T0*1
_output_shapes
:€€€€€€€€€»ђ@…
*separable_conv2d_6/StatefulPartitionedCallStatefulPartitionedCallconcat_2:output:0separable_conv2d_6_45988separable_conv2d_6_45990separable_conv2d_6_45992*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45987T
SquareSquareinputs*
T0*1
_output_shapes
:€€€€€€€€€»ђZ
subSub
Square:y:0inputs*
T0*1
_output_shapes
:€€€€€€€€€»ђД
mulMul3separable_conv2d_6/StatefulPartitionedCall:output:0sub:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
addAddV2inputsmul:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђW
Square_1Squareadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_1Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_2Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_3Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_4Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_5Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_6Square	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_6SubSquare_6:y:0	add_5:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_6Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_6AddV2	add_5:z:0	mul_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђY
Square_7Square	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђa
sub_7SubSquare_7:y:0	add_6:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђИ
mul_7Mul3separable_conv2d_6/StatefulPartitionedCall:output:0	sub_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
add_7AddV2	add_6:z:0	mul_7:z:0*
T0*1
_output_shapes
:€€€€€€€€€»ђb
IdentityIdentity	add_7:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђО

Identity_1Identity3separable_conv2d_6/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ€
NoOpNoOp)^separable_conv2d/StatefulPartitionedCall+^separable_conv2d_1/StatefulPartitionedCall+^separable_conv2d_2/StatefulPartitionedCall+^separable_conv2d_3/StatefulPartitionedCall+^separable_conv2d_4/StatefulPartitionedCall+^separable_conv2d_5/StatefulPartitionedCall+^separable_conv2d_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 2T
(separable_conv2d/StatefulPartitionedCall(separable_conv2d/StatefulPartitionedCall2X
*separable_conv2d_1/StatefulPartitionedCall*separable_conv2d_1/StatefulPartitionedCall2X
*separable_conv2d_2/StatefulPartitionedCall*separable_conv2d_2/StatefulPartitionedCall2X
*separable_conv2d_3/StatefulPartitionedCall*separable_conv2d_3/StatefulPartitionedCall2X
*separable_conv2d_4/StatefulPartitionedCall*separable_conv2d_4/StatefulPartitionedCall2X
*separable_conv2d_5/StatefulPartitionedCall*separable_conv2d_5/StatefulPartitionedCall2X
*separable_conv2d_6/StatefulPartitionedCall*separable_conv2d_6/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ
 
_user_specified_nameinputs
™°
м4
!__inference__traced_restore_47611
file_prefixL
2assignvariableop_separable_conv2d_depthwise_kernel:N
4assignvariableop_1_separable_conv2d_pointwise_kernel: 6
(assignvariableop_2_separable_conv2d_bias: P
6assignvariableop_3_separable_conv2d_1_depthwise_kernel: P
6assignvariableop_4_separable_conv2d_1_pointwise_kernel:  8
*assignvariableop_5_separable_conv2d_1_bias: P
6assignvariableop_6_separable_conv2d_2_depthwise_kernel: P
6assignvariableop_7_separable_conv2d_2_pointwise_kernel:  8
*assignvariableop_8_separable_conv2d_2_bias: P
6assignvariableop_9_separable_conv2d_3_depthwise_kernel: Q
7assignvariableop_10_separable_conv2d_3_pointwise_kernel:  9
+assignvariableop_11_separable_conv2d_3_bias: Q
7assignvariableop_12_separable_conv2d_4_depthwise_kernel:@Q
7assignvariableop_13_separable_conv2d_4_pointwise_kernel:@ 9
+assignvariableop_14_separable_conv2d_4_bias: Q
7assignvariableop_15_separable_conv2d_5_depthwise_kernel:@Q
7assignvariableop_16_separable_conv2d_5_pointwise_kernel:@ 9
+assignvariableop_17_separable_conv2d_5_bias: Q
7assignvariableop_18_separable_conv2d_6_depthwise_kernel:@Q
7assignvariableop_19_separable_conv2d_6_pointwise_kernel:@9
+assignvariableop_20_separable_conv2d_6_bias:'
assignvariableop_21_adam_iter:	 )
assignvariableop_22_adam_beta_1: )
assignvariableop_23_adam_beta_2: (
assignvariableop_24_adam_decay: 0
&assignvariableop_25_adam_learning_rate: V
<assignvariableop_26_adam_separable_conv2d_depthwise_kernel_m:V
<assignvariableop_27_adam_separable_conv2d_pointwise_kernel_m: >
0assignvariableop_28_adam_separable_conv2d_bias_m: X
>assignvariableop_29_adam_separable_conv2d_1_depthwise_kernel_m: X
>assignvariableop_30_adam_separable_conv2d_1_pointwise_kernel_m:  @
2assignvariableop_31_adam_separable_conv2d_1_bias_m: X
>assignvariableop_32_adam_separable_conv2d_2_depthwise_kernel_m: X
>assignvariableop_33_adam_separable_conv2d_2_pointwise_kernel_m:  @
2assignvariableop_34_adam_separable_conv2d_2_bias_m: X
>assignvariableop_35_adam_separable_conv2d_3_depthwise_kernel_m: X
>assignvariableop_36_adam_separable_conv2d_3_pointwise_kernel_m:  @
2assignvariableop_37_adam_separable_conv2d_3_bias_m: X
>assignvariableop_38_adam_separable_conv2d_4_depthwise_kernel_m:@X
>assignvariableop_39_adam_separable_conv2d_4_pointwise_kernel_m:@ @
2assignvariableop_40_adam_separable_conv2d_4_bias_m: X
>assignvariableop_41_adam_separable_conv2d_5_depthwise_kernel_m:@X
>assignvariableop_42_adam_separable_conv2d_5_pointwise_kernel_m:@ @
2assignvariableop_43_adam_separable_conv2d_5_bias_m: X
>assignvariableop_44_adam_separable_conv2d_6_depthwise_kernel_m:@X
>assignvariableop_45_adam_separable_conv2d_6_pointwise_kernel_m:@@
2assignvariableop_46_adam_separable_conv2d_6_bias_m:V
<assignvariableop_47_adam_separable_conv2d_depthwise_kernel_v:V
<assignvariableop_48_adam_separable_conv2d_pointwise_kernel_v: >
0assignvariableop_49_adam_separable_conv2d_bias_v: X
>assignvariableop_50_adam_separable_conv2d_1_depthwise_kernel_v: X
>assignvariableop_51_adam_separable_conv2d_1_pointwise_kernel_v:  @
2assignvariableop_52_adam_separable_conv2d_1_bias_v: X
>assignvariableop_53_adam_separable_conv2d_2_depthwise_kernel_v: X
>assignvariableop_54_adam_separable_conv2d_2_pointwise_kernel_v:  @
2assignvariableop_55_adam_separable_conv2d_2_bias_v: X
>assignvariableop_56_adam_separable_conv2d_3_depthwise_kernel_v: X
>assignvariableop_57_adam_separable_conv2d_3_pointwise_kernel_v:  @
2assignvariableop_58_adam_separable_conv2d_3_bias_v: X
>assignvariableop_59_adam_separable_conv2d_4_depthwise_kernel_v:@X
>assignvariableop_60_adam_separable_conv2d_4_pointwise_kernel_v:@ @
2assignvariableop_61_adam_separable_conv2d_4_bias_v: X
>assignvariableop_62_adam_separable_conv2d_5_depthwise_kernel_v:@X
>assignvariableop_63_adam_separable_conv2d_5_pointwise_kernel_v:@ @
2assignvariableop_64_adam_separable_conv2d_5_bias_v: X
>assignvariableop_65_adam_separable_conv2d_6_depthwise_kernel_v:@X
>assignvariableop_66_adam_separable_conv2d_6_pointwise_kernel_v:@@
2assignvariableop_67_adam_separable_conv2d_6_bias_v:
identity_69ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9∞&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*÷%
valueћ%B…%EB7depth_conv1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv5/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv5/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv6/bias/.ATTRIBUTES/VARIABLE_VALUEB:depth_conv_out/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB:depth_conv_out/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB.depth_conv_out/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHэ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Я
valueХBТEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ъ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*™
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOpAssignVariableOp2assignvariableop_separable_conv2d_depthwise_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_1AssignVariableOp4assignvariableop_1_separable_conv2d_pointwise_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_2AssignVariableOp(assignvariableop_2_separable_conv2d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_3AssignVariableOp6assignvariableop_3_separable_conv2d_1_depthwise_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_4AssignVariableOp6assignvariableop_4_separable_conv2d_1_pointwise_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_5AssignVariableOp*assignvariableop_5_separable_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_6AssignVariableOp6assignvariableop_6_separable_conv2d_2_depthwise_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_7AssignVariableOp6assignvariableop_7_separable_conv2d_2_pointwise_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_8AssignVariableOp*assignvariableop_8_separable_conv2d_2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_9AssignVariableOp6assignvariableop_9_separable_conv2d_3_depthwise_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_10AssignVariableOp7assignvariableop_10_separable_conv2d_3_pointwise_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_11AssignVariableOp+assignvariableop_11_separable_conv2d_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_12AssignVariableOp7assignvariableop_12_separable_conv2d_4_depthwise_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_13AssignVariableOp7assignvariableop_13_separable_conv2d_4_pointwise_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_14AssignVariableOp+assignvariableop_14_separable_conv2d_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_15AssignVariableOp7assignvariableop_15_separable_conv2d_5_depthwise_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_16AssignVariableOp7assignvariableop_16_separable_conv2d_5_pointwise_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_17AssignVariableOp+assignvariableop_17_separable_conv2d_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_18AssignVariableOp7assignvariableop_18_separable_conv2d_6_depthwise_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_19AssignVariableOp7assignvariableop_19_separable_conv2d_6_pointwise_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_20AssignVariableOp+assignvariableop_20_separable_conv2d_6_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_decayIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_learning_rateIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_separable_conv2d_depthwise_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_27AssignVariableOp<assignvariableop_27_adam_separable_conv2d_pointwise_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_separable_conv2d_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_29AssignVariableOp>assignvariableop_29_adam_separable_conv2d_1_depthwise_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_30AssignVariableOp>assignvariableop_30_adam_separable_conv2d_1_pointwise_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_31AssignVariableOp2assignvariableop_31_adam_separable_conv2d_1_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_32AssignVariableOp>assignvariableop_32_adam_separable_conv2d_2_depthwise_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_33AssignVariableOp>assignvariableop_33_adam_separable_conv2d_2_pointwise_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_34AssignVariableOp2assignvariableop_34_adam_separable_conv2d_2_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_35AssignVariableOp>assignvariableop_35_adam_separable_conv2d_3_depthwise_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_36AssignVariableOp>assignvariableop_36_adam_separable_conv2d_3_pointwise_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_37AssignVariableOp2assignvariableop_37_adam_separable_conv2d_3_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_38AssignVariableOp>assignvariableop_38_adam_separable_conv2d_4_depthwise_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_39AssignVariableOp>assignvariableop_39_adam_separable_conv2d_4_pointwise_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_40AssignVariableOp2assignvariableop_40_adam_separable_conv2d_4_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_41AssignVariableOp>assignvariableop_41_adam_separable_conv2d_5_depthwise_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_42AssignVariableOp>assignvariableop_42_adam_separable_conv2d_5_pointwise_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_43AssignVariableOp2assignvariableop_43_adam_separable_conv2d_5_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_44AssignVariableOp>assignvariableop_44_adam_separable_conv2d_6_depthwise_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_45AssignVariableOp>assignvariableop_45_adam_separable_conv2d_6_pointwise_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_separable_conv2d_6_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_47AssignVariableOp<assignvariableop_47_adam_separable_conv2d_depthwise_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:≠
AssignVariableOp_48AssignVariableOp<assignvariableop_48_adam_separable_conv2d_pointwise_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_49AssignVariableOp0assignvariableop_49_adam_separable_conv2d_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_50AssignVariableOp>assignvariableop_50_adam_separable_conv2d_1_depthwise_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_51AssignVariableOp>assignvariableop_51_adam_separable_conv2d_1_pointwise_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_52AssignVariableOp2assignvariableop_52_adam_separable_conv2d_1_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_53AssignVariableOp>assignvariableop_53_adam_separable_conv2d_2_depthwise_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_54AssignVariableOp>assignvariableop_54_adam_separable_conv2d_2_pointwise_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_55AssignVariableOp2assignvariableop_55_adam_separable_conv2d_2_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_56AssignVariableOp>assignvariableop_56_adam_separable_conv2d_3_depthwise_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_57AssignVariableOp>assignvariableop_57_adam_separable_conv2d_3_pointwise_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_58AssignVariableOp2assignvariableop_58_adam_separable_conv2d_3_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_59AssignVariableOp>assignvariableop_59_adam_separable_conv2d_4_depthwise_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_60AssignVariableOp>assignvariableop_60_adam_separable_conv2d_4_pointwise_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_separable_conv2d_4_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_62AssignVariableOp>assignvariableop_62_adam_separable_conv2d_5_depthwise_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_63AssignVariableOp>assignvariableop_63_adam_separable_conv2d_5_pointwise_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_64AssignVariableOp2assignvariableop_64_adam_separable_conv2d_5_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_65AssignVariableOp>assignvariableop_65_adam_separable_conv2d_6_depthwise_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:ѓ
AssignVariableOp_66AssignVariableOp>assignvariableop_66_adam_separable_conv2d_6_pointwise_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_67AssignVariableOp2assignvariableop_67_adam_separable_conv2d_6_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 І
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: Ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_69Identity_69:output:0*Я
_input_shapesН
К: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ї
ћ
2__inference_separable_conv2d_6_layer_call_fn_46873

inputs!
unknown:@#
	unknown_0:@
	unknown_1:
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_45987y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
ї
ћ
2__inference_separable_conv2d_4_layer_call_fn_46765

inputs!
unknown:@#
	unknown_0:@ 
	unknown_1: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_45937y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
ї
ћ
2__inference_separable_conv2d_1_layer_call_fn_46603

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€»ђ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45866y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
°
Д
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46889

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@*
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€j
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€q
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€•
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
©
В
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_45638

inputsB
(separable_conv2d_readvariableop_resource:D
*separable_conv2d_readvariableop_1_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
: *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46619

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ЋЩ
°$
__inference__traced_save_47397
file_prefix@
<savev2_separable_conv2d_depthwise_kernel_read_readvariableop@
<savev2_separable_conv2d_pointwise_kernel_read_readvariableop4
0savev2_separable_conv2d_bias_read_readvariableopB
>savev2_separable_conv2d_1_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_1_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_1_bias_read_readvariableopB
>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_2_bias_read_readvariableopB
>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_3_bias_read_readvariableopB
>savev2_separable_conv2d_4_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_4_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_4_bias_read_readvariableopB
>savev2_separable_conv2d_5_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_5_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_5_bias_read_readvariableopB
>savev2_separable_conv2d_6_depthwise_kernel_read_readvariableopB
>savev2_separable_conv2d_6_pointwise_kernel_read_readvariableop6
2savev2_separable_conv2d_6_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopG
Csavev2_adam_separable_conv2d_depthwise_kernel_m_read_readvariableopG
Csavev2_adam_separable_conv2d_pointwise_kernel_m_read_readvariableop;
7savev2_adam_separable_conv2d_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_1_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_1_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_1_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_2_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_2_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_2_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_3_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_3_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_3_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_4_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_4_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_4_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_5_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_5_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_5_bias_m_read_readvariableopI
Esavev2_adam_separable_conv2d_6_depthwise_kernel_m_read_readvariableopI
Esavev2_adam_separable_conv2d_6_pointwise_kernel_m_read_readvariableop=
9savev2_adam_separable_conv2d_6_bias_m_read_readvariableopG
Csavev2_adam_separable_conv2d_depthwise_kernel_v_read_readvariableopG
Csavev2_adam_separable_conv2d_pointwise_kernel_v_read_readvariableop;
7savev2_adam_separable_conv2d_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_1_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_1_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_1_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_2_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_2_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_2_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_3_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_3_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_3_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_4_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_4_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_4_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_5_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_5_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_5_bias_v_read_readvariableopI
Esavev2_adam_separable_conv2d_6_depthwise_kernel_v_read_readvariableopI
Esavev2_adam_separable_conv2d_6_pointwise_kernel_v_read_readvariableop=
9savev2_adam_separable_conv2d_6_bias_v_read_readvariableop
savev2_const_4

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ≠&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*÷%
valueћ%B…%EB7depth_conv1/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv1/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv1/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv2/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv2/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv3/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv3/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv3/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv4/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv4/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv4/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv5/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv5/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv5/bias/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB7depth_conv6/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB+depth_conv6/bias/.ATTRIBUTES/VARIABLE_VALUEB:depth_conv_out/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB:depth_conv_out/pointwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB.depth_conv_out/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv1/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv2/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv3/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv4/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv5/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSdepth_conv6/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBGdepth_conv6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVdepth_conv_out/pointwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBJdepth_conv_out/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHъ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*Я
valueХBТEB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ъ#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_separable_conv2d_depthwise_kernel_read_readvariableop<savev2_separable_conv2d_pointwise_kernel_read_readvariableop0savev2_separable_conv2d_bias_read_readvariableop>savev2_separable_conv2d_1_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_1_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_1_bias_read_readvariableop>savev2_separable_conv2d_2_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_2_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_2_bias_read_readvariableop>savev2_separable_conv2d_3_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_3_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_3_bias_read_readvariableop>savev2_separable_conv2d_4_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_4_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_4_bias_read_readvariableop>savev2_separable_conv2d_5_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_5_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_5_bias_read_readvariableop>savev2_separable_conv2d_6_depthwise_kernel_read_readvariableop>savev2_separable_conv2d_6_pointwise_kernel_read_readvariableop2savev2_separable_conv2d_6_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopCsavev2_adam_separable_conv2d_depthwise_kernel_m_read_readvariableopCsavev2_adam_separable_conv2d_pointwise_kernel_m_read_readvariableop7savev2_adam_separable_conv2d_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_1_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_1_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_1_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_2_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_2_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_2_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_3_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_3_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_3_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_4_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_4_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_4_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_5_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_5_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_5_bias_m_read_readvariableopEsavev2_adam_separable_conv2d_6_depthwise_kernel_m_read_readvariableopEsavev2_adam_separable_conv2d_6_pointwise_kernel_m_read_readvariableop9savev2_adam_separable_conv2d_6_bias_m_read_readvariableopCsavev2_adam_separable_conv2d_depthwise_kernel_v_read_readvariableopCsavev2_adam_separable_conv2d_pointwise_kernel_v_read_readvariableop7savev2_adam_separable_conv2d_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_1_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_1_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_1_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_2_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_2_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_2_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_3_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_3_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_3_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_4_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_4_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_4_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_5_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_5_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_5_bias_v_read_readvariableopEsavev2_adam_separable_conv2d_6_depthwise_kernel_v_read_readvariableopEsavev2_adam_separable_conv2d_6_pointwise_kernel_v_read_readvariableop9savev2_adam_separable_conv2d_6_bias_v_read_readvariableopsavev2_const_4"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Х
_input_shapesГ
А: :: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:: : : : : :: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:  : 	

_output_shapes
: :,
(
&
_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: :,(
&
_output_shapes
:  :  

_output_shapes
: :,!(
&
_output_shapes
: :,"(
&
_output_shapes
:  : #

_output_shapes
: :,$(
&
_output_shapes
: :,%(
&
_output_shapes
:  : &

_output_shapes
: :,'(
&
_output_shapes
:@:,((
&
_output_shapes
:@ : )

_output_shapes
: :,*(
&
_output_shapes
:@:,+(
&
_output_shapes
:@ : ,

_output_shapes
: :,-(
&
_output_shapes
:@:,.(
&
_output_shapes
:@: /

_output_shapes
::,0(
&
_output_shapes
::,1(
&
_output_shapes
: : 2

_output_shapes
: :,3(
&
_output_shapes
: :,4(
&
_output_shapes
:  : 5

_output_shapes
: :,6(
&
_output_shapes
: :,7(
&
_output_shapes
:  : 8

_output_shapes
: :,9(
&
_output_shapes
: :,:(
&
_output_shapes
:  : ;

_output_shapes
: :,<(
&
_output_shapes
:@:,=(
&
_output_shapes
:@ : >

_output_shapes
: :,?(
&
_output_shapes
:@:,@(
&
_output_shapes
:@ : A

_output_shapes
: :,B(
&
_output_shapes
:@:,C(
&
_output_shapes
:@: D

_output_shapes
::E

_output_shapes
: 
к
Ѓ
'__inference_DCE-Net_layer_call_fn_46076
input_1!
unknown:#
	unknown_0: 
	unknown_1: #
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: #
	unknown_6:  
	unknown_7: #
	unknown_8: #
	unknown_9:  

unknown_10: $

unknown_11:@$

unknown_12:@ 

unknown_13: $

unknown_14:@$

unknown_15:@ 

unknown_16: $

unknown_17:@$

unknown_18:@

unknown_19:
identity

identity_1ИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::€€€€€€€€€»ђ:€€€€€€€€€»ђ*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46029y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€»ђ: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€»ђ
!
_user_specified_name	input_1
ўX
с	
"__inference_internal_grad_fn_47180
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
result_grads_28
result_grads_29
result_grads_30
result_grads_31
result_grads_32
result_grads_33
result_grads_34
result_grads_35
result_grads_36
result_grads_37
result_grads_38
result_grads_39
result_grads_40
result_grads_41
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27
identity_28
identity_29
identity_30
identity_31
identity_32
identity_33
identity_34
identity_35
identity_36
identity_37
identity_38
identity_39
identity_40
identity_41U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:W

Identity_1Identityresult_grads_1*
T0*&
_output_shapes
: K

Identity_2Identityresult_grads_2*
T0*
_output_shapes
: W

Identity_3Identityresult_grads_3*
T0*&
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
:  K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
: W

Identity_6Identityresult_grads_6*
T0*&
_output_shapes
: W

Identity_7Identityresult_grads_7*
T0*&
_output_shapes
:  K

Identity_8Identityresult_grads_8*
T0*
_output_shapes
: W

Identity_9Identityresult_grads_9*
T0*&
_output_shapes
: Y
Identity_10Identityresult_grads_10*
T0*&
_output_shapes
:  M
Identity_11Identityresult_grads_11*
T0*
_output_shapes
: Y
Identity_12Identityresult_grads_12*
T0*&
_output_shapes
:@Y
Identity_13Identityresult_grads_13*
T0*&
_output_shapes
:@ M
Identity_14Identityresult_grads_14*
T0*
_output_shapes
: Y
Identity_15Identityresult_grads_15*
T0*&
_output_shapes
:@Y
Identity_16Identityresult_grads_16*
T0*&
_output_shapes
:@ M
Identity_17Identityresult_grads_17*
T0*
_output_shapes
: Y
Identity_18Identityresult_grads_18*
T0*&
_output_shapes
:@Y
Identity_19Identityresult_grads_19*
T0*&
_output_shapes
:@M
Identity_20Identityresult_grads_20*
T0*
_output_shapes
:У
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19result_grads_20result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19result_grads_20*3
T.
,2**+
_gradient_op_typeCustomGradient-47095*в
_output_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@:\
Identity_21IdentityIdentityN:output:0*
T0*&
_output_shapes
:\
Identity_22IdentityIdentityN:output:1*
T0*&
_output_shapes
: P
Identity_23IdentityIdentityN:output:2*
T0*
_output_shapes
: \
Identity_24IdentityIdentityN:output:3*
T0*&
_output_shapes
: \
Identity_25IdentityIdentityN:output:4*
T0*&
_output_shapes
:  P
Identity_26IdentityIdentityN:output:5*
T0*
_output_shapes
: \
Identity_27IdentityIdentityN:output:6*
T0*&
_output_shapes
: \
Identity_28IdentityIdentityN:output:7*
T0*&
_output_shapes
:  P
Identity_29IdentityIdentityN:output:8*
T0*
_output_shapes
: \
Identity_30IdentityIdentityN:output:9*
T0*&
_output_shapes
: ]
Identity_31IdentityIdentityN:output:10*
T0*&
_output_shapes
:  Q
Identity_32IdentityIdentityN:output:11*
T0*
_output_shapes
: ]
Identity_33IdentityIdentityN:output:12*
T0*&
_output_shapes
:@]
Identity_34IdentityIdentityN:output:13*
T0*&
_output_shapes
:@ Q
Identity_35IdentityIdentityN:output:14*
T0*
_output_shapes
: ]
Identity_36IdentityIdentityN:output:15*
T0*&
_output_shapes
:@]
Identity_37IdentityIdentityN:output:16*
T0*&
_output_shapes
:@ Q
Identity_38IdentityIdentityN:output:17*
T0*
_output_shapes
: ]
Identity_39IdentityIdentityN:output:18*
T0*&
_output_shapes
:@]
Identity_40IdentityIdentityN:output:19*
T0*&
_output_shapes
:@Q
Identity_41IdentityIdentityN:output:20*
T0*
_output_shapes
:"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0"#
identity_28Identity_28:output:0"#
identity_29Identity_29:output:0"#
identity_30Identity_30:output:0"#
identity_31Identity_31:output:0"#
identity_32Identity_32:output:0"#
identity_33Identity_33:output:0"#
identity_34Identity_34:output:0"#
identity_35Identity_35:output:0"#
identity_36Identity_36:output:0"#
identity_37Identity_37:output:0"#
identity_38Identity_38:output:0"#
identity_39Identity_39:output:0"#
identity_40Identity_40:output:0"#
identity_41Identity_41:output:0*б
_input_shapesѕ
ћ:: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::: : : :  : : :  : : :  : :@:@ : :@:@ : :@:@::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_1:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_2:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_4:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_5:VR
&
_output_shapes
: 
(
_user_specified_nameresult_grads_6:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_7:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_8:V	R
&
_output_shapes
: 
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:  
)
_user_specified_nameresult_grads_10:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_12:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_13:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_14:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_15:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_16:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_17:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_18:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_19:KG

_output_shapes
:
)
_user_specified_nameresult_grads_20:WS
&
_output_shapes
:
)
_user_specified_nameresult_grads_21:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_22:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_23:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_24:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_25:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_26:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_27:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_28:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_29:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_30:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_31:K G

_output_shapes
: 
)
_user_specified_nameresult_grads_32:W!S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_33:W"S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_34:K#G

_output_shapes
: 
)
_user_specified_nameresult_grads_35:W$S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_36:W%S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_37:K&G

_output_shapes
: 
)
_user_specified_nameresult_grads_38:W'S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_39:W(S
&
_output_shapes
:@
)
_user_specified_nameresult_grads_40:K)G

_output_shapes
:
)
_user_specified_nameresult_grads_41
ї
Д
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46797

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ@*
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ@
 
_user_specified_nameinputs
ь
ћ
2__inference_separable_conv2d_1_layer_call_fn_46592

inputs!
unknown: #
	unknown_0:  
	unknown_1: 
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *V
fQRO
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_45667Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї
Д
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46743

inputsB
(separable_conv2d_readvariableop_resource: D
*separable_conv2d_readvariableop_1_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:  *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      »
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingSAME*
strides
ѕ
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Й
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€»ђ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€»ђ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€»ђ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:Y U
1
_output_shapes
:€€€€€€€€€»ђ 
 
_user_specified_nameinputs
Ђ
Д
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_45783

inputsB
(separable_conv2d_readvariableop_resource:@D
*separable_conv2d_readvariableop_1_resource:@ -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐseparable_conv2d/ReadVariableOpҐ!separable_conv2d/ReadVariableOp_1Р
separable_conv2d/ReadVariableOpReadVariableOp(separable_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ф
!separable_conv2d/ReadVariableOp_1ReadVariableOp*separable_conv2d_readvariableop_1_resource*&
_output_shapes
:@ *
dtype0o
separable_conv2d/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      o
separable_conv2d/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Ў
separable_conv2d/depthwiseDepthwiseConv2dNativeinputs'separable_conv2d/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
я
separable_conv2dConv2D#separable_conv2d/depthwise:output:0)separable_conv2d/ReadVariableOp_1:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddseparable_conv2d:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ j
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ {
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ •
NoOpNoOp^BiasAdd/ReadVariableOp ^separable_conv2d/ReadVariableOp"^separable_conv2d/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
separable_conv2d/ReadVariableOpseparable_conv2d/ReadVariableOp2F
!separable_conv2d/ReadVariableOp_1!separable_conv2d/ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:
"__inference_internal_grad_fn_47180CustomGradient-10782:
"__inference_internal_grad_fn_47310CustomGradient-11614"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*З
serving_defaultу
E
input_1:
serving_default_input_1:0€€€€€€€€€»ђF
output_1:
StatefulPartitionedCall:0€€€€€€€€€»ђF
output_2:
StatefulPartitionedCall:1€€€€€€€€€»ђtensorflow/serving/predict:Јо
Ы
depth_conv1
depth_conv2
depth_conv3
depth_conv4
depth_conv5
depth_conv6
depth_conv_out
	optimizer
	loss

loss_weights
	variables
trainable_variables
regularization_losses
	keras_api

signatures
Ш__call__
+Щ&call_and_return_all_conditional_losses
Ъ_default_save_signature
Ы	test_step
Ь
train_step"
_tf_keras_model
Ё
depthwise_kernel
pointwise_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
depthwise_kernel
pointwise_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Я__call__
+†&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
depthwise_kernel
pointwise_kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
%depthwise_kernel
&pointwise_kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
£__call__
+§&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
,depthwise_kernel
-pointwise_kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
3depthwise_kernel
4pointwise_kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
І__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
:depthwise_kernel
;pointwise_kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
©__call__
+™&call_and_return_all_conditional_losses"
_tf_keras_layer
е
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_ratemnmompmqmrmsmtmu mv%mw&mx'my,mz-m{.m|3m}4m~5m:mА;mБ<mВvГvДvЕvЖvЗvИvЙvК vЛ%vМ&vН'vО,vП-vР.vС3vТ4vУ5vФ:vХ;vЦ<vЧ"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
Њ
0
1
2
3
4
5
6
7
 8
%9
&10
'11
,12
-13
.14
315
416
517
:18
;19
<20"
trackable_list_wrapper
Њ
0
1
2
3
4
5
6
7
 8
%9
&10
'11
,12
-13
.14
315
416
517
:18
;19
<20"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
Ш__call__
Ъ_default_save_signature
+Щ&call_and_return_all_conditional_losses
'Щ"call_and_return_conditional_losses"
_generic_user_object
-
Ђserving_default"
signature_map
;:92!separable_conv2d/depthwise_kernel
;:9 2!separable_conv2d/pointwise_kernel
#:! 2separable_conv2d/bias
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
=:; 2#separable_conv2d_1/depthwise_kernel
=:;  2#separable_conv2d_1/pointwise_kernel
%:# 2separable_conv2d_1/bias
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
=:; 2#separable_conv2d_2/depthwise_kernel
=:;  2#separable_conv2d_2/pointwise_kernel
%:# 2separable_conv2d_2/bias
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
=:; 2#separable_conv2d_3/depthwise_kernel
=:;  2#separable_conv2d_3/pointwise_kernel
%:# 2separable_conv2d_3/bias
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
(	variables
)trainable_variables
*regularization_losses
£__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
=:;@2#separable_conv2d_4/depthwise_kernel
=:;@ 2#separable_conv2d_4/pointwise_kernel
%:# 2separable_conv2d_4/bias
5
,0
-1
.2"
trackable_list_wrapper
5
,0
-1
.2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
/	variables
0trainable_variables
1regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
=:;@2#separable_conv2d_5/depthwise_kernel
=:;@ 2#separable_conv2d_5/pointwise_kernel
%:# 2separable_conv2d_5/bias
5
30
41
52"
trackable_list_wrapper
5
30
41
52"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
6	variables
7trainable_variables
8regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
=:;@2#separable_conv2d_6/depthwise_kernel
=:;@2#separable_conv2d_6/pointwise_kernel
%:#2separable_conv2d_6/bias
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
=	variables
>trainable_variables
?regularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
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
@:>2(Adam/separable_conv2d/depthwise_kernel/m
@:> 2(Adam/separable_conv2d/pointwise_kernel/m
(:& 2Adam/separable_conv2d/bias/m
B:@ 2*Adam/separable_conv2d_1/depthwise_kernel/m
B:@  2*Adam/separable_conv2d_1/pointwise_kernel/m
*:( 2Adam/separable_conv2d_1/bias/m
B:@ 2*Adam/separable_conv2d_2/depthwise_kernel/m
B:@  2*Adam/separable_conv2d_2/pointwise_kernel/m
*:( 2Adam/separable_conv2d_2/bias/m
B:@ 2*Adam/separable_conv2d_3/depthwise_kernel/m
B:@  2*Adam/separable_conv2d_3/pointwise_kernel/m
*:( 2Adam/separable_conv2d_3/bias/m
B:@@2*Adam/separable_conv2d_4/depthwise_kernel/m
B:@@ 2*Adam/separable_conv2d_4/pointwise_kernel/m
*:( 2Adam/separable_conv2d_4/bias/m
B:@@2*Adam/separable_conv2d_5/depthwise_kernel/m
B:@@ 2*Adam/separable_conv2d_5/pointwise_kernel/m
*:( 2Adam/separable_conv2d_5/bias/m
B:@@2*Adam/separable_conv2d_6/depthwise_kernel/m
B:@@2*Adam/separable_conv2d_6/pointwise_kernel/m
*:(2Adam/separable_conv2d_6/bias/m
@:>2(Adam/separable_conv2d/depthwise_kernel/v
@:> 2(Adam/separable_conv2d/pointwise_kernel/v
(:& 2Adam/separable_conv2d/bias/v
B:@ 2*Adam/separable_conv2d_1/depthwise_kernel/v
B:@  2*Adam/separable_conv2d_1/pointwise_kernel/v
*:( 2Adam/separable_conv2d_1/bias/v
B:@ 2*Adam/separable_conv2d_2/depthwise_kernel/v
B:@  2*Adam/separable_conv2d_2/pointwise_kernel/v
*:( 2Adam/separable_conv2d_2/bias/v
B:@ 2*Adam/separable_conv2d_3/depthwise_kernel/v
B:@  2*Adam/separable_conv2d_3/pointwise_kernel/v
*:( 2Adam/separable_conv2d_3/bias/v
B:@@2*Adam/separable_conv2d_4/depthwise_kernel/v
B:@@ 2*Adam/separable_conv2d_4/pointwise_kernel/v
*:( 2Adam/separable_conv2d_4/bias/v
B:@@2*Adam/separable_conv2d_5/depthwise_kernel/v
B:@@ 2*Adam/separable_conv2d_5/pointwise_kernel/v
*:( 2Adam/separable_conv2d_5/bias/v
B:@@2*Adam/separable_conv2d_6/depthwise_kernel/v
B:@@2*Adam/separable_conv2d_6/pointwise_kernel/v
*:(2Adam/separable_conv2d_6/bias/v
ъ2ч
'__inference_DCE-Net_layer_call_fn_46076
'__inference_DCE-Net_layer_call_fn_46400Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∞2≠
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46527
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46294Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
 __inference__wrapped_model_45618input_1"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
б2ё
__inference_test_step_9780
__inference_test_step_10083Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
д2б
__inference_train_step_10915
__inference_train_step_11747Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
М2Й
0__inference_separable_conv2d_layer_call_fn_46538
0__inference_separable_conv2d_layer_call_fn_46549Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
¬2њ
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46565
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46581Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_1_layer_call_fn_46592
2__inference_separable_conv2d_1_layer_call_fn_46603Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46619
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46635Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_2_layer_call_fn_46646
2__inference_separable_conv2d_2_layer_call_fn_46657Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46673
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46689Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_3_layer_call_fn_46700
2__inference_separable_conv2d_3_layer_call_fn_46711Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46727
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46743Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_4_layer_call_fn_46754
2__inference_separable_conv2d_4_layer_call_fn_46765Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46781
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46797Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_5_layer_call_fn_46808
2__inference_separable_conv2d_5_layer_call_fn_46819Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46835
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46851Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Р2Н
2__inference_separable_conv2d_6_layer_call_fn_46862
2__inference_separable_conv2d_6_layer_call_fn_46873Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
∆2√
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46889
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46905Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 B«
#__inference_signature_wrapper_46351input_1"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3ы
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46294і %&',-.345:;<:Ґ7
0Ґ-
+К(
input_1€€€€€€€€€»ђ
™ "_Ґ\
UҐR
'К$
0/0€€€€€€€€€»ђ
'К$
0/1€€€€€€€€€»ђ
Ъ ъ
B__inference_DCE-Net_layer_call_and_return_conditional_losses_46527≥ %&',-.345:;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ
™ "_Ґ\
UҐR
'К$
0/0€€€€€€€€€»ђ
'К$
0/1€€€€€€€€€»ђ
Ъ “
'__inference_DCE-Net_layer_call_fn_46076¶ %&',-.345:;<:Ґ7
0Ґ-
+К(
input_1€€€€€€€€€»ђ
™ "QҐN
%К"
0€€€€€€€€€»ђ
%К"
1€€€€€€€€€»ђ—
'__inference_DCE-Net_layer_call_fn_46400• %&',-.345:;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ
™ "QҐN
%К"
0€€€€€€€€€»ђ
%К"
1€€€€€€€€€»ђс
 __inference__wrapped_model_45618ћ %&',-.345:;<:Ґ7
0Ґ-
+К(
input_1€€€€€€€€€»ђ
™ "w™t
8
output_1,К)
output_1€€€€€€€€€»ђ
8
output_2,К)
output_2€€€€€€€€€»ђЎ
"__inference_internal_grad_fn_47180±∆Ґ¬
ЇҐґ

 
'К$
result_grads_0
'К$
result_grads_1 
К
result_grads_2 
'К$
result_grads_3 
'К$
result_grads_4  
К
result_grads_5 
'К$
result_grads_6 
'К$
result_grads_7  
К
result_grads_8 
'К$
result_grads_9 
(К%
result_grads_10  
К
result_grads_11 
(К%
result_grads_12@
(К%
result_grads_13@ 
К
result_grads_14 
(К%
result_grads_15@
(К%
result_grads_16@ 
К
result_grads_17 
(К%
result_grads_18@
(К%
result_grads_19@
К
result_grads_20
(К%
result_grads_21
(К%
result_grads_22 
К
result_grads_23 
(К%
result_grads_24 
(К%
result_grads_25  
К
result_grads_26 
(К%
result_grads_27 
(К%
result_grads_28  
К
result_grads_29 
(К%
result_grads_30 
(К%
result_grads_31  
К
result_grads_32 
(К%
result_grads_33@
(К%
result_grads_34@ 
К
result_grads_35 
(К%
result_grads_36@
(К%
result_grads_37@ 
К
result_grads_38 
(К%
result_grads_39@
(К%
result_grads_40@
К
result_grads_41
™ "еЪб

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
К
21
К
22 
К
23 
К
24 
К
25  
К
26 
К
27 
К
28  
К
29 
К
30 
К
31  
К
32 
К
33@
К
34@ 
К
35 
К
36@
К
37@ 
К
38 
К
39@
К
40@
К
41Ў
"__inference_internal_grad_fn_47310±∆Ґ¬
ЇҐґ

 
'К$
result_grads_0
'К$
result_grads_1 
К
result_grads_2 
'К$
result_grads_3 
'К$
result_grads_4  
К
result_grads_5 
'К$
result_grads_6 
'К$
result_grads_7  
К
result_grads_8 
'К$
result_grads_9 
(К%
result_grads_10  
К
result_grads_11 
(К%
result_grads_12@
(К%
result_grads_13@ 
К
result_grads_14 
(К%
result_grads_15@
(К%
result_grads_16@ 
К
result_grads_17 
(К%
result_grads_18@
(К%
result_grads_19@
К
result_grads_20
(К%
result_grads_21
(К%
result_grads_22 
К
result_grads_23 
(К%
result_grads_24 
(К%
result_grads_25  
К
result_grads_26 
(К%
result_grads_27 
(К%
result_grads_28  
К
result_grads_29 
(К%
result_grads_30 
(К%
result_grads_31  
К
result_grads_32 
(К%
result_grads_33@
(К%
result_grads_34@ 
К
result_grads_35 
(К%
result_grads_36@
(К%
result_grads_37@ 
К
result_grads_38 
(К%
result_grads_39@
(К%
result_grads_40@
К
result_grads_41
™ "еЪб

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
К
21
К
22 
К
23 
К
24 
К
25  
К
26 
К
27 
К
28  
К
29 
К
30 
К
31  
К
32 
К
33@
К
34@ 
К
35 
К
36@
К
37@ 
К
38 
К
39@
К
40@
К
41г
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46619СIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
M__inference_separable_conv2d_1_layer_call_and_return_conditional_losses_46635q9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ ї
2__inference_separable_conv2d_1_layer_call_fn_46592ДIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ъ
2__inference_separable_conv2d_1_layer_call_fn_46603d9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ ""К€€€€€€€€€»ђ г
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46673С IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
M__inference_separable_conv2d_2_layer_call_and_return_conditional_losses_46689q 9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ ї
2__inference_separable_conv2d_2_layer_call_fn_46646Д IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ъ
2__inference_separable_conv2d_2_layer_call_fn_46657d 9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ ""К€€€€€€€€€»ђ г
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46727С%&'IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
M__inference_separable_conv2d_3_layer_call_and_return_conditional_losses_46743q%&'9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ ї
2__inference_separable_conv2d_3_layer_call_fn_46700Д%&'IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ъ
2__inference_separable_conv2d_3_layer_call_fn_46711d%&'9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ 
™ ""К€€€€€€€€€»ђ г
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46781С,-.IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
M__inference_separable_conv2d_4_layer_call_and_return_conditional_losses_46797q,-.9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ ї
2__inference_separable_conv2d_4_layer_call_fn_46754Д,-.IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ъ
2__inference_separable_conv2d_4_layer_call_fn_46765d,-.9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ ""К€€€€€€€€€»ђ г
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46835С345IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
M__inference_separable_conv2d_5_layer_call_and_return_conditional_losses_46851q3459Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ ї
2__inference_separable_conv2d_5_layer_call_fn_46808Д345IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ъ
2__inference_separable_conv2d_5_layer_call_fn_46819d3459Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ ""К€€€€€€€€€»ђ г
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46889С:;<IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ¬
M__inference_separable_conv2d_6_layer_call_and_return_conditional_losses_46905q:;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ "/Ґ,
%К"
0€€€€€€€€€»ђ
Ъ ї
2__inference_separable_conv2d_6_layer_call_fn_46862Д:;<IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ъ
2__inference_separable_conv2d_6_layer_call_fn_46873d:;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ@
™ ""К€€€€€€€€€»ђб
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46565СIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ј
K__inference_separable_conv2d_layer_call_and_return_conditional_losses_46581q9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ
™ "/Ґ,
%К"
0€€€€€€€€€»ђ 
Ъ є
0__inference_separable_conv2d_layer_call_fn_46538ДIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ш
0__inference_separable_conv2d_layer_call_fn_46549d9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€»ђ
™ ""К€€€€€€€€€»ђ €
#__inference_signature_wrapper_46351„ %&',-.345:;<EҐB
Ґ 
;™8
6
input_1+К(
input_1€€€€€€€€€»ђ"w™t
8
output_1,К)
output_1€€€€€€€€€»ђ
8
output_2,К)
output_2€€€€€€€€€»ђС
__inference_test_step_10083с %&',-.345:;<ђ≠Ѓѓ0Ґ-
&Ґ#
!К
inputs»ђ
™ "Э™Щ
5
color_constancy_lossК
color_constancy_loss 
7
exposure_control_lossК
exposure_control_loss 
E
illumination_smoothness_loss%К"
illumination_smoothness_loss 
=
spatial_consistency_loss!К
spatial_consistency_loss 
!

total_lossК

total_loss Р
__inference_test_step_9780с %&',-.345:;<ђ≠Ѓѓ0Ґ-
&Ґ#
!К
inputs»ђ
™ "Э™Щ
5
color_constancy_lossК
color_constancy_loss 
7
exposure_control_lossК
exposure_control_loss 
E
illumination_smoothness_loss%К"
illumination_smoothness_loss 
=
spatial_consistency_loss!К
spatial_consistency_loss 
!

total_lossК

total_loss Ў
__inference_train_step_10915Јc %&',-.345:;<ђ≠ЃѓEABCnГoДpЕqЖrЗsИtЙuКvЛwМxНyОzП{Р|С}Т~УФАХБЦВЧ0Ґ-
&Ґ#
!К
inputs»ђ
™ "Э™Щ
5
color_constancy_lossК
color_constancy_loss 
7
exposure_control_lossК
exposure_control_loss 
E
illumination_smoothness_loss%К"
illumination_smoothness_loss 
=
spatial_consistency_loss!К
spatial_consistency_loss 
!

total_lossК

total_loss Ў
__inference_train_step_11747Јc %&',-.345:;<ђ≠ЃѓEABCnГoДpЕqЖrЗsИtЙuКvЛwМxНyОzП{Р|С}Т~УФАХБЦВЧ0Ґ-
&Ґ#
!К
inputs»ђ
™ "Э™Щ
5
color_constancy_lossК
color_constancy_loss 
7
exposure_control_lossК
exposure_control_loss 
E
illumination_smoothness_loss%К"
illumination_smoothness_loss 
=
spatial_consistency_loss!К
spatial_consistency_loss 
!

total_lossК

total_loss 