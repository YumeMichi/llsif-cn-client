.class public Lorg/bouncycastle/crypto/tls/TlsNullCipherSuite;
.super Lorg/bouncycastle/crypto/tls/TlsCipherSuite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/TlsCipherSuite;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeCiphertext(S[BIILorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .locals 0

    new-array p1, p4, [B

    const/4 p5, 0x0

    invoke-static {p2, p3, p1, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected encodePlaintext(S[BII)[B
    .locals 1

    new-array p1, p4, [B

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method protected getKeyExchangeAlgorithm()S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init([B[B[B)V
    .locals 0

    new-instance p1, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;

    const-string p2, "Sorry, init of TLS_NULL_WITH_NULL_NULL is forbidden"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
