.class Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

.field type:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p5, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    const/16 p2, 0x14

    new-array v4, p2, [B

    iget-object p2, p1, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/security/SecureRandom;->setSeed(J)V

    iget-object p2, p1, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p2, p1, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result p2

    and-int/lit16 p2, p2, 0x3ff

    add-int/lit16 v5, p2, 0x400

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance p5, Ljava/io/DataOutputStream;

    invoke-direct {p5, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v0, v4

    invoke-virtual {p5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p5, v4}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p5, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p4

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p5, p4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance p4, Ljava/io/DataOutputStream;

    invoke-direct {p4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p1, p3, p4}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {p4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x2

    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x1

    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput p4, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p5, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    iput p4, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p5, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    iput-object p6, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x3

    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "no match"

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/security/Key;

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v7, v1, [B

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v2, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v4, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v7, v1

    move v8, v9

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v4, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v3, v7

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v9, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-static {v3, v2, p1}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "forget something!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    return v0
.end method
