.class public Lcom/ghome/gshare/GShareInterface;
.super Ljava/lang/Object;
.source "GShareInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;,
        Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;
    }
.end annotation


# static fields
.field private static final GSHARE_SDK_VERSION:Ljava/lang/String; = "1"

.field private static final QQ_PLATFORM_LARGE_ASSORTMENT_TYPE:I = 0x1

.field public static QQ_PLATFORM_SUPPORT_OPTION:I = 0x0

.field public static QZONE_PLATFORM_SUPPORT_OPTION:I = 0x0

.field private static final SINA_WB_PLATFORM_LARGE_ASSORTMENT_TYPE:I = 0x2

.field public static SINA_WB_PLATFORM_SUPPORT_OPTION:I

.field public static WEIXIN_CIRCLE_PLATFORM_SUPPORT_OPTION:I

.field private static final WEIXIN_PLATFORM_LARGE_ASSORTMENT_TYPE:I

.field public static WEIXIN_PLATFORM_SUPPORT_OPTION:I

.field private static m_GShareDialog_Imgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m_GShareDialog_Texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_GShareDialog_platformTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghome/gshare/GSharePlatformType;",
            ">;"
        }
    .end annotation
.end field

.field private static m_bIsChannelShareEnvInitSucceed:Z

.field private static m_bIsSubmitDataConfigInitSucceed:Z

.field private static m_context:Landroid/content/Context;

.field private static m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

.field private static m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

.field private static m_mapPackageNameShareInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_mapShareEngine:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ghome/gshare/GSharePlatformType;",
            "Lcom/ghome/gshare/GShareBaseEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static m_platformOptions:I

.field private static m_strAppVersion:Ljava/lang/String;

.field private static m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

.field private static shareEngine:Lcom/ghome/gshare/GShareBaseEngine;

