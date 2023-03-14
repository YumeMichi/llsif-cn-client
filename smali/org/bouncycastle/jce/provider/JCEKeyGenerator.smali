.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.super Ljavax/crypto/KeyGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACTIGER;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA512;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA384;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA256;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA224;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA1;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD160HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RIPEMD128HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$MD5HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$MD4HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$MD2HMAC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$VMPCKSA3;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$VMPC;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HC256;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$HC128;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Salsa20;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$XTEA;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$TEA;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$IDEA;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$CAST6;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Serpent;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Rijndael;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$GOST28147;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC6;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC564;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC5;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC4;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$RC2;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Twofish;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Blowfish;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Skipjack;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede3;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DESede;,
        Lorg/bouncycastle/jce/provider/JCEKeyGenerator$DES;
    }
.end annotation


# instance fields
.field protected algName:Ljava/lang/String;

.field protected defaultKeySize:I

.field protected engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

.field protected keySize:I

.field protected uninitialised:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->keySize:I

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->engine:Lorg/bouncycastle/crypto/CipherKeyGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    iget v2, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->defaultKeySize:I

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;->uninitialised:Z

    :cond_0
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
