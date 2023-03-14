.class public Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;
.super Ljava/lang/Object;
.source "GShareSystemPrimalEngine.java"


# static fields
.field private static sm_systemPrimalEngine:Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;


# instance fields
.field private api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private m_context:Landroid/content/Context;

.field private final m_mapComponentName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ghome/gshare/GSharePlatformType;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    .line 56
    iput-object p1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;
    .locals 1

    .line 49
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->sm_systemPrimalEngine:Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->sm_systemPrimalEngine:Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;

    .line 52
    :cond_0
    sget-object p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->sm_systemPrimalEngine:Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;

    return-object p0
.end method

.method private getPlatformComponentName(Lcom/ghome/gshare/GSharePlatformType;)Landroid/content/ComponentName;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_5

    .line 62
    sget-object v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.tencent.mm"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sina.weibo"

    const-string v2, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qzone"

    const-string v2, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v0, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_mapComponentName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-object v0
.end method

.method private isPlatformSupportTheMedia(Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)Z
    .locals 2

    .line 91
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    invoke-virtual {p1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-eqz p1, :cond_6

    :cond_1
    return v0

    .line 105
    :cond_2
    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-nez p1, :cond_3

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz p1, :cond_6

    :cond_3
    return v0

    .line 100
    :cond_4
    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-eqz p1, :cond_6

    return v0

    .line 93
    :cond_5
    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareTextMedia;

    if-nez p1, :cond_7

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-nez p1, :cond_7

    instance-of p1, p2, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    return v0
.end method


# virtual methods
.method public share(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    .line 142
    iget-object v4, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    if-eqz v4, :cond_1d

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 145
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/ghome/gshare/GSharePlatformConfig;->getPlatform(Lcom/ghome/gshare/GSharePlatformType;)Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;

    move-result-object v4

    .line 146
    invoke-direct {v1, v2}, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->getPlatformComponentName(Lcom/ghome/gshare/GSharePlatformType;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v4, :cond_1b

    if-nez v5, :cond_1

    goto/16 :goto_d

    .line 157
    :cond_1
    iget-object v7, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/ghome/gshare/util/GShareUtils;->isInstalled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->getRelatedAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u672a\u5b89\u88c5\u3002"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 161
    invoke-interface {v3, v2, v0}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_3
    invoke-direct {v1, v2, v0}, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->isPlatformSupportTheMedia(Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/ghome/gshare/GSharePlatformConfig$GSharePlatform;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e0d\u652f\u6301\u5206\u4eab"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/ghome/gshare/share_media/GShareBaseMedia;->getMediaName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    .line 170
    invoke-interface {v3, v2, v0}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 172
    :cond_4
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    return-void

    .line 175
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    instance-of v8, v0, Lcom/ghome/gshare/share_media/GShareTextMedia;

    const-string v9, "android.intent.extra.TEXT"

    if-eqz v8, :cond_6

    const-string v6, "text/plain"

    .line 178
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    check-cast v0, Lcom/ghome/gshare/share_media/GShareTextMedia;

    invoke-virtual {v0}, Lcom/ghome/gshare/share_media/GShareTextMedia;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    .line 181
    :cond_6
    move-object v8, v0

    check-cast v8, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;

    .line 182
    invoke-virtual {v8}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->getMediaPaths()Ljava/util/List;

    move-result-object v10

    .line 183
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v0, "\u672a\u4f20\u5165\u5a92\u4f53\u8d44\u6e90\u3002"

    .line 184
    invoke-interface {v3, v2, v0}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    const-string v0, "\u901a\u8fc7\u7cfb\u7edf\u5206\u4eab\u5931\u8d25\uff0c\u672a\u4f20\u5165\u6240\u9700\u5206\u4eab\u5a92\u4f53\u7684\u8def\u5f84\u3002"

    .line 185
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "image/*"

    const-string v13, ".gshare.fileprovider"

    const-string v15, "android.intent.extra.STREAM"

    const/4 v14, 0x1

    if-ne v14, v11, :cond_b

    .line 189
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    new-instance v7, Ljava/io/File;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1e

    if-lt v11, v14, :cond_8

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v6, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-static {v6, v0, v7}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 197
    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 199
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 201
    instance-of v11, v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-nez v11, :cond_a

    instance-of v0, v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz v0, :cond_9

    goto :goto_0

    .line 208
    :cond_9
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 215
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 202
    :cond_a
    :goto_0
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    invoke-virtual {v4, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_7

    :cond_b
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    .line 223
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 226
    instance-of v14, v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-nez v14, :cond_d

    instance-of v6, v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz v6, :cond_c

    goto :goto_2

    :cond_c
    const/16 v16, 0x1

    goto :goto_3

    :cond_d
    :goto_2
    const/16 v16, 0x0

    .line 232
    :goto_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v10

    .line 235
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v10, v2, :cond_e

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 237
    iget-object v11, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-static {v11, v10, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 238
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 240
    :cond_e
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v14, :cond_10

    .line 242
    instance-of v10, v0, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz v10, :cond_f

    goto :goto_4

    .line 248
    :cond_f
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 249
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v11, 0x1

    goto :goto_6

    .line 243
    :cond_10
    :goto_4
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 244
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    move/from16 v11, v16

    :goto_6
    move-object/from16 v2, p2

    move-object/from16 v10, v17

    const/4 v6, 0x0

    goto :goto_1

    :cond_12
    if-eqz v11, :cond_13

    .line 258
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_13
    invoke-virtual {v4, v15, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 263
    :cond_14
    :goto_7
    invoke-virtual {v8}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_16

    const/4 v2, 0x4

    if-eq v0, v2, :cond_16

    const/4 v2, 0x5

    if-eq v0, v2, :cond_16

    goto :goto_8

    .line 266
    :cond_15
    invoke-virtual {v8}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Kdescription"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 272
    :cond_16
    invoke-virtual {v8}, Lcom/ghome/gshare/share_media/GShareSystemPrimalMedia;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_17

    .line 280
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 281
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 282
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 286
    :cond_17
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sina.weibo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 288
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    .line 290
    :cond_18
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_9
    :try_start_3
    const-string v0, "Share"

    .line 294
    invoke-static {v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 295
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 296
    iget-object v2, v1, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;->m_context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v3, :cond_19

    move-object/from16 v2, p2

    .line 298
    :try_start_4
    invoke-interface {v3, v2}, Lcom/ghome/gshare/listener/GShareListener;->onComplete(Lcom/ghome/gshare/GSharePlatformType;)V

    goto :goto_a

    :cond_19
    move-object/from16 v2, p2

    :goto_a
    const-string v0, "\u901a\u8fc7\u7cfb\u7edf\u5206\u4eab\u6210\u529f\u3002"

    .line 300
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v2, p2

    .line 303
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u901a\u8fc7\u7cfb\u7edf\u5206\u4eab\u5931\u8d25\uff0c\u542f\u52a8\u5bf9\u5e94\u7684APP\u5931\u8d25\uff0c\u5e73\u53f0\u7c7b\u578b\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0c\u9519\u8bef\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    if-eqz v3, :cond_1a

    .line 306
    invoke-interface {v3, v2, v0}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_1a
    :goto_c
    return-void

    .line 149
    :cond_1b
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6682\u4e0d\u652f\u6301\u5f53\u524d\u9009\u62e9\u7684\u5206\u4eab\u5e73\u53f0\u3002\u5e73\u53f0\u7c7b\u578b\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .line 150
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/ghome/gshare/util/GShareLogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_1c

    .line 152
    invoke-interface {v3, v2, v0}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    .line 154
    :cond_1c
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    :cond_1d
    :goto_e
    return-void
.end method
