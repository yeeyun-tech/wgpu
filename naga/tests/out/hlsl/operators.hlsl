static const float4 v_f32_one = float4(1.0, 1.0, 1.0, 1.0);
static const float4 v_f32_zero = float4(0.0, 0.0, 0.0, 0.0);
static const float4 v_f32_half = float4(0.5, 0.5, 0.5, 0.5);
static const int4 v_i32_one = int4(1, 1, 1, 1);

float4 builtins()
{
    int s1_ = (true ? 1 : 0);
    float4 s2_ = (true ? v_f32_one : v_f32_zero);
    float4 s3_ = (bool4(false, false, false, false) ? v_f32_zero : v_f32_one);
    float4 m1_ = lerp(v_f32_zero, v_f32_one, v_f32_half);
    float4 m2_ = lerp(v_f32_zero, v_f32_one, 0.1);
    float b1_ = asfloat(1);
    float4 b2_ = asfloat(v_i32_one);
    int4 v_i32_zero = int4(0, 0, 0, 0);
    return (((((float4(((s1_).xxxx + v_i32_zero)) + s2_) + m1_) + m2_) + (b1_).xxxx) + b2_);
}

float4 splat(float m, int n)
{
    float2 a_2 = ((((2.0).xx + (m).xx) - (4.0).xx) / (8.0).xx);
    int4 b = ((n).xxxx % (2).xxxx);
    return (a_2.xyxy + float4(b));
}

float2 splat_assignment()
{
    float2 a = (2.0).xx;

    float2 _e4 = a;
    a = (_e4 + (1.0).xx);
    float2 _e8 = a;
    a = (_e8 - (3.0).xx);
    float2 _e12 = a;
    a = (_e12 / (4.0).xx);
    float2 _e15 = a;
    return _e15;
}

float3 bool_cast(float3 x)
{
    bool3 y = bool3(x);
    return float3(y);
}

void logical()
{
    bool neg0_ = !(true);
    bool2 neg1_ = !((true).xx);
    bool or_ = (true || false);
    bool and_ = (true && false);
    bool bitwise_or0_ = (true | false);
    bool3 bitwise_or1_ = ((true).xxx | (false).xxx);
    bool bitwise_and0_ = (true & false);
    bool4 bitwise_and1_ = ((true).xxxx & (false).xxxx);
    return;
}

float3x3 ZeroValuefloat3x3() {
    return (float3x3)0;
}

float4x3 ZeroValuefloat4x3() {
    return (float4x3)0;
}

float3x4 ZeroValuefloat3x4() {
    return (float3x4)0;
}

