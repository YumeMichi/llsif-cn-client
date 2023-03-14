.class public Lcom/greport/glog/model/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/greport/glog/Kvable;


# instance fields
.field public android_oaid:Ljava/lang/String;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/greport/glog/model/DeviceInfo;->android_oaid:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/greport/glog/model/DeviceInfo;->context:Landroid/content/Context;

    return-void
.end method

.method private static getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method


# virtual methods
.method public setOaidKey(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/greport/glog/model/DeviceInfo;->android_oaid:Ljava/lang/String;

    return-void
.end method

.method public toKvList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/greport/glog/model/DeviceInfo;->toKvList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toKvList(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 39
    new-instance p1, Lcom/greport/glog/Kv;

    iget-object v1, p0, Lcom/greport/glog/model/DeviceInfo;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/greport/glog/model/IMEIUtil;->getDeviceIdAndroidId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-direct {p1, v2, v1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance p1, Lcom/greport/glog/Kv;

    iget-object v1, p0, Lcom/greport/glog/model/DeviceInfo;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/greport/glog/model/IMEIUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {p1, v2, v1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p1, Lcom/greport/glog/Kv;

    iget-object v1, p0, Lcom/greport/glog/model/DeviceInfo;->android_oaid:Ljava/lang/String;

    invoke-static {v1}, Lcom/greport/glog/model/DeviceInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android_oaid"

    invoke-direct {p1, v2, v1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance p1, Lcom/greport/glog/Kv;

    iget-object v1, p0, Lcom/greport/glog/model/DeviceInfo;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/greport/glog/model/IMEIUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_imei"

    invoke-direct {p1, v2, v1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/greport/glog/util/ToString;->of(Lcom/greport/glog/Kvable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