.field private static sm_shareInterface:Lcom/ghome/gshare/GShareInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    const/4 v1, 0x0

    .line 66
    sput-boolean v1, Lcom/ghome/gshare/GShareInterface;->m_bIsSubmitDataConfigInitSucceed:Z

    .line 68
    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_strAppVersion:Ljava/lang/String;

    .line 76
    sput-boolean v1, Lcom/ghome/gshare/GShareInterface;->m_bIsChannelShareEnvInitSucceed:Z

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/ghome/gshare/GShareInterface;->m_mapPackageNameShareInfos:Ljava/util/Map;

    .line 79
    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    .line 80
    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    const/4 v0, 0x1

    .line 82
    sput v0, Lcom/ghome/gshare/GShareInterface;->WEIXIN_PLATFORM_SUPPORT_OPTION:I

    const/4 v0, 0x2

    .line 83
    sput v0, Lcom/ghome/gshare/GShareInterface;->WEIXIN_CIRCLE_PLATFORM_SUPPORT_OPTION:I

    const/4 v0, 0x4

    .line 84
    sput v0, Lcom/ghome/gshare/GShareInterface;->QQ_PLATFORM_SUPPORT_OPTION:I

    const/16 v0, 0x8

    .line 85
    sput v0, Lcom/ghome/gshare/GShareInterface;->QZONE_PLATFORM_SUPPORT_OPTION:I

    const/16 v0, 0x10

    .line 86
    sput v0, Lcom/ghome/gshare/GShareInterface;->SINA_WB_PLATFORM_SUPPORT_OPTION:I

    .line 87
    sget v0, Lcom/ghome/gshare/GShareInterface;->WEIXIN_PLATFORM_SUPPORT_OPTION:I

    sget v1, Lcom/ghome/gshare/GShareInterface;->WEIXIN_CIRCLE_PLATFORM_SUPPORT_OPTION:I

    or-int/2addr v0, v1

    sget v1, Lcom/ghome/gshare/GShareInterface;->QQ_PLATFORM_SUPPORT_OPTION:I

    or-int/2addr v0, v1

    sget v1, Lcom/ghome/gshare/GShareInterface;->QZONE_PLATFORM_SUPPORT_OPTION:I

    or-int/2addr v0, v1

    sget v1, Lcom/ghome/gshare/GShareInterface;->SINA_WB_PLATFORM_SUPPORT_OPTION:I

    or-int/2addr v0, v1

    sput v0, Lcom/ghome/gshare/GShareInterface;->m_platformOptions:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "current share engine version name is:1"

    .line 97
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "the context param is null."

    .line 99
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    sput-object p1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    const/4 p1, 0x5

    .line 107
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5fae\u4fe1\u597d\u53cb"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "\u5fae\u4fe1\u670b\u53cb\u5708"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "QQ\u597d\u53cb"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "QQ\u7a7a\u95f4"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "\u65b0\u6d6a\u5fae\u535a"

    aput-object v6, v0, v5

    .line 109
    sget-object v6, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    const-string v9, "ic_share_wx"

    invoke-static {v6, v9, v8, v7}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 110
    sget-object v7, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ic_share_wx_friends"

    invoke-static {v7, v10, v8, v9}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 111
    sget-object v9, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ic_share_qq"

    invoke-static {v9, v11, v8, v10}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 112
    sget-object v10, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ic_share_qq_space"

    invoke-static {v10, v12, v8, v11}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 113
    sget-object v11, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ic_share_xl"

    invoke-static {v11, v13, v8, v12}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 114
    new-array v11, p1, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    .line 116
    new-array p1, p1, [Lcom/ghome/gshare/GSharePlatformType;

    sget-object v6, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v6, p1, v1

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, p1, v2

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, p1, v3

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, p1, v4

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, p1, v5

    .line 118
    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->initPhotoError()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/ghome/gshare/GShareInterface;->parseChannelsCloudConfig(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapPackageNameShareInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;)Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;
    .locals 0

    .line 59
    sput-object p0, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    return-object p0
.end method

.method static synthetic access$300()Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .line 59
    sput-boolean p0, Lcom/ghome/gshare/GShareInterface;->m_bIsChannelShareEnvInitSucceed:Z

    return p0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .line 59
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    return-object v0
.end method

.method public static clearCustomData()V
    .locals 0

    .line 255
    invoke-static {}, Lcom/ghome/gshare/util/glog/GLogUtils;->clearCustomData()V

    return-void
.end method

.method private static doRecordShare(Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;Ljava/lang/String;)V
    .locals 2

    .line 1085
    new-instance v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    invoke-direct {v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;-><init>()V

    const-string v1, "\u89c6\u9891\u5206\u4eab."

    .line 1086
    invoke-virtual {v0, v1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;->setDescription(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, p2}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;->addMediaPath(Ljava/lang/String;)V

    .line 1088
    invoke-static {p0}, Lcom/ghome/gshare/GShareInterface;->getInstance(Landroid/content/Context;)Lcom/ghome/gshare/GShareInterface;

    move-result-object p2

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {p2, p0, v1, v0, p1}, Lcom/ghome/gshare/GShareInterface;->doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    return-void
.end method

.method public static free()V
    .locals 0

    .line 154
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->destroyRecordService()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ghome/gshare/GShareInterface;
    .locals 1

    .line 147
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->sm_shareInterface:Lcom/ghome/gshare/GShareInterface;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/ghome/gshare/GShareInterface;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/GShareInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->sm_shareInterface:Lcom/ghome/gshare/GShareInterface;

    .line 150
    :cond_0
    sget-object p0, Lcom/ghome/gshare/GShareInterface;->sm_shareInterface:Lcom/ghome/gshare/GShareInterface;

    return-object p0
.end method

.method public static getRecordFilePath()Ljava/lang/String;
    .locals 1

    .line 1081
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->getRecordFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordStatus()I
    .locals 1

    .line 1063
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->getRecordStatus()I

    move-result v0

    return v0
.end method

.method public static getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;
    .locals 2

    .line 263
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 264
    sget-object v0, Lcom/ghome/gshare/GShareInterface$4;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    invoke-virtual {p0}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    new-instance v1, Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-direct {v1}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    :cond_1
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    new-instance v1, Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-direct {v1}, Lcom/ghome/gshare/qq/GShareQQEngine;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_2
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    new-instance v1, Lcom/ghome/gshare/qq/GShareQQEngine;

    invoke-direct {v1}, Lcom/ghome/gshare/qq/GShareQQEngine;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_3
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    new-instance v1, Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-direct {v1}, Lcom/ghome/gshare/weixin/GShareWXEngine;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_4
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    new-instance v1, Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-direct {v1}, Lcom/ghome/gshare/weixin/GShareWXEngine;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_5
    :goto_0
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/GShareBaseEngine;

    return-object p0
.end method

.method public static initChannelShareEnv(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 349
    sget-boolean v0, Lcom/ghome/gshare/GShareInterface;->m_bIsChannelShareEnvInitSucceed:Z

    if-eqz v0, :cond_0

    const-string p0, "the channel share env is already initialized succeed."

    .line 350
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ghome/gshare/GShareInterface$1;

    invoke-direct {v1, p1, p0}, Lcom/ghome/gshare/GShareInterface$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 419
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static initPhotoError()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1137
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 1138
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1139
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    return-void
.end method

.method public static initRecordService(Landroid/app/Activity;)V
    .locals 0

    .line 1072
    invoke-static {p0}, Lcom/ghome/gshare/record/GRecordEngine;->initRecordService(Landroid/app/Activity;)V

    return-void
.end method

.method public static intentToShare(Ljava/lang/String;)V
    .locals 0

    .line 167
    invoke-static {p0}, Lcom/ghome/gshare/GShareInterface;->setSceneName(Ljava/lang/String;)V

    .line 169
    sget-object p0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {p0}, Lcom/ghome/gshare/util/glog/GLogUtils;->intentToShare(Landroid/content/Context;)V

    return-void
.end method

.method private static isMatchSignatureMD5()Z
    .locals 5

    .line 506
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apk-MD5:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], config-MD5:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    iget-object v3, v3, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Signature"

    invoke-static {v4, v2, v3}, Lcom/ghome/gshare/util/GShareLogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    iget-object v2, v2, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    iget-object v2, v2, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private static isSupportedShareWithVendorSDK(Lcom/ghome/gshare/GSharePlatformType;)Z
    .locals 6

    .line 525
    invoke-static {p0}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 531
    :cond_0
    sget-object v2, Lcom/ghome/gshare/GShareInterface$4;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    invoke-virtual {p0}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_5

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    const/4 v3, 0x3

    if-eq p0, v3, :cond_3

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    const/4 v3, 0x5

    if-eq p0, v3, :cond_1

    goto/16 :goto_1

    .line 563
    :cond_1
    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getAppKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 564
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 573
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "the com.sina.weibo.sdk.web.WbShareTransActivity exist status is:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_2
    const-string p0, "the sina weibo app id is does not set."

    .line 575
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 547
    :cond_3
    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareQQPlatform;->getAppID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 548
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "com.tencent.tauth.Tencent"

    .line 549
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->isClassExist(Ljava/lang/String;)Z

    move-result p0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the com.tencent.tauth.Tencent exist status is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    const-string v3, "com.tencent.tauth.AuthActivity"

    invoke-static {v0, v3}, Lcom/ghome/gshare/util/GShareBaseUtility;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the com.tencent.tauth.AuthActivity exist status is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 555
    sget-object v3, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    const-string v4, "com.tencent.connect.common.AssistActivity"

    invoke-static {v3, v4}, Lcom/ghome/gshare/util/GShareBaseUtility;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the com.tencent.connect.common.AssistActivity exist status is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_4
    const-string p0, "the qq app id is does not set."

    .line 559
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_5
    check-cast v0, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;

    invoke-virtual {v0}, Lcom/ghome/gshare/GSharePlatformConfig$GShareWeiXinPlatform;->getAppID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 535
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "com.tencent.mm.opensdk.openapi.IWXAPI"

    .line 536
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->isClassExist(Ljava/lang/String;)Z

    move-result p0

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the com.tencent.mm.opensdk.openapi.IWXAPI exist status is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    const-string v3, "com.ghome.gshare.weixin.GShareWXCallbackActivity"

    invoke-static {v0, v3}, Lcom/ghome/gshare/util/GShareBaseUtility;->isActivityExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the com.ghome.gshare.weixin.GShareWXCallbackActivity exist status is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p0, "the wechat app id is does not set."

    .line 542
    invoke-static {p0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz p0, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 958
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_mapShareEngine:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 959
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghome/gshare/GShareBaseEngine;

    invoke-virtual {v1, p0, p1, p2}, Lcom/ghome/gshare/GShareBaseEngine;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 961
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ghome/gshare/record/GRecordEngine;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public static onCreateWXEntryActivity(Landroid/app/Activity;)V
    .locals 1

    .line 932
    new-instance v0, Lcom/ghome/gshare/weixin/GShareWXCallback;

    invoke-direct {v0}, Lcom/ghome/gshare/weixin/GShareWXCallback;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    .line 933
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    invoke-virtual {v0, p0}, Lcom/ghome/gshare/weixin/GShareWXCallback;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method public static onNewIntentWXEntryActivity(Landroid/app/Activity;)V
    .locals 1

    .line 943
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Lcom/ghome/gshare/weixin/GShareWXCallback;

    invoke-direct {v0}, Lcom/ghome/gshare/weixin/GShareWXCallback;-><init>()V

    sput-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    .line 946
    :cond_0
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_wxCallback:Lcom/ghome/gshare/weixin/GShareWXCallback;

    invoke-virtual {v0, p0}, Lcom/ghome/gshare/weixin/GShareWXCallback;->onNewIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 973
    invoke-static {p0, p1, p2}, Lcom/ghome/gshare/record/GRecordEngine;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method private static parseChannelsCloudConfig(Ljava/lang/String;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;",
            ">;"
        }
    .end annotation

    const-string v0, "gshare_infos"

    const-string v1, "signature"

    const-string v2, "package_name"

    const-string v3, "channel_id"

    const-string v4, "channels_gshare_infos"

    const-string v5, "default_gshare_infos"

    .line 429
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 431
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "app_id"

    const-string v11, "platform_id"

    const/4 v12, 0x0

    if-nez v8, :cond_3

    .line 433
    :try_start_1
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 434
    instance-of v8, v5, Lorg/json/JSONArray;

    if-eqz v8, :cond_3

    .line 435
    check-cast v5, Lorg/json/JSONArray;

    const/4 v8, 0x0

    .line 436
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_3

    .line 437
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 438
    new-instance v14, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;

    invoke-direct {v14, v12}, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;-><init>(Lcom/ghome/gshare/GShareInterface$1;)V

    .line 439
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 440
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v14, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_nPlatformID:I

    .line 442
    :cond_0
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 443
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v14, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    .line 445
    :cond_1
    sget-object v13, Lcom/ghome/gshare/GShareInterface;->m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    if-nez v13, :cond_2

    .line 446
    new-instance v13, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    invoke-direct {v13, v12}, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;-><init>(Lcom/ghome/gshare/GShareInterface$1;)V

    sput-object v13, Lcom/ghome/gshare/GShareInterface;->m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    .line 448
    :cond_2
    sget-object v13, Lcom/ghome/gshare/GShareInterface;->m_defaultChannelInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    iget-object v13, v13, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 453
    :cond_3
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 454
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 455
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_b

    .line 456
    check-cast v4, Lorg/json/JSONArray;

    const/4 v5, 0x0

    .line 457
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_b

    .line 458
    new-instance v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    invoke-direct {v7, v12}, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;-><init>(Lcom/ghome/gshare/GShareInterface$1;)V

    .line 459
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 460
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 461
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strChannelID:Ljava/lang/String;

    .line 463
    :cond_4
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 464
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strPackageName:Ljava/lang/String;

    .line 466
    :cond_5
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 467
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    .line 469
    :cond_6
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 470
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 471
    instance-of v13, v8, Lorg/json/JSONArray;

    if-eqz v13, :cond_9

    .line 472
    check-cast v8, Lorg/json/JSONArray;

    const/4 v13, 0x0

    .line 473
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_9

    .line 474
    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 475
    new-instance v15, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;

    invoke-direct {v15, v12}, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;-><init>(Lcom/ghome/gshare/GShareInterface$1;)V

    .line 476
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 477
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v15, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_nPlatformID:I

    .line 479
    :cond_7
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 480
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v15, Lcom/ghome/gshare/GShareInterface$GShareChannelSharePlatformInfo;->m_strAppID:Ljava/lang/String;

    .line 482
    :cond_8
    iget-object v9, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_lstSharePlatformsInfos:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 486
    :cond_9
    iget-object v8, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strChannelID:Ljava/lang/String;

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v8, Lcom/ghome/gshare/GShareInterface;->m_mapPackageNameShareInfos:Ljava/util/Map;

    iget-object v9, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strPackageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 488
    sget-object v8, Lcom/ghome/gshare/GShareInterface;->m_mapPackageNameShareInfos:Ljava/util/Map;

    iget-object v9, v7, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 495
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b
    return-object v6
.end method

.method public static setCustomDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    invoke-static {p0, p1}, Lcom/ghome/gshare/util/glog/GLogUtils;->setCustomDataValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setGShareEngine(Lcom/ghome/gshare/GShareBaseEngine;)V
    .locals 0

    .line 1156
    sput-object p0, Lcom/ghome/gshare/GShareInterface;->shareEngine:Lcom/ghome/gshare/GShareBaseEngine;

    return-void
.end method

.method public static setPlatformSupportOptions(I)V
    .locals 4

    .line 989
    sput p0, Lcom/ghome/gshare/GShareInterface;->m_platformOptions:I

    .line 990
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 991
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 992
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 993
    sget v0, Lcom/ghome/gshare/GShareInterface;->WEIXIN_PLATFORM_SUPPORT_OPTION:I

    and-int/2addr v0, p0

    const-string v1, "drawable"

    if-eqz v0, :cond_0

    .line 994
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    const-string v2, "\u5fae\u4fe1\u597d\u53cb"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_share_wx"

    invoke-static {v0, v3, v1, v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 996
    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_0
    sget v0, Lcom/ghome/gshare/GShareInterface;->WEIXIN_CIRCLE_PLATFORM_SUPPORT_OPTION:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 1000
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    const-string v2, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_share_wx_friends"

    invoke-static {v0, v3, v1, v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1002
    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_1
    sget v0, Lcom/ghome/gshare/GShareInterface;->QQ_PLATFORM_SUPPORT_OPTION:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_2

    .line 1006
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    const-string v2, "QQ\u597d\u53cb"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_share_qq"

    invoke-static {v0, v3, v1, v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1008
    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    :cond_2
    sget v0, Lcom/ghome/gshare/GShareInterface;->QZONE_PLATFORM_SUPPORT_OPTION:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_3

    .line 1012
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    const-string v2, "QQ\u7a7a\u95f4"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_share_qq_space"

    invoke-static {v0, v3, v1, v2}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1014
    sget-object v2, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    sget-object v2, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_3
    sget v0, Lcom/ghome/gshare/GShareInterface;->SINA_WB_PLATFORM_SUPPORT_OPTION:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    .line 1018
    sget-object p0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Texts:Ljava/util/List;

    const-string v0, "\u65b0\u6d6a\u5fae\u535a"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    sget-object p0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ic_share_xl"

    invoke-static {p0, v2, v1, v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 1020
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_Imgs:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    sget-object p0, Lcom/ghome/gshare/GShareInterface;->m_GShareDialog_platformTypes:Ljava/util/List;

    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static setQQAppID(Ljava/lang/String;)V
    .locals 2

    .line 308
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "into setQQAppID API, current package name is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app signature is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Tencent QQ app id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 311
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    invoke-static {p0}, Lcom/ghome/gshare/GSharePlatformConfig;->setQQ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setSceneName(Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-static {p0}, Lcom/ghome/gshare/util/glog/GLogUtils;->setSceneName(Ljava/lang/String;)V

    return-void
.end method

.method public static setSinaWBAppKey(Ljava/lang/String;)V
    .locals 2

    .line 322
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "into setSinaWBAppKey API, current package name is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app signature is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Sina weibo app key is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 325
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    invoke-static {p0}, Lcom/ghome/gshare/GSharePlatformConfig;->setSinaWB(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setWXAppID(Ljava/lang/String;)V
    .locals 2

    .line 293
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "into setWXAppID API, current package name is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app signature is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->getSignatureMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", WX app id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 296
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    invoke-static {p0}, Lcom/ghome/gshare/GSharePlatformConfig;->setWeixin(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static startRecord(Lcom/ghome/gshare/listener/GShareRecordListener;)V
    .locals 0

    .line 1031
    invoke-static {p0}, Lcom/ghome/gshare/record/GRecordEngine;->startRecord(Lcom/ghome/gshare/listener/GShareRecordListener;)V

    return-void
.end method

.method public static stopRecord()V
    .locals 0

    .line 1054
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->stopRecord()Z

    return-void
.end method

.method public static stopRecordAndShare(Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 3

    .line 1041
    invoke-static {}, Lcom/ghome/gshare/record/GRecordEngine;->stopRecord()Z

    move-result v0

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordAndShare : GRecordEngine.stopRecord() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1044
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->getRecordFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShare  = strRecordSavePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 1046
    invoke-static {p0, p1, v0}, Lcom/ghome/gshare/GShareInterface;->doRecordShare(Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static translateMediaFromSDKToPrimal(Lcom/ghome/gshare/share_media/GShareBaseMedia;)Lcom/ghome/gshare/share_media/GShareBaseMedia;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 746
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get external files dir failed. Exception message is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const-string v1, ""

    .line 753
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 755
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 757
    :cond_1
    instance-of v2, p0, Lcom/ghome/gshare/share_media/GShareWebMedia;

    if-eqz v2, :cond_2

    .line 758
    new-instance v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-direct {v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;-><init>()V

    .line 759
    check-cast p0, Lcom/ghome/gshare/share_media/GShareWebMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 760
    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareWebMedia;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->setDescription(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v2, v1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->addMediaPath(Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_2
    instance-of v2, p0, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-eqz v2, :cond_3

    move-object v0, p0

    goto :goto_1

    .line 764
    :cond_3
    instance-of v2, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    if-eqz v2, :cond_4

    .line 765
    new-instance v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-direct {v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;-><init>()V

    .line 766
    check-cast p0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 767
    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->setDescription(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v2, v1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->addMediaPath(Ljava/lang/String;)V

    goto :goto_1

    .line 769
    :cond_4
    instance-of v2, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    if-eqz v2, :cond_5

    .line 770
    new-instance v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-direct {v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;-><init>()V

    .line 771
    check-cast p0, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 772
    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->setDescription(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v2, v1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->addMediaPath(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_5
    instance-of v2, p0, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-eqz v2, :cond_6

    .line 775
    new-instance v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-direct {v0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;-><init>()V

    .line 776
    check-cast p0, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 777
    move-object v2, v0

    check-cast v2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    invoke-virtual {p0}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->setDescription(Ljava/lang/String;)V

    .line 778
    invoke-virtual {v2, v1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;->addMediaPath(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-object v0
.end method


# virtual methods
.method public doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 807
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 809
    new-instance v5, Lcom/ghome/gshare/GShareLogListener;

    invoke-direct {v5, p1, p4}, Lcom/ghome/gshare/GShareLogListener;-><init>(Landroid/content/Context;Lcom/ghome/gshare/listener/GShareListener;)V

    .line 810
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "into doShareWithSystemPrimal, thread id:"

    invoke-static {v3, v0, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 813
    new-instance v0, Lcom/ghome/gshare/GShareInterface$3;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p3

    move-object v6, p2

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/ghome/gshare/GShareInterface$3;-><init>(Lcom/ghome/gshare/GShareInterface;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/GShareLogListener;Lcom/ghome/gshare/GSharePlatformType;Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 896
    :cond_0
    invoke-static {p1, v1, p2, p3}, Lcom/ghome/gshare/util/glog/GLogUtils;->doShare(Landroid/content/Context;ZLcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "share error, because the share media is null."

    .line 900
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const-string p1, "\u5206\u4eab\u51fa\u9519,\u56e0\u4f20\u5165\u7684Media\u4e3a\u7a7a."

    .line 901
    invoke-virtual {v5, p2, p1}, Lcom/ghome/gshare/GShareLogListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    return-void

    .line 906
    :cond_2
    invoke-static {p1, v1, p2, p3}, Lcom/ghome/gshare/util/glog/GLogUtils;->doShare(Landroid/content/Context;ZLcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)V

    .line 908
    sget-object p4, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {p4}, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->getInstance(Landroid/content/Context;)Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 910
    invoke-virtual {p4, p1, p2, p3, v5}, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->share(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    :cond_3
    return-void
.end method

.method public doShareWithVendorSDK(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 603
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "into doShareWithVendorSDK, thread id:"

    invoke-static {v3, v0, v2}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    new-instance v8, Lcom/ghome/gshare/GShareLogListener;

    invoke-direct {v8, p1, p4}, Lcom/ghome/gshare/GShareLogListener;-><init>(Landroid/content/Context;Lcom/ghome/gshare/listener/GShareListener;)V

    .line 605
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 607
    new-instance v0, Lcom/ghome/gshare/GShareInterface$2;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p3

    move-object v7, p1

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/ghome/gshare/GShareInterface$2;-><init>(Lcom/ghome/gshare/GShareInterface;Lcom/ghome/gshare/share_media/GShareBaseMedia;Landroid/app/Activity;Lcom/ghome/gshare/GShareLogListener;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/listener/GShareListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 695
    :cond_0
    invoke-static {p1, v2, p2, p3}, Lcom/ghome/gshare/util/glog/GLogUtils;->doShare(Landroid/content/Context;ZLcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string p1, "share error, because the share media is null."

    .line 699
    invoke-static {p1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const-string p1, "\u5206\u4eab\u51fa\u9519,\u56e0\u4f20\u5165\u7684Media\u4e3a\u7a7a."

    .line 700
    invoke-virtual {v8, p2, p1}, Lcom/ghome/gshare/GShareLogListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    return-void

    .line 704
    :cond_2
    invoke-static {p2}, Lcom/ghome/gshare/GShareInterface;->isSupportedShareWithVendorSDK(Lcom/ghome/gshare/GSharePlatformType;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "current app does not support sdk share, we will use the system primal share instead."

    .line 705
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 710
    :cond_3
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 712
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->isMatchSignatureMD5()Z

    move-result v0

    if-nez v0, :cond_4

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current app signatureMD5 is not match, curChannelSignature is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ghome/gshare/GShareInterface;->m_curChannelShareInfos:Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;

    iget-object v1, v1, Lcom/ghome/gshare/GShareInterface$GShareChannelInfos;->m_strSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", we will use the system primal share instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 718
    invoke-static {p3}, Lcom/ghome/gshare/GShareInterface;->translateMediaFromSDKToPrimal(Lcom/ghome/gshare/share_media/GShareBaseMedia;)Lcom/ghome/gshare/share_media/GShareBaseMedia;

    move-result-object p3

    .line 719
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ghome/gshare/GShareInterface;->doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    return-void

    .line 725
    :cond_5
    invoke-static {p1, v2, p2, p3}, Lcom/ghome/gshare/util/glog/GLogUtils;->doShare(Landroid/content/Context;ZLcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)V

    .line 728
    invoke-static {p2}, Lcom/ghome/gshare/GShareInterface;->getShareEngine(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GShareBaseEngine;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 730
    instance-of v0, p4, Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_6

    .line 731
    invoke-static {p4}, Lcom/ghome/gshare/GShareInterface;->setGShareEngine(Lcom/ghome/gshare/GShareBaseEngine;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 733
    invoke-static {v0}, Lcom/ghome/gshare/GShareInterface;->setGShareEngine(Lcom/ghome/gshare/GShareBaseEngine;)V

    .line 735
    :goto_0
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->m_context:Landroid/content/Context;

    invoke-static {p2}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lcom/ghome/gshare/GShareBaseEngine;->onCreate(Landroid/content/Context;Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;)V

    .line 736
    invoke-virtual {p4, p1, p3, v8}, Lcom/ghome/gshare/GShareBaseEngine;->share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    :cond_7
    return-void
.end method

.method public onShareCallback(Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;)V
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShareCallback, resp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 1144
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->shareEngine:Lcom/ghome/gshare/GShareBaseEngine;

    if-nez v0, :cond_0

    return-void

    .line 1147
    :cond_0
    instance-of v0, v0, Lcom/ghome/gshare/weixin/GShareWXEngine;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1148
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Wechat sharing completed"

    invoke-static {v1, v0}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    sget-object v0, Lcom/ghome/gshare/GShareInterface;->shareEngine:Lcom/ghome/gshare/GShareBaseEngine;

    check-cast v0, Lcom/ghome/gshare/weixin/GShareWXEngine;

    invoke-virtual {v0, p1}, Lcom/ghome/gshare/weixin/GShareWXEngine;->onShareCallback(Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Resp;)V

    :cond_1
    return-void
.end method
