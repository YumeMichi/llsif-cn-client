.class public final Lorg/bouncycastle/util/Strings;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/16 v4, 0xc0

    const/16 v5, 0xe0

    const/16 v6, 0xf0

    if-ge v1, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v1

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    aget-byte v3, p0, v1

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_1

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v2, [C

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_8

    aget-byte v3, p0, v0

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_4

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v3, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v3, v7

    add-int/lit8 v7, v0, 0x3

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v3, v7

    const/high16 v7, 0x10000

    sub-int/2addr v3, v7

    const v7, 0xd800

    shr-int/lit8 v8, v3, 0xa

    or-int/2addr v7, v8

    int-to-char v7, v7

    const v8, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v8

    int-to-char v3, v3

    add-int/lit8 v8, v2, 0x1

    aput-char v7, v1, v2

    add-int/lit8 v0, v0, 0x4

    move v2, v8

    goto :goto_3

    :cond_4
    aget-byte v3, p0, v0

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_5

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v3, v7

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v3, v7

    int-to-char v3, v3

    add-int/lit8 v0, v0, 0x3

    goto :goto_3

    :cond_5
    aget-byte v3, p0, v0

    const/16 v7, 0xd0

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_6

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    :goto_2
    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v3, v7

    int-to-char v3, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_6
    aget-byte v3, p0, v0

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_7

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, p0, v7

    goto :goto_2

    :cond_7
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/lit8 v7, v2, 0x1

    aput-char v3, v1, v2

    move v2, v7

    goto/16 :goto_1

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    :goto_1
    array-length p1, p0

    if-eq v2, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_0

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_0

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0x61

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object p0
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    aget-char v2, p0, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    goto :goto_3

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_4

    const v4, 0xdfff

    if-gt v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    array-length v4, p0

    const-string v5, "invalid UTF-16 codepoint"

    if-ge v1, v4, :cond_3

    aget-char v4, p0, v1

    const v6, 0xdbff

    if-gt v2, v6, :cond_2

    and-int/lit16 v2, v2, 0x3ff

    shl-int/lit8 v2, v2, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int/2addr v2, v4

    shr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    goto :goto_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_0

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0x41

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object p0
.end method
