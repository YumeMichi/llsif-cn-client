.class Lcom/tencent/open/d$c;
.super Lcom/tencent/tauth/DefaultUiListener;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 1

    .line 443
    invoke-direct {p0}, Lcom/tencent/tauth/DefaultUiListener;-><init>()V

    .line 444
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/open/d$c;->c:Ljava/lang/ref/WeakReference;

    .line 445
    iput-object p2, p0, Lcom/tencent/open/d$c;->d:Ljava/lang/String;

    .line 446
    iput-object p3, p0, Lcom/tencent/open/d$c;->a:Ljava/lang/String;

    .line 447
    iput-object p4, p0, Lcom/tencent/open/d$c;->b:Ljava/lang/String;

    .line 448
    iput-object p5, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/d$c;Ljava/lang/String;)V
    .locals 0

    .line 435
    invoke-direct {p0, p1}, Lcom/tencent/open/d$c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 453
    :try_start_0
    invoke-static {p1}, Lcom/tencent/open/utils/m;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 454
    invoke-virtual {p0, v0}, Lcom/tencent/open/d$c;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 457
    new-instance v0, Lcom/tencent/tauth/UiError;

    const/4 v1, -0x4

    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/open/d$c;->onError(Lcom/tencent/tauth/UiError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    .line 464
    check-cast p1, Lorg/json/JSONObject;

    .line 465
    invoke-static {}, Lcom/tencent/open/b/h;->a()Lcom/tencent/open/b/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/d$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_H5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "ret"

    const/4 v5, -0x6

    .line 466
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, p0, Lcom/tencent/open/d$c;->a:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    .line 465
    invoke-virtual/range {v0 .. v10}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 467
    iget-object v0, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 12

    .line 475
    iget-object v0, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/open/d$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/d$c;->a:Ljava/lang/String;

    :goto_0
    move-object v10, v0

    .line 476
    invoke-static {}, Lcom/tencent/open/b/h;->a()Lcom/tencent/open/b/h;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/open/d$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_H5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget v9, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/open/b/h;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    .line 478
    iget-object v0, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const/4 p1, 0x0

    .line 480
    iput-object p1, p0, Lcom/tencent/open/d$c;->e:Lcom/tencent/tauth/IUiListener;

    :cond_1
    return-void
.end method