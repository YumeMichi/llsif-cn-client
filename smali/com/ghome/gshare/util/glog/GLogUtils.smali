.class public Lcom/ghome/gshare/util/glog/GLogUtils;
.super Ljava/lang/Object;
.source "GLogUtils.java"


# static fields
.field public static GSHARE_EVENT:Ljava/lang/String; = "gshare_event"

.field private static final TAG:Ljava/lang/String; = "GLogUtils"

.field private static customData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static flowId:Ljava/lang/String;

.field private static lastPlatformType:Lcom/ghome/gshare/GSharePlatformType;

.field private static sceneName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCustomData()V
    .locals 1

    .line 68
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static doShare(Landroid/content/Context;ZLcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)V
    .locals 4

    .line 91
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShare (isShareSDK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  platformType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  shareMedia:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/ghome/gshare/share_media/GShareBaseMedia;->getMediaName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_1

    .line 93
    sget-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    const-string p1, "doShare context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    const/16 v1, 0x20

    if-nez v0, :cond_2

    .line 97
    invoke-static {v1}, Lcom/ghome/gshare/util/StringUtils;->createFlowId(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_2
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->lastPlatformType:Lcom/ghome/gshare/GSharePlatformType;

    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-eq v0, v3, :cond_3

    .line 100
    invoke-static {v1}, Lcom/ghome/gshare/util/StringUtils;->createFlowId(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    .line 103
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    sget-object v1, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    const-string v3, "flow_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 105
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SDK:Lcom/ghome/gshare/util/glog/GShareActive;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SYS:Lcom/ghome/gshare/util/glog/GShareActive;

    :goto_2
    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareActive;->id:Ljava/lang/String;

    const-string v1, "active_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareWebMedia;

    const-string v1, "page_name"

    const-string v3, "page_id"

    if-eqz p1, :cond_6

    .line 108
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->WEB:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->WEB:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 110
    :cond_6
    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-eqz p1, :cond_7

    .line 111
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->TEXT:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->TEXT:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 113
    :cond_7
    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    if-nez p1, :cond_d

    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-eqz p1, :cond_8

    goto :goto_5

    .line 116
    :cond_8
    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    if-nez p1, :cond_c

    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz p1, :cond_9

    goto :goto_4

    .line 119
    :cond_9
    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-nez p1, :cond_b

    instance-of p1, p3, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-eqz p1, :cond_a

    goto :goto_3

    .line 123
    :cond_a
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->UNKNOWN:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->UNKNOWN:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 120
    :cond_b
    :goto_3
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->VIDEO:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->VIDEO:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 117
    :cond_c
    :goto_4
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->AUDIO:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->AUDIO:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 114
    :cond_d
    :goto_5
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->PIC:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->id:Ljava/lang/String;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object p1, Lcom/ghome/gshare/util/glog/GSharePage;->PIC:Lcom/ghome/gshare/util/glog/GSharePage;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GSharePage;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :goto_6
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const-string p3, "button_name"

    const-string v1, "button_id"

    if-ne p2, p1, :cond_e

    .line 128
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 130
    :cond_e
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, p1, :cond_f

    .line 131
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT_CIRCLE:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->WECHAT_CIRCLE:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 133
    :cond_f
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, p1, :cond_10

    .line 134
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->QQ:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->QQ:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 136
    :cond_10
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, p1, :cond_11

    .line 137
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->QZONE:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->QZONE:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 139
    :cond_11
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, p1, :cond_12

    .line 140
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->SINA:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->SINA:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 142
    :cond_12
    sget-object p1, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, p1, :cond_13

    .line 143
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->PANEL:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object p1, Lcom/ghome/gshare/util/glog/GShareButton;->PANEL:Lcom/ghome/gshare/util/glog/GShareButton;

    iget-object p1, p1, Lcom/ghome/gshare/util/glog/GShareButton;->name:Ljava/lang/String;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_13
    :goto_7
    invoke-static {v0, v2}, Lcom/ghome/gshare/util/glog/GLogUtils;->handleApiParams(Ljava/util/Map;Z)V

    .line 149
    sget-object p1, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doShare "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ghome/gshare/util/StringUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p3, v1}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    sput-object p2, Lcom/ghome/gshare/util/glog/GLogUtils;->lastPlatformType:Lcom/ghome/gshare/GSharePlatformType;

    .line 151
    sget-object p1, Lcom/ghome/gshare/util/glog/GLogUtils;->GSHARE_EVENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/greport/glog/GLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static handleApiParams(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->sceneName:Ljava/lang/String;

    invoke-static {v0}, Lcom/ghome/gshare/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 179
    sget-object v1, Lcom/ghome/gshare/util/glog/GLogUtils;->sceneName:Ljava/lang/String;

    invoke-static {v1}, Lcom/ghome/gshare/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    sget-object v1, Lcom/ghome/gshare/util/glog/GLogUtils;->sceneName:Ljava/lang/String;

    const-string v2, "scene_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "intent_to_share"

    const-string v1, "1"

    .line 183
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "{}"

    .line 185
    invoke-static {v0, p1}, Lcom/ghome/gshare/util/glog/GLogUtils;->getJsonParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lcom/ghome/gshare/util/StringUtils;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "api_params"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static intentToShare(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    .line 78
    sget-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    const-string v0, "intentToShare context is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 82
    invoke-static {v0, v1}, Lcom/ghome/gshare/util/glog/GLogUtils;->handleApiParams(Ljava/util/Map;Z)V

    .line 83
    sget-object v1, Lcom/ghome/gshare/util/glog/GLogUtils;->GSHARE_EVENT:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/greport/glog/GLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setCustomDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/ghome/gshare/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ghome/gshare/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->customData:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setSceneName(Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/ghome/gshare/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 49
    :cond_0
    sput-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public static shareResult(Landroid/content/Context;Lcom/ghome/gshare/util/glog/GShareResult;Ljava/lang/String;)V
    .locals 4

    .line 158
    sget-object v0, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareResult(result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/ghome/gshare/util/glog/GShareResult;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    .line 160
    sget-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    const-string p1, "shareResult context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    sget-object v1, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_RESULT:Lcom/ghome/gshare/util/glog/GShareActive;

    iget-object v1, v1, Lcom/ghome/gshare/util/glog/GShareActive;->id:Ljava/lang/String;

    const-string v3, "active_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget p1, p1, Lcom/ghome/gshare/util/glog/GShareResult;->code:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "api_return_code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    if-nez p2, :cond_1

    move-object p2, p1

    :cond_1
    const-string v1, "api_return_msg"

    .line 166
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object p2, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    :goto_0
    const-string p2, "flow_id"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object p1, Lcom/ghome/gshare/util/glog/GLogUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareResult "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/ghome/gshare/util/StringUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-object p1, Lcom/ghome/gshare/util/glog/GLogUtils;->GSHARE_EVENT:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/greport/glog/GLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 170
    sput-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->flowId:Ljava/lang/String;

    .line 171
    sput-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->lastPlatformType:Lcom/ghome/gshare/GSharePlatformType;

    .line 172
    sput-object p0, Lcom/ghome/gshare/util/glog/GLogUtils;->sceneName:Ljava/lang/String;

    return-void
.end method
