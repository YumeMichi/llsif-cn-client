.class final Lorg/bouncycastle/openssl/PEMUtilities;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static crypt(ZLjava/lang/String;[B[CLjava/lang/String;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v1, "-CFB"

    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "NoPadding"

    if-eqz v1, :cond_0

    const-string v1, "CFB"

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v1, "CBC"

    const-string v3, "PKCS5Padding"

    :goto_0
    const-string v4, "-ECB"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "DES-EDE3"

    const-string v6, "DES-EDE"

    if-nez v4, :cond_1

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ECB"

    :cond_2
    const-string v4, "-OFB"

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "OFB"

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "AES"

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    const-string v4, "DESede"

    invoke-virtual {p4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p4, v6

    const/16 v3, 0x18

    invoke-static {p3, v4, v3, p5, p4}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object p3

    goto/16 :goto_5

    :cond_4
    const-string v3, "DES-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_5

    const-string v4, "DES"

    invoke-static {p3, v4, v5, p5}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    goto/16 :goto_5

    :cond_5
    const-string v3, "BF-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v4, "Blowfish"

    const/16 p4, 0x10

    invoke-static {p3, v4, p4, p5}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    goto/16 :goto_5

    :cond_6
    const-string v3, "RC2-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v7, 0x80

    if-eqz v3, :cond_a

    const-string v4, "RC2"

    const-string v3, "RC2-40-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v7, 0x28

    goto :goto_2

    :cond_7
    const-string v3, "RC2-64-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    const/16 v7, 0x40

    :cond_8
    :goto_2
    div-int/lit8 p4, v7, 0x8

    invoke-static {p3, v4, p4, p5}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    if-nez v0, :cond_9

    new-instance p4, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {p4, v7}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I)V

    goto :goto_3

    :cond_9
    new-instance p4, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-direct {p4, v7, p5}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    :goto_3
    move-object v0, p4

    goto :goto_5

    :cond_a
    const-string v3, "AES-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    array-length v3, p5

    if-le v3, v5, :cond_b

    new-array v3, v5, [B

    const/4 v8, 0x0

    invoke-static {p5, v8, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p5, v3

    :cond_b
    const-string v3, "AES-128-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    const-string v3, "AES-192-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v7, 0xc0

    goto :goto_4

    :cond_d
    const-string v3, "AES-256-"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_10

    const/16 v7, 0x100

    :goto_4
    div-int/2addr v7, v5

    invoke-static {p3, v4, v7, p5}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;

    move-result-object p3

    :goto_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :try_start_0
    invoke-static {p4, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v6, 0x2

    :goto_6
    if-nez v0, :cond_f

    invoke-virtual {p1, v6, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_7

    :cond_f
    invoke-virtual {p1, v6, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_7
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception using cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown AES encryption with private key"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unknown encryption with private key"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getKey([CLjava/lang/String;I[B)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/bouncycastle/openssl/PEMUtilities;->getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private static getKey([CLjava/lang/String;I[BZ)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    invoke-virtual {v0, p0, p3}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    const/16 p0, 0x8

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p2

    if-eqz p4, :cond_0

    array-length p3, p2

    const/16 p4, 0x18

    if-lt p3, p4, :cond_0

    const/4 p3, 0x0

    const/16 p4, 0x10

    invoke-static {p2, p3, p2, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p0
.end method
