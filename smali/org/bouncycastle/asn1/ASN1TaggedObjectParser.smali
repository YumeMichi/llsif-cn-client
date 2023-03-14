.class public interface abstract Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/asn1/DEREncodable;


# virtual methods
.method public abstract getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTagNo()I
.end method
