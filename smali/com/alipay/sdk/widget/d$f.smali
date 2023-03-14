.class public Lcom/alipay/sdk/widget/d$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/sdk/widget/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/json/JSONObject;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/widget/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alipay/sdk/widget/d$f;->e:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/d$f;->a:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p2, p0, Lcom/alipay/sdk/widget/d$f;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/alipay/sdk/widget/d$f;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/alipay/sdk/widget/d$f;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "\'"

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/alipay/sdk/widget/d$f;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/d$f;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alipay/sdk/util/l;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/widget/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/alipay/sdk/widget/d$f;->e:Z

    const/4 v2, 0x2

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/sdk/widget/d$f;->c:Ljava/lang/String;

    .line 16
    invoke-static {v3}, Lcom/alipay/sdk/widget/d$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/widget/d$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "javascript:window.AlipayJSBridge.callBackFromNativeFunc(\'%s\',\'%s\');"

    .line 18
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/widget/e;->a(Ljava/lang/String;)V

    return-void
.end method
