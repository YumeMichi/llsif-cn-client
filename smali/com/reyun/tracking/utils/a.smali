.class public Lcom/reyun/tracking/utils/a;
.super Ljava/lang/Object;


# static fields
.field private static m:Lcom/reyun/tracking/utils/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:[C

.field private e:[B

.field private f:Ljavax/crypto/spec/PBEKeySpec;

.field private final g:Ljava/lang/String;

.field private h:Ljavax/crypto/SecretKeyFactory;

.field private i:Ljavax/crypto/SecretKey;

.field private j:Ljavax/crypto/spec/SecretKeySpec;

.field private k:[B

.field private l:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PBKDF2WithHmacSHA1"

    iput-object v0, p0, Lcom/reyun/tracking/utils/a;->a:Ljava/lang/String;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/reyun/tracking/utils/a;->b:I

    const/16 v2, 0x80

    iput v2, p0, Lcom/reyun/tracking/utils/a;->c:I

    const/16 v3, 0x13

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/reyun/tracking/utils/a;->d:[C

    const/16 v3, 0x10

    new-array v4, v3, [B

    fill-array-data v4, :array_1

    iput-object v4, p0, Lcom/reyun/tracking/utils/a;->e:[B

    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v5, p0, Lcom/reyun/tracking/utils/a;->d:[C

    iget-object v6, p0, Lcom/reyun/tracking/utils/a;->e:[B

    invoke-direct {v4, v5, v6, v1, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    iput-object v4, p0, Lcom/reyun/tracking/utils/a;->f:Ljavax/crypto/spec/PBEKeySpec;

    const-string v1, "AES/CBC/PKCS7Padding"

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->h:Ljavax/crypto/SecretKeyFactory;

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->i:Ljavax/crypto/SecretKey;

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->j:Ljavax/crypto/spec/SecretKeySpec;

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->k:[B

    :try_start_0
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/reyun/tracking/utils/a;->h:Ljavax/crypto/SecretKeyFactory;

    iget-object v0, p0, Lcom/reyun/tracking/utils/a;->h:Ljavax/crypto/SecretKeyFactory;

    iget-object v1, p0, Lcom/reyun/tracking/utils/a;->f:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/reyun/tracking/utils/a;->i:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_2
    iget-object v0, p0, Lcom/reyun/tracking/utils/a;->i:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/reyun/tracking/utils/a;->j:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lcom/reyun/tracking/utils/a;->k:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v0, p0, Lcom/reyun/tracking/utils/a;->l:Ljavax/crypto/spec/IvParameterSpec;

    return-void

    nop

    :array_0
    .array-data 2
        0x77s
        0x6fs
        0x6ds
        0x65s
        0x6es
        0x64s
        0x6fs
        0x75s
        0x73s
        0x68s
        0x69s
        0x68s
        0x61s
        0x6fs
        0x68s
        0x61s
        0x69s
        0x7as
        0x69s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x5t
        0x8t
        0x6t
        0x7t
        0x9t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0xat
        0x1t
        0xbt
        0x5t
        0x4t
        0xft
        0x7t
        0x9t
        0x17t
        0x3t
        0x1t
        0x6t
        0x8t
        0xct
        0xdt
        0x5bt
    .end array-data
.end method

.method public static a()Lcom/reyun/tracking/utils/a;
    .locals 1

    sget-object v0, Lcom/reyun/tracking/utils/a;->m:Lcom/reyun/tracking/utils/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/reyun/tracking/utils/a;

    invoke-direct {v0}, Lcom/reyun/tracking/utils/a;-><init>()V

    sput-object v0, Lcom/reyun/tracking/utils/a;->m:Lcom/reyun/tracking/utils/a;

    :cond_0
    sget-object v0, Lcom/reyun/tracking/utils/a;->m:Lcom/reyun/tracking/utils/a;

    return-object v0
.end method

.method private static a([B)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/reyun/tracking/utils/a;->j:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/reyun/tracking/utils/a;->l:Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/reyun/tracking/utils/a;->a(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    invoke-static {p4}, Lcom/reyun/tracking/utils/a;->a([B)[B

    move-result-object p4

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    return-object p1
.end method
