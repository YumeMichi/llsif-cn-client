.class public Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;
.super Ljava/lang/Object;


# instance fields
.field private _nextObject:Lorg/bouncycastle/asn1/DEREncodable;

.field private _originatorInfoCalled:Z

.field private _seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private _version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/DERInteger;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_version:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method


# virtual methods
.method public getCertificates()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getCrls()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    new-instance v1, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_originatorInfoCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_originatorInfoCalled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_nextObject:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedDataParser;->_version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method
