.class public final Lcom/google/zxing/camera/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0

    .line 42
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 48
    iput-object p1, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 49
    iput p2, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    .line 50
    iput p3, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    .line 51
    iput p4, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->left:I

    .line 52
    iput p5, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->top:I

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDataHeight()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .locals 7

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 76
    iget v2, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v0

    :cond_0
    mul-int v2, v0, v1

    .line 81
    new-array v3, v2, [B

    .line 82
    iget v4, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v4, v4, v5

    iget v6, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v6

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v5, v6, v0

    .line 94
    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v5, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 61
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 62
    :cond_0
    new-array p2, v0, [B

    .line 64
    :cond_1
    iget v1, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 65
    iget-object v1, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 58
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 114
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v6

    .line 115
    invoke-virtual {p0}, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 116
    new-array v1, v0, [I

    .line 117
    iget-object v0, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 118
    iget v2, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v3, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int v2, v2, v3

    iget v3, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_1

    mul-int v5, v2, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_0

    add-int v9, v4, v8

    .line 123
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v5, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int v9, v9, v12

    or-int/2addr v9, v11

    .line 124
    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 126
    :cond_0
    iget v5, p0, Lcom/google/zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    .line 130
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method
