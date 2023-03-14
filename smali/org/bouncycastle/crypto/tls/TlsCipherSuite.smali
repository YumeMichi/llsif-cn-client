.class public abstract Lorg/bouncycastle/crypto/tls/TlsCipherSuite;
.super Ljava/lang/Object;


# static fields
.field protected static final KE_DHE_DSS:S = 0x3s

.field protected static final KE_DHE_DSS_EXPORT:S = 0x4s

.field protected static final KE_DHE_RSA:S = 0x5s

.field protected static final KE_DHE_RSA_EXPORT:S = 0x6s

.field protected static final KE_DH_DSS:S = 0x7s

.field protected static final KE_DH_RSA:S = 0x8s

.field protected static final KE_DH_anon:S = 0x9s

.field protected static final KE_RSA:S = 0x1s

.field protected static final KE_RSA_EXPORT:S = 0x2s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract decodeCiphertext(S[BIILorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract encodePlaintext(S[BII)[B
.end method

.method protected abstract getKeyExchangeAlgorithm()S
.end method

.method protected abstract init([B[B[B)V
.end method
