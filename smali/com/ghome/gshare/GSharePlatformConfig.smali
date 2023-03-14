.class public Lcom/ghome/gshare/GSharePlatformConfig;
.super Ljava/lang/Object;
.source "GSharePlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;,
        Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;,
        Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;,
        Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;
    }
.end annotation


# static fields
.field private static sm_mapShareConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ghome/gshare/GSharePlatformType;",
            "Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    .line 18
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    new-instance v2, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v4, "\u5fae\u4fe1"

    const-string v5, "\u5fae\u4fe1\u597d\u53cb"

    invoke-direct {v2, v3, v5, v4}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    new-instance v2, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v5, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-direct {v2, v3, v5, v4}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    new-instance v2, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v4, "QQ\u597d\u53cb"

    const-string v5, "\u817e\u8bafQQ"

    invoke-direct {v2, v3, v4, v5}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    new-instance v2, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v4, "QQ\u7a7a\u95f4"

    invoke-direct {v2, v3, v4, v4}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    new-instance v2, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string v4, "\u65b0\u6d6a\u5fae\u535a"

    invoke-direct {v2, v3, v4, v4}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;-><init>(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;
    .locals 1

    .line 161
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    return-object p0
.end method

.method public static setQQ(Ljava/lang/String;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    .line 49
    invoke-virtual {v0, p0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->setAppID(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    .line 51
    invoke-virtual {v0, p0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->setAppID(Ljava/lang/String;)V

    return-void
.end method

.method public static setSinaWB(Ljava/lang/String;)V
    .locals 2

    .line 60
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    .line 61
    invoke-virtual {v0, p0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method public static setWeixin(Ljava/lang/String;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    .line 37
    invoke-virtual {v0, p0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->setAppID(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/ghome/gshare/GSharePlatformConfig;->sm_mapShareConfigs:Ljava/util/Map;

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    .line 39
    invoke-virtual {v0, p0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->setAppID(Ljava/lang/String;)V

    return-void
.end method
