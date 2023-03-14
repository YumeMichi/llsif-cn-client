.class synthetic Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;
.super Ljava/lang/Object;
.source "GShareSystemPrimalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ghome$gshare$GSharePlatformType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    invoke-static {}, Lcom/ghome/gshare/GSharePlatformType;->values()[Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    :try_start_0
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ghome/gshare/system_primal/GShareSystemPrimalEngine$1;->$SwitchMap$com$ghome$gshare$GSharePlatformType:[I

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
