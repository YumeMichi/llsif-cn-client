.class Lorg/bouncycastle/asn1/DefiniteLengthInputStream;
.super Lorg/bouncycastle/asn1/LimitedInputStream;


# static fields
.field private static final EMPTY_BYTES:[B


# instance fields
.field private _length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;)V

    if-ltz p2, :cond_0

    iput p2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "negative lengths not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget v2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    if-lez v0, :cond_1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_0

    iget p2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    return p1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    const/4 p1, -0x1

    return p1
.end method

.method toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    if-lez v0, :cond_1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_in:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->_length:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->EMPTY_BYTES:[B

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->setParentEofDetect(Z)V

    return-object v0
.end method
