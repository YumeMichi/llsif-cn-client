.class public final Lcom/alipay/sdk/encrypt/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x80

.field public static final b:I = 0x40

.field public static final c:I = 0x18

.field public static final d:I = 0x8

.field public static final e:I = 0x10

.field public static final f:I = 0x4

.field public static final g:I = -0x80

.field public static final h:C = '='

.field public static final i:[B

.field public static final j:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x80

    .line 1
    new-array v1, v0, [B

    sput-object v1, Lcom/alipay/sdk/encrypt/a;->i:[B

    const/16 v1, 0x40

    .line 2
    new-array v1, v1, [C

    sput-object v1, Lcom/alipay/sdk/encrypt/a;->j:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    sget-object v3, Lcom/alipay/sdk/encrypt/a;->i:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 9
    sget-object v2, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    .line 12
    sget-object v3, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    .line 16
    sget-object v4, Lcom/alipay/sdk/encrypt/a;->i:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 19
    :cond_3
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->i:[B

    const/16 v4, 0x3e

    const/16 v5, 0x2b

    aput-byte v4, v0, v5

    const/16 v6, 0x3f

    const/16 v7, 0x2f

    .line 20
    aput-byte v6, v0, v7

    const/4 v0, 0x0

    :goto_4
    const/16 v8, 0x19

    if-gt v0, v8, :cond_4

    .line 23
    sget-object v8, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v9, v0, 0x41

    int-to-char v9, v9

    aput-char v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/16 v8, 0x33

    if-gt v2, v8, :cond_5

    .line 27
    sget-object v8, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v9, v0, 0x61

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_6

    .line 31
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->j:[C

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 33
    :cond_6
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->j:[C

    aput-char v5, v0, v4

    .line 34
    aput-char v7, v0, v6

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([C)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 172
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 174
    aget-char v3, p0, v0

    invoke-static {v3}, Lcom/alipay/sdk/encrypt/a;->c(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 175
    aget-char v4, p0, v0

    aput-char v4, p0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 7
    :cond_1
    rem-int/lit8 v2, v0, 0x18

    .line 8
    div-int/lit8 v0, v0, 0x18

    if-eqz v2, :cond_2

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    .line 13
    new-array v3, v3, [C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    add-int/lit8 v7, v5, 0x1

    .line 21
    aget-byte v5, p0, v5

    add-int/lit8 v8, v7, 0x1

    .line 22
    aget-byte v7, p0, v7

    add-int/lit8 v9, v8, 0x1

    .line 23
    aget-byte v8, p0, v8

    and-int/lit8 v10, v7, 0xf

    int-to-byte v10, v10

    and-int/lit8 v11, v5, 0x3

    int-to-byte v11, v11

    and-int/lit8 v12, v5, -0x80

    if-nez v12, :cond_3

    shr-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_3
    shr-int/lit8 v5, v5, 0x2

    xor-int/lit16 v5, v5, 0xc0

    :goto_2
    int-to-byte v5, v5

    and-int/lit8 v12, v7, -0x80

    if-nez v12, :cond_4

    shr-int/lit8 v7, v7, 0x4

    goto :goto_3

    :cond_4
    shr-int/lit8 v7, v7, 0x4

    xor-int/lit16 v7, v7, 0xf0

    :goto_3
    int-to-byte v7, v7

    and-int/lit8 v12, v8, -0x80

    if-nez v12, :cond_5

    shr-int/lit8 v12, v8, 0x6

    goto :goto_4

    :cond_5
    shr-int/lit8 v12, v8, 0x6

    xor-int/lit16 v12, v12, 0xfc

    :goto_4
    int-to-byte v12, v12

    add-int/lit8 v13, v6, 0x1

    .line 37
    sget-object v14, Lcom/alipay/sdk/encrypt/a;->j:[C

    aget-char v5, v14, v5

    aput-char v5, v3, v6

    add-int/lit8 v5, v13, 0x1

    shl-int/lit8 v6, v11, 0x4

    or-int/2addr v6, v7

    .line 38
    aget-char v6, v14, v6

    aput-char v6, v3, v13

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v10, 0x2

    or-int/2addr v7, v12

    .line 39
    aget-char v7, v14, v7

    aput-char v7, v3, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v7, v8, 0x3f

    .line 40
    aget-char v7, v14, v7

    aput-char v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v9

    goto :goto_1

    :cond_6
    const/16 v0, 0x3d

    if-ne v2, v1, :cond_8

    .line 45
    aget-byte p0, p0, v5

    and-int/lit8 v1, p0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v2, p0, -0x80

    if-nez v2, :cond_7

    shr-int/lit8 p0, p0, 0x2

    goto :goto_5

    :cond_7
    shr-int/lit8 p0, p0, 0x2

    xor-int/lit16 p0, p0, 0xc0

    :goto_5
    int-to-byte p0, p0

    add-int/lit8 v2, v6, 0x1

    .line 49
    sget-object v4, Lcom/alipay/sdk/encrypt/a;->j:[C

    aget-char p0, v4, p0

    aput-char p0, v3, v6

    add-int/lit8 p0, v2, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 50
    aget-char v1, v4, v1

    aput-char v1, v3, v2

    add-int/lit8 v1, p0, 0x1

    .line 51
    aput-char v0, v3, p0

    .line 52
    aput-char v0, v3, v1

    goto :goto_8

    :cond_8
    const/16 v1, 0x10

    if-ne v2, v1, :cond_b

    .line 54
    aget-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 55
    aget-byte p0, p0, v5

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    and-int/lit8 v4, v1, 0x3

    int-to-byte v4, v4

    and-int/lit8 v5, v1, -0x80

    if-nez v5, :cond_9

    shr-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_9
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    :goto_6
    int-to-byte v1, v1

    and-int/lit8 v5, p0, -0x80

    if-nez v5, :cond_a

    shr-int/lit8 p0, p0, 0x4

    goto :goto_7

    :cond_a
    shr-int/lit8 p0, p0, 0x4

    xor-int/lit16 p0, p0, 0xf0

    :goto_7
    int-to-byte p0, p0

    add-int/lit8 v5, v6, 0x1

    .line 64
    sget-object v7, Lcom/alipay/sdk/encrypt/a;->j:[C

    aget-char v1, v7, v1

    aput-char v1, v3, v6

    add-int/lit8 v1, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr p0, v4

    .line 65
    aget-char p0, v7, p0

    aput-char p0, v3, v5

    add-int/lit8 p0, v1, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 66
    aget-char v2, v7, v2

    aput-char v2, v3, v1

    .line 67
    aput-char v0, v3, p0

    .line 70
    :cond_b
    :goto_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 1
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->i:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/alipay/sdk/encrypt/a;->a([C)I

    move-result v1

    .line 75
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    return-object v0

    .line 79
    :cond_1
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 82
    new-array p0, v2, [B

    return-object p0

    :cond_2
    mul-int/lit8 v3, v1, 0x3

    .line 92
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 v7, v1, -0x1

    if-ge v4, v7, :cond_5

    add-int/lit8 v7, v5, 0x1

    .line 96
    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    aget-char v7, p0, v7

    .line 97
    invoke-static {v7}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v9, v8, 0x1

    aget-char v8, p0, v8

    .line 98
    invoke-static {v8}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v10, v9, 0x1

    aget-char v9, p0, v9

    .line 99
    invoke-static {v9}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 103
    :cond_3
    sget-object v11, Lcom/alipay/sdk/encrypt/a;->i:[B

    aget-byte v5, v11, v5

    .line 104
    aget-byte v7, v11, v7

    .line 105
    aget-byte v8, v11, v8

    .line 106
    aget-byte v9, v11, v9

    add-int/lit8 v11, v6, 0x1

    shl-int/lit8 v5, v5, 0x2

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v5, v12

    int-to-byte v5, v5

    .line 108
    aput-byte v5, v3, v6

    add-int/lit8 v5, v11, 0x1

    and-int/lit8 v6, v7, 0xf

    shl-int/lit8 v6, v6, 0x4

    shr-int/lit8 v7, v8, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 109
    aput-byte v6, v3, v11

    add-int/lit8 v6, v5, 0x1

    shl-int/lit8 v7, v8, 0x6

    or-int/2addr v7, v9

    int-to-byte v7, v7

    .line 110
    aput-byte v7, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v10

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 113
    aget-char v5, p0, v5

    invoke-static {v5}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v7

    if-eqz v7, :cond_c

    add-int/lit8 v7, v1, 0x1

    aget-char v1, p0, v1

    .line 114
    invoke-static {v1}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_3

    .line 118
    :cond_6
    sget-object v8, Lcom/alipay/sdk/encrypt/a;->i:[B

    aget-byte v5, v8, v5

    .line 119
    aget-byte v1, v8, v1

    add-int/lit8 v8, v7, 0x1

    .line 121
    aget-char v7, p0, v7

    .line 122
    aget-char p0, p0, v8

    .line 123
    invoke-static {v7}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {p0}, Lcom/alipay/sdk/encrypt/a;->a(C)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 148
    :cond_7
    sget-object v0, Lcom/alipay/sdk/encrypt/a;->i:[B

    aget-byte v2, v0, v7

    .line 149
    aget-byte p0, v0, p0

    add-int/lit8 v0, v6, 0x1

    shl-int/lit8 v4, v5, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 150
    aput-byte v4, v3, v6

    add-int/lit8 v4, v0, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v5, v2, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    .line 151
    aput-byte v1, v3, v0

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr p0, v0

    int-to-byte p0, p0

    .line 152
    aput-byte p0, v3, v4

    return-object v3

    .line 153
    :cond_8
    :goto_2
    invoke-static {v7}, Lcom/alipay/sdk/encrypt/a;->b(C)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {p0}, Lcom/alipay/sdk/encrypt/a;->b(C)Z

    move-result v8

    if-eqz v8, :cond_a

    and-int/lit8 p0, v1, 0xf

    if-eqz p0, :cond_9

    return-object v0

    :cond_9
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 p0, v4, 0x1

    .line 158
    new-array p0, p0, [B

    .line 159
    invoke-static {v3, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v5, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .line 160
    aput-byte v0, p0, v6

    return-object p0

    .line 162
    :cond_a
    invoke-static {v7}, Lcom/alipay/sdk/encrypt/a;->b(C)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {p0}, Lcom/alipay/sdk/encrypt/a;->b(C)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 163
    sget-object p0, Lcom/alipay/sdk/encrypt/a;->i:[B

    aget-byte p0, p0, v7

    and-int/lit8 v7, p0, 0x3

    if-eqz v7, :cond_b

    return-object v0

    :cond_b
    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v0, v4, 0x2

    .line 168
    new-array v0, v0, [B

    .line 169
    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v3, v5, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    .line 170
    aput-byte v3, v0, v6

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xf

    or-int/2addr p0, v1

    int-to-byte p0, p0

    .line 171
    aput-byte p0, v0, v2

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static b(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
