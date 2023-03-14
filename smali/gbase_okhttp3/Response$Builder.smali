.class public Lgbase_okhttp3/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lgbase_okhttp3/ResponseBody;

.field cacheResponse:Lgbase_okhttp3/Response;

.field code:I

.field handshake:Lgbase_okhttp3/Handshake;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field headers:Lgbase_okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lgbase_okhttp3/Response;

.field priorResponse:Lgbase_okhttp3/Response;

.field protocol:Lgbase_okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lgbase_okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 302
    iput v0, p0, Lgbase_okhttp3/Response$Builder;->code:I

    .line 314
    new-instance v0, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v0}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/Response;)V
    .locals 2

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 302
    iput v0, p0, Lgbase_okhttp3/Response$Builder;->code:I

    .line 318
    iget-object v0, p1, Lgbase_okhttp3/Response;->request:Lgbase_okhttp3/Request;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->request:Lgbase_okhttp3/Request;

    .line 319
    iget-object v0, p1, Lgbase_okhttp3/Response;->protocol:Lgbase_okhttp3/Protocol;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->protocol:Lgbase_okhttp3/Protocol;

    .line 320
    iget v0, p1, Lgbase_okhttp3/Response;->code:I

    iput v0, p0, Lgbase_okhttp3/Response$Builder;->code:I

    .line 321
    iget-object v0, p1, Lgbase_okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->message:Ljava/lang/String;

    .line 322
    iget-object v0, p1, Lgbase_okhttp3/Response;->handshake:Lgbase_okhttp3/Handshake;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->handshake:Lgbase_okhttp3/Handshake;

    .line 323
    iget-object v0, p1, Lgbase_okhttp3/Response;->headers:Lgbase_okhttp3/Headers;

    invoke-virtual {v0}, Lgbase_okhttp3/Headers;->newBuilder()Lgbase_okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    .line 324
    iget-object v0, p1, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->body:Lgbase_okhttp3/ResponseBody;

    .line 325
    iget-object v0, p1, Lgbase_okhttp3/Response;->networkResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->networkResponse:Lgbase_okhttp3/Response;

    .line 326
    iget-object v0, p1, Lgbase_okhttp3/Response;->cacheResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->cacheResponse:Lgbase_okhttp3/Response;

    .line 327
    iget-object v0, p1, Lgbase_okhttp3/Response;->priorResponse:Lgbase_okhttp3/Response;

    iput-object v0, p0, Lgbase_okhttp3/Response$Builder;->priorResponse:Lgbase_okhttp3/Response;

    .line 328
    iget-wide v0, p1, Lgbase_okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis:J

    .line 329
    iget-wide v0, p1, Lgbase_okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lgbase_okhttp3/Response;)V
    .locals 1

    .line 422
    iget-object p1, p1, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSupportResponse(Ljava/lang/String;Lgbase_okhttp3/Response;)V
    .locals 1

    .line 404
    iget-object v0, p2, Lgbase_okhttp3/Response;->body:Lgbase_okhttp3/ResponseBody;

    if-nez v0, :cond_3

    .line 406
    iget-object v0, p2, Lgbase_okhttp3/Response;->networkResponse:Lgbase_okhttp3/Response;

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p2, Lgbase_okhttp3/Response;->cacheResponse:Lgbase_okhttp3/Response;

    if-nez v0, :cond_1

    .line 410
    iget-object p2, p2, Lgbase_okhttp3/Response;->priorResponse:Lgbase_okhttp3/Response;

    if-nez p2, :cond_0

    return-void

    .line 411
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 409
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 407
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 405
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;
    .locals 1

    .line 371
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lgbase_okhttp3/ResponseBody;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 387
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->body:Lgbase_okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Lgbase_okhttp3/Response;
    .locals 3

    .line 438
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->request:Lgbase_okhttp3/Request;

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->protocol:Lgbase_okhttp3/Protocol;

    if-eqz v0, :cond_2

    .line 440
    iget v0, p0, Lgbase_okhttp3/Response$Builder;->code:I

    if-ltz v0, :cond_1

    .line 441
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lgbase_okhttp3/Response;

    invoke-direct {v0, p0}, Lgbase_okhttp3/Response;-><init>(Lgbase_okhttp3/Response$Builder;)V

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbase_okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lgbase_okhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 398
    invoke-direct {p0, v0, p1}, Lgbase_okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lgbase_okhttp3/Response;)V

    .line 399
    :cond_0
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->cacheResponse:Lgbase_okhttp3/Response;

    return-object p0
.end method

.method public code(I)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 343
    iput p1, p0, Lgbase_okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lgbase_okhttp3/Handshake;)Lgbase_okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lgbase_okhttp3/Handshake;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 353
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->handshake:Lgbase_okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;
    .locals 1

    .line 362
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 382
    invoke-virtual {p1}, Lgbase_okhttp3/Headers;->newBuilder()Lgbase_okhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 348
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lgbase_okhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 392
    invoke-direct {p0, v0, p1}, Lgbase_okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lgbase_okhttp3/Response;)V

    .line 393
    :cond_0
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->networkResponse:Lgbase_okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lgbase_okhttp3/Response;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lgbase_okhttp3/Response$Builder;->checkPriorResponse(Lgbase_okhttp3/Response;)V

    .line 417
    :cond_0
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->priorResponse:Lgbase_okhttp3/Response;

    return-object p0
.end method

.method public protocol(Lgbase_okhttp3/Protocol;)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 338
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->protocol:Lgbase_okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 433
    iput-wide p1, p0, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;
    .locals 1

    .line 376
    iget-object v0, p0, Lgbase_okhttp3/Response$Builder;->headers:Lgbase_okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 333
    iput-object p1, p0, Lgbase_okhttp3/Response$Builder;->request:Lgbase_okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lgbase_okhttp3/Response$Builder;
    .locals 0

    .line 428
    iput-wide p1, p0, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
