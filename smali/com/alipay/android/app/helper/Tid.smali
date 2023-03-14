.class public Lcom/alipay/android/app/helper/Tid;
.super Lcom/alipay/sdk/tid/Tid;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static fromRealTidModel(Lcom/alipay/sdk/tid/Tid;)Lcom/alipay/android/app/helper/Tid;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/Tid;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/Tid;->getTidSeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/Tid;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/helper/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
