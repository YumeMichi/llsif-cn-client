.class public final Lgbase_okhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Lgbase_okio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbase_okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lgbase_okhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 286
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbase_okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    sget-object v0, Lgbase_okhttp3/MultipartBody;->MIXED:Lgbase_okhttp3/MediaType;

    iput-object v0, p0, Lgbase_okhttp3/MultipartBody$Builder;->type:Lgbase_okhttp3/MediaType;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 290
    invoke-static {p1}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/MultipartBody$Builder;->boundary:Lgbase_okio/ByteString;

    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 0

    .line 320
    invoke-static {p1, p2}, Lgbase_okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbase_okhttp3/MultipartBody$Builder;->addPart(Lgbase_okhttp3/MultipartBody$Part;)Lgbase_okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 325
    invoke-static {p1, p2, p3}, Lgbase_okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbase_okhttp3/MultipartBody$Builder;->addPart(Lgbase_okhttp3/MultipartBody$Part;)Lgbase_okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 0
    .param p1    # Lgbase_okhttp3/Headers;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 315
    invoke-static {p1, p2}, Lgbase_okhttp3/MultipartBody$Part;->create(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbase_okhttp3/MultipartBody$Builder;->addPart(Lgbase_okhttp3/MultipartBody$Part;)Lgbase_okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lgbase_okhttp3/MultipartBody$Part;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPart(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 0

    .line 310
    invoke-static {p1}, Lgbase_okhttp3/MultipartBody$Part;->create(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgbase_okhttp3/MultipartBody$Builder;->addPart(Lgbase_okhttp3/MultipartBody$Part;)Lgbase_okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lgbase_okhttp3/MultipartBody;
    .locals 4

    .line 337
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lgbase_okhttp3/MultipartBody;

    iget-object v1, p0, Lgbase_okhttp3/MultipartBody$Builder;->boundary:Lgbase_okio/ByteString;

    iget-object v2, p0, Lgbase_okhttp3/MultipartBody$Builder;->type:Lgbase_okhttp3/MediaType;

    iget-object v3, p0, Lgbase_okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lgbase_okhttp3/MultipartBody;-><init>(Lgbase_okio/ByteString;Lgbase_okhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Lgbase_okhttp3/MediaType;)Lgbase_okhttp3/MultipartBody$Builder;
    .locals 3

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Lgbase_okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iput-object p1, p0, Lgbase_okhttp3/MultipartBody$Builder;->type:Lgbase_okhttp3/MediaType;

    return-object p0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
