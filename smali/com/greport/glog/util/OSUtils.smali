.class public Lcom/greport/glog/util/OSUtils;
.super Ljava/lang/Object;
.source "OSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/greport/glog/util/OSUtils$ROM_TYPE;
    }
.end annotation


# static fields
.field private static final KEY_EMUI_API_LEVEL:Ljava/lang/String; = "ro.build.hw_emui_api_level"

.field private static final KEY_EMUI_CONFIG_HW_SYS_VERSION:Ljava/lang/String; = "ro.confg.hw_systemversion"

.field private static final KEY_EMUI_VERSION_CODE:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_FLYME_ICON_FALG:Ljava/lang/String; = "persist.sys.use.flyme.icon"

.field private static final KEY_FLYME_ID_FALG_KEY:Ljava/lang/String; = "ro.build.display.id"

.field private static final KEY_FLYME_ID_FALG_VALUE_KEYWORD:Ljava/lang/String; = "Flyme"

.field private static final KEY_FLYME_PUBLISH_FALG:Ljava/lang/String; = "ro.flyme.published"

.field private static final KEY_FLYME_SETUP_FALG:Ljava/lang/String; = "ro.meizu.setupwizard.flyme"

.field private static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field private static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRomType()Lcom/greport/glog/util/OSUtils$ROM_TYPE;
    .locals 5

    const-string v0, "ro.build.display.id"

    const-string v1, "ro.miui.ui.version.name"

    .line 31
    sget-object v2, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->OTHER:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/greport/glog/util/BuildProperties;->getInstance()Lcom/greport/glog/util/BuildProperties;

    move-result-object v3

    const-string v4, "ro.build.version.emui"

    .line 35
    invoke-virtual {v3, v4}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ro.build.hw_emui_api_level"

    invoke-virtual {v3, v4}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "ro.miui.internal.storage"

    invoke-virtual {v3, v4}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const-string v4, "ro.miui.ui.version.code"

    .line 38
    invoke-virtual {v3, v4}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "persist.sys.use.flyme.icon"

    .line 41
    invoke-virtual {v3, v1}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ro.meizu.setupwizard.flyme"

    invoke-virtual {v3, v1}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ro.flyme.published"

    invoke-virtual {v3, v1}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v3, v0}, Lcom/greport/glog/util/BuildProperties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v3, v0}, Lcom/greport/glog/util/BuildProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    sget-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->FLYME:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-object v0

    .line 42
    :cond_3
    :goto_0
    sget-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->FLYME:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-object v0

    .line 39
    :cond_4
    :goto_1
    sget-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->MIUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;

    return-object v0

    .line 36
    :cond_5
    :goto_2
    sget-object v0, Lcom/greport/glog/util/OSUtils$ROM_TYPE;->EMUI:Lcom/greport/glog/util/OSUtils$ROM_TYPE;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    return-object v2
.end method
