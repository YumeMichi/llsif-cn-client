.class public Lorg/bouncycastle/asn1/DERInputStream;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_b

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_9

    const/16 v0, 0x14

    if-eq p1, v0, :cond_8

    const/16 v0, 0x30

    if-eq p1, v0, :cond_7

    const/16 v0, 0x31

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x1f

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_4

    array-length v2, p2

    if-nez v2, :cond_1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance p2, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance p2, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {p2}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    invoke-direct {p1, v0, v1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1

    :cond_1
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/BERInputStream;->available()I

    move-result v2

    if-nez v2, :cond_3

    new-instance p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    return-object p2

    :cond_3
    new-instance v2, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unsupported high tag encountered"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Lorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/DERUnknownTag;-><init>(I[B)V

    return-object v0

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    return-object p1

    :pswitch_1
    new-instance p1, Lorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    return-object p1

    :pswitch_2
    new-instance p1, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    return-object p1

    :pswitch_3
    new-instance p1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    return-object p1

    :pswitch_4
    new-instance p1, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    return-object p1

    :pswitch_5
    new-instance p1, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    return-object p1

    :pswitch_6
    new-instance p1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    return-object p1

    :pswitch_7
    const/4 p1, 0x0

    return-object p1

    :pswitch_8
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object p1

    :pswitch_9
    aget-byte p1, p2, v0

    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v3, p2

    sub-int/2addr v3, v2

    invoke-static {p2, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object p2

    :pswitch_a
    new-instance p1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    return-object p1

    :pswitch_b
    new-instance p1, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    new-instance p2, Lorg/bouncycastle/asn1/DERConstructedSet;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/DERConstructedSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object p2

    :cond_7
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p2, Lorg/bouncycastle/asn1/BERInputStream;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/BERInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERConstructedSequence;

    invoke-direct {p1}, Lorg/bouncycastle/asn1/DERConstructedSequence;-><init>()V

    :goto_2
    :try_start_2
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/BERInputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/DERConstructedSequence;->addObject(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    return-object p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/DERT61String;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    return-object p1

    :cond_9
    new-instance p1, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    return-object p1

    :cond_a
    new-instance p1, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object p1

    :cond_b
    new-instance p1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    return-object p1

    :cond_c
    new-instance p1, Lorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/asn1/DERInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "unexpected end of stream"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method protected readLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_5

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz v2, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER length more than 4 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public readObject()Lorg/bouncycastle/asn1/DERObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInputStream;->readLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DERInputStream;->readFully([B)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/asn1/DERInputStream;->buildObject(I[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method