void arithmetic()
{
    float neg0_1 = -(1.0);
    int2 neg1_1 = -((1).xx);
    float2 neg2_ = -((1.0).xx);
    int add0_ = (2 + 1);
    uint add1_ = (2u + 1u);
    float add2_ = (2.0 + 1.0);
    int2 add3_ = ((2).xx + (1).xx);
    uint3 add4_ = ((2u).xxx + (1u).xxx);
    float4 add5_ = ((2.0).xxxx + (1.0).xxxx);
    int sub0_ = (2 - 1);
    uint sub1_ = (2u - 1u);
    float sub2_ = (2.0 - 1.0);
    int2 sub3_ = ((2).xx - (1).xx);
    uint3 sub4_ = ((2u).xxx - (1u).xxx);
    float4 sub5_ = ((2.0).xxxx - (1.0).xxxx);
    int mul0_ = (2 * 1);
    uint mul1_ = (2u * 1u);
    float mul2_ = (2.0 * 1.0);
    int2 mul3_ = ((2).xx * (1).xx);
    uint3 mul4_ = ((2u).xxx * (1u).xxx);
    float4 mul5_ = ((2.0).xxxx * (1.0).xxxx);
    int div0_ = (2 / 1);
    uint div1_ = (2u / 1u);
    float div2_ = (2.0 / 1.0);
    int2 div3_ = ((2).xx / (1).xx);
    uint3 div4_ = ((2u).xxx / (1u).xxx);
    float4 div5_ = ((2.0).xxxx / (1.0).xxxx);
    int rem0_ = (2 % 1);
    uint rem1_ = (2u % 1u);
    float rem2_ = fmod(2.0, 1.0);
    int2 rem3_ = ((2).xx % (1).xx);
    uint3 rem4_ = ((2u).xxx % (1u).xxx);
    float4 rem5_ = fmod((2.0).xxxx, (1.0).xxxx);
    {
        int2 add0_1 = ((2).xx + (1).xx);
        int2 add1_1 = ((2).xx + (1).xx);
        uint2 add2_1 = ((2u).xx + (1u).xx);
        uint2 add3_1 = ((2u).xx + (1u).xx);
        float2 add4_1 = ((2.0).xx + (1.0).xx);
        float2 add5_1 = ((2.0).xx + (1.0).xx);
        int2 sub0_1 = ((2).xx - (1).xx);
        int2 sub1_1 = ((2).xx - (1).xx);
        uint2 sub2_1 = ((2u).xx - (1u).xx);
        uint2 sub3_1 = ((2u).xx - (1u).xx);
        float2 sub4_1 = ((2.0).xx - (1.0).xx);
        float2 sub5_1 = ((2.0).xx - (1.0).xx);
        int2 mul0_1 = ((2).xx * 1);
        int2 mul1_1 = (2 * (1).xx);
        uint2 mul2_1 = ((2u).xx * 1u);
        uint2 mul3_1 = (2u * (1u).xx);
        float2 mul4_1 = ((2.0).xx * 1.0);
        float2 mul5_1 = (2.0 * (1.0).xx);
        int2 div0_1 = ((2).xx / (1).xx);
        int2 div1_1 = ((2).xx / (1).xx);
        uint2 div2_1 = ((2u).xx / (1u).xx);
        uint2 div3_1 = ((2u).xx / (1u).xx);
        float2 div4_1 = ((2.0).xx / (1.0).xx);
        float2 div5_1 = ((2.0).xx / (1.0).xx);
        int2 rem0_1 = ((2).xx % (1).xx);
        int2 rem1_1 = ((2).xx % (1).xx);
        uint2 rem2_1 = ((2u).xx % (1u).xx);
        uint2 rem3_1 = ((2u).xx % (1u).xx);
        float2 rem4_1 = fmod((2.0).xx, (1.0).xx);
        float2 rem5_1 = fmod((2.0).xx, (1.0).xx);
    }
    float3x3 add = (ZeroValuefloat3x3() + ZeroValuefloat3x3());
    float3x3 sub = (ZeroValuefloat3x3() - ZeroValuefloat3x3());
    float3x3 mul_scalar0_ = mul(1.0, ZeroValuefloat3x3());
    float3x3 mul_scalar1_ = mul(ZeroValuefloat3x3(), 2.0);
    float3 mul_vector0_ = mul((1.0).xxxx, ZeroValuefloat4x3());
    float4 mul_vector1_ = mul(ZeroValuefloat4x3(), (2.0).xxx);
    float3x3 mul_ = mul(ZeroValuefloat3x4(), ZeroValuefloat4x3());
    return;
}

void bit()
{
    int flip0_ = ~(1);
    uint flip1_ = ~(1u);
    int2 flip2_ = ~((1).xx);
    uint3 flip3_ = ~((1u).xxx);
    int or0_ = (2 | 1);
    uint or1_ = (2u | 1u);
    int2 or2_ = ((2).xx | (1).xx);
    uint3 or3_ = ((2u).xxx | (1u).xxx);
    int and0_ = (2 & 1);
    uint and1_ = (2u & 1u);
    int2 and2_ = ((2).xx & (1).xx);
    uint3 and3_ = ((2u).xxx & (1u).xxx);
    int xor0_ = (2 ^ 1);
    uint xor1_ = (2u ^ 1u);
    int2 xor2_ = ((2).xx ^ (1).xx);
    uint3 xor3_ = ((2u).xxx ^ (1u).xxx);
    int shl0_ = (2 << 1u);
    uint shl1_ = (2u << 1u);
    int2 shl2_ = ((2).xx << (1u).xx);
    uint3 shl3_ = ((2u).xxx << (1u).xxx);
    int shr0_ = (2 >> 1u);
    uint shr1_ = (2u >> 1u);
    int2 shr2_ = ((2).xx >> (1u).xx);
    uint3 shr3_ = ((2u).xxx >> (1u).xxx);
    return;
}

