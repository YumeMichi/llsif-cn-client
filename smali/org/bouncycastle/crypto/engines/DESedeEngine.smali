.class public Lorg/bouncycastle/crypto/engines/DESedeEngine;
.super Lorg/bouncycastle/crypto/engines/DESEngine;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    const/16 v0, 0x8

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v3, v0, [B

    array-length v4, p2

    const/16 v5, 0x18

    if-gt v4, v5, :cond_1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    array-length v4, p2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    array-length v4, v1

    invoke-static {p2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v2

    invoke-static {p2, v0, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x10

    array-length v4, v3

    invoke-static {p2, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    xor-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2, v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    invoke-virtual {p0, p1, v3}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_0

    :cond_0
    array-length v3, v1

    invoke-static {p2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    invoke-static {p2, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key size greater than 24 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to DESede init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([BI[BI)I
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v1, :cond_3

    add-int/lit8 v0, p2, 0x8

    array-length v3, p1

    if-gt v0, v3, :cond_2

    add-int/lit8 v0, p4, 0x8

    array-length v3, p3

    if-gt v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    :goto_0
    const/16 v0, 0x8

    return v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
