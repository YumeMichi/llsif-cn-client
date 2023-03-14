.class public Lcom/alipay/sdk/tid/Tid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final key:Ljava/lang/String;

.field public final tid:Ljava/lang/String;

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/alipay/sdk/tid/Tid;->key:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/alipay/sdk/tid/Tid;->time:J

    return-void
.end method

.method public static isEmpty(Lcom/alipay/sdk/tid/Tid;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/tid/Tid;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTidSeed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/tid/Tid;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alipay/sdk/tid/Tid;->time:J

    return-wide v0
.end method