void comparison()
{
    bool eq0_ = (2 == 1);
    bool eq1_ = (2u == 1u);
    bool eq2_ = (2.0 == 1.0);
    bool2 eq3_ = ((2).xx == (1).xx);
    bool3 eq4_ = ((2u).xxx == (1u).xxx);
    bool4 eq5_ = ((2.0).xxxx == (1.0).xxxx);
    bool neq0_ = (2 != 1);
    bool neq1_ = (2u != 1u);
    bool neq2_ = (2.0 != 1.0);
    bool2 neq3_ = ((2).xx != (1).xx);
    bool3 neq4_ = ((2u).xxx != (1u).xxx);
    bool4 neq5_ = ((2.0).xxxx != (1.0).xxxx);
    bool lt0_ = (2 < 1);
    bool lt1_ = (2u < 1u);
    bool lt2_ = (2.0 < 1.0);
    bool2 lt3_ = ((2).xx < (1).xx);
    bool3 lt4_ = ((2u).xxx < (1u).xxx);
    bool4 lt5_ = ((2.0).xxxx < (1.0).xxxx);
    bool lte0_ = (2 <= 1);
    bool lte1_ = (2u <= 1u);
    bool lte2_ = (2.0 <= 1.0);
    bool2 lte3_ = ((2).xx <= (1).xx);
    bool3 lte4_ = ((2u).xxx <= (1u).xxx);
    bool4 lte5_ = ((2.0).xxxx <= (1.0).xxxx);
    bool gt0_ = (2 > 1);
    bool gt1_ = (2u > 1u);
    bool gt2_ = (2.0 > 1.0);
    bool2 gt3_ = ((2).xx > (1).xx);
    bool3 gt4_ = ((2u).xxx > (1u).xxx);
    bool4 gt5_ = ((2.0).xxxx > (1.0).xxxx);
    bool gte0_ = (2 >= 1);
    bool gte1_ = (2u >= 1u);
    bool gte2_ = (2.0 >= 1.0);
    bool2 gte3_ = ((2).xx >= (1).xx);
    bool3 gte4_ = ((2u).xxx >= (1u).xxx);
    bool4 gte5_ = ((2.0).xxxx >= (1.0).xxxx);
    return;
}

int3 ZeroValueint3() {
    return (int3)0;
}

void assignment()
{
    int a_1 = (int)0;
    int3 vec0_ = ZeroValueint3();

    a_1 = 1;
    int _e5 = a_1;
    a_1 = (_e5 + 1);
    int _e7 = a_1;
    a_1 = (_e7 - 1);
    int _e9 = a_1;
    int _e10 = a_1;
    a_1 = (_e10 * _e9);
    int _e12 = a_1;
    int _e13 = a_1;
    a_1 = (_e13 / _e12);
    int _e15 = a_1;
    a_1 = (_e15 % 1);
    int _e17 = a_1;
    a_1 = (_e17 & 0);
    int _e19 = a_1;
    a_1 = (_e19 | 0);
    int _e21 = a_1;
    a_1 = (_e21 ^ 0);
    int _e23 = a_1;
    a_1 = (_e23 << 2u);
    int _e25 = a_1;
    a_1 = (_e25 >> 1u);
    int _e28 = a_1;
    a_1 = (_e28 + 1);
    int _e31 = a_1;
    a_1 = (_e31 - 1);
    int _e37 = vec0_[1];
    vec0_[1] = (_e37 + 1);
    int _e41 = vec0_[1];
    vec0_[1] = (_e41 - 1);
    return;
}

void negation_avoids_prefix_decrement()
{
    int p0_ = -(1);
    int p1_ = -(-(1));
    int p2_ = -(-(1));
    int p3_ = -(-(1));
    int p4_ = -(-(-(1)));
    int p5_ = -(-(-(-(1))));
    int p6_ = -(-(-(-(-(1)))));
    int p7_ = -(-(-(-(-(1)))));
    return;
}

[numthreads(1, 1, 1)]
void main(uint3 id : SV_GroupID)
{
    const float4 _e1 = builtins();
    const float4 _e6 = splat(float(id.x), int(id.y));
    const float3 _e11 = bool_cast(float3(1.0, 1.0, 1.0));
    logical();
    arithmetic();
    bit();
    comparison();
    assignment();
    return;
}
