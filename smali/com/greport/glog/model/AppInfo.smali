.class public Lcom/greport/glog/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Lcom/greport/glog/Kvable;


# instance fields
.field public channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field public device_id_server:Ljava/lang/String;

.field public file_uuid:Ljava/lang/String;

.field public gameId:I

.field public midMd5:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public phoneMd5:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public sdkAppId:I

.field public sdkVersion:Ljava/lang/String;

.field public sndaIdMd5:Ljava/lang/String;

.field public subChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const-string v0, "file_uuid"

    const-string v1, "productId"

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    .line 31
    iput-object v2, p0, Lcom/greport/glog/model/AppInfo;->file_uuid:Ljava/lang/String;

    .line 33
    iput-object v2, p0, Lcom/greport/glog/model/AppInfo;->device_id_server:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/greport/glog/model/AppInfo;->context:Landroid/content/Context;

    if-eqz p2, :cond_1

    :try_start_0
    const-string v2, "gameId"

    .line 41
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/greport/glog/model/AppInfo;->gameId:I

    const-string v2, "sdkAppId"

    .line 42
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/greport/glog/model/AppInfo;->sdkAppId:I

    const-string v2, "sdkVersion"

    .line 43
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/greport/glog/model/AppInfo;->sdkVersion:Ljava/lang/String;

    const-string v2, "channelId"

    .line 44
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/greport/glog/model/AppInfo;->channelId:Ljava/lang/String;

    const-string v2, "subChannelId"

    .line 45
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/greport/glog/model/AppInfo;->subChannelId:Ljava/lang/String;

    .line 46
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/greport/glog/model/AppInfo;->productId:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/greport/glog/model/AppInfo;->file_uuid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/greport/glog/model/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method private static getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public setDeviceIdServer(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/greport/glog/model/AppInfo;->device_id_server:Ljava/lang/String;

    return-void
.end method

.method public setPhoneMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/greport/glog/model/AppInfo;->phoneMd5:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/greport/glog/model/AppInfo;->midMd5:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/greport/glog/model/AppInfo;->sndaIdMd5:Ljava/lang/String;

    return-void
.end method

.method public toKvList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/AppInfo;->gameId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "game_id"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/AppInfo;->sdkAppId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sdk_appid"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->sdkVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->phoneMd5:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone_md5"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->midMd5:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid_md5"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->sndaIdMd5:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sndaid_md5"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->channelId:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "channel_id"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->subChannelId:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sub_channel_id"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/greport/glog/Kv;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "platform"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->device_id_server:Ljava/lang/String;

    invoke-static {v2}, Lcom/greport/glog/model/AppInfo;->getStringDefaultEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_id_server"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/greport/glog/model/AppInfo;->productId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->productId:Ljava/lang/String;

    const-string v3, "product_id"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/greport/glog/model/AppInfo;->file_uuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/AppInfo;->file_uuid:Ljava/lang/String;

    const-string v3, "gpop_guid"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {p0}, Lcom/greport/glog/util/ToString;->of(Lcom/greport/glog/Kvable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
