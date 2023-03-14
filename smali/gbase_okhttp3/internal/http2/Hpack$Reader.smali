.class final Lgbase_okhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Lgbase_okio/BufferedSource;


# direct methods
.method constructor <init>(IILgbase_okio/Source;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    .line 125
    new-array v0, v0, [Lgbase_okhttp3/internal/http2/Header;

    iput-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    .line 127
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 129
    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 136
    iput p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 137
    iput p2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 138
    invoke-static {p3}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    return-void
.end method

.method constructor <init>(ILgbase_okio/Source;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p1, p2}, Lgbase_okhttp3/internal/http2/Hpack$Reader;-><init>(IILgbase_okio/Source;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 146
    iget v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 150
    invoke-direct {p0, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 156
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 159
    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1

    .line 234
    iget v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 167
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 168
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lgbase_okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 169
    iget v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lgbase_okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 170
    iget v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    iget v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget v3, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private getName(I)Lgbase_okio/ByteString;
    .locals 2

    .line 263
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lgbase_okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lgbase_okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Header;->name:Lgbase_okio/ByteString;

    return-object p1

    .line 266
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    sget-object v1, Lgbase_okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lgbase_okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Header;->name:Lgbase_okio/ByteString;

    return-object p1
.end method

.method private insertIntoDynamicTable(ILgbase_okhttp3/internal/http2/Header;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    iget v0, p2, Lgbase_okhttp3/internal/http2/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 280
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lgbase_okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 284
    :cond_0
    iget v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1

    .line 285
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    return-void

    .line 290
    :cond_1
    iget v3, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 291
    invoke-direct {p0, v3}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    .line 294
    iget p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 295
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lgbase_okhttp3/internal/http2/Header;

    const/4 v2, 0x0

    .line 296
    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 298
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    .line 300
    :cond_2
    iget p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 301
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 302
    iget p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 305
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 307
    :goto_0
    iget p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 271
    sget-object v1, Lgbase_okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lgbase_okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lgbase_okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lgbase_okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    .line 222
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    sget-object v0, Lgbase_okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lgbase_okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 225
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Lgbase_okhttp3/internal/http2/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 228
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->getName(I)Lgbase_okio/ByteString;

    move-result-object p1

    .line 252
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v0

    .line 253
    new-instance v1, Lgbase_okhttp3/internal/http2/Header;

    invoke-direct {v1, p1, v0}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Lgbase_okio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILgbase_okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/http2/Hpack;->checkLowercase(Lgbase_okio/ByteString;)Lgbase_okio/ByteString;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v1

    .line 259
    new-instance v2, Lgbase_okhttp3/internal/http2/Header;

    invoke-direct {v2, v0, v1}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Lgbase_okio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILgbase_okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->getName(I)Lgbase_okio/ByteString;

    move-result-object p1

    .line 239
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v2, Lgbase_okhttp3/internal/http2/Header;

    invoke-direct {v2, p1, v0}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Lgbase_okio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/internal/http2/Hpack;->checkLowercase(Lgbase_okio/ByteString;)Lgbase_okio/ByteString;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByteString()Lgbase_okio/ByteString;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lgbase_okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Lgbase_okhttp3/internal/http2/Header;-><init>(Lgbase_okio/ByteString;Lgbase_okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 215
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .line 142
    iget v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lgbase_okio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 340
    invoke-virtual {p0, v0, v2}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Lgbase_okhttp3/internal/http2/Huffman;->get()Lgbase_okhttp3/internal/http2/Huffman;

    move-result-object v1

    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lgbase_okio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lgbase_okhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Lgbase_okio/ByteString;->of([B)Lgbase_okio/ByteString;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lgbase_okio/BufferedSource;->readByteString(J)Lgbase_okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method readHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    :goto_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 186
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->source:Lgbase_okio/BufferedSource;

    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    .line 190
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 191
    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 193
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    .line 195
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 196
    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    .line 198
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 199
    iget v0, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v0, :cond_3

    iget v1, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v0, v1, :cond_3

    .line 203
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 201
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbase_okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    .line 207
    invoke-virtual {p0, v0, v1}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 208
    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_0

    .line 205
    :cond_6
    :goto_1
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 188
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method readInt(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 324
    :goto_0
    invoke-direct {p0}, Lgbase_okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
