.class public final Lgbase_okhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Lgbase_okhttp3/RequestBody;

.field final headers:Lgbase_okhttp3/Headers;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)V
    .locals 0
    .param p1    # Lgbase_okhttp3/Headers;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lgbase_okhttp3/MultipartBody$Part;->headers:Lgbase_okhttp3/Headers;

    .line 268
    iput-object p2, p0, Lgbase_okhttp3/MultipartBody$Part;->body:Lgbase_okhttp3/RequestBody;

    return-void
.end method

.method public static create(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;
    .locals 1
    .param p0    # Lgbase_okhttp3/Headers;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    if-eqz p0, :cond_1

    const-string v0, "Content-Type"

    .line 235
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    const-string v0, "Content-Length"

    .line 238
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_3
    :goto_1
    new-instance v0, Lgbase_okhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Lgbase_okhttp3/MultipartBody$Part;-><init>(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)V

    return-object v0

    .line 233
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-static {v0, p0}, Lgbase_okhttp3/MultipartBody$Part;->create(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/MultipartBody$Part;
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-static {v0, p1}, Lgbase_okhttp3/RequestBody;->create(Lgbase_okhttp3/MediaType;Ljava/lang/String;)Lgbase_okhttp3/RequestBody;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lgbase_okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {v0, p0}, Lgbase_okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {v0, p1}, Lgbase_okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p0, 0x2

    .line 260
    new-array p0, p0, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "Content-Disposition"

    aput-object v1, p0, p1

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p1

    invoke-static {p0}, Lgbase_okhttp3/Headers;->of([Ljava/lang/String;)Lgbase_okhttp3/Headers;

    move-result-object p0

    invoke-static {p0, p2}, Lgbase_okhttp3/MultipartBody$Part;->create(Lgbase_okhttp3/Headers;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public body()Lgbase_okhttp3/RequestBody;
    .locals 1

    .line 276
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody$Part;->body:Lgbase_okhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Lgbase_okhttp3/Headers;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 272
    iget-object v0, p0, Lgbase_okhttp3/MultipartBody$Part;->headers:Lgbase_okhttp3/Headers;

    return-object v0
.end method
