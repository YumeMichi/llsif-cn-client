.class synthetic Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$4;
.super Ljava/lang/Object;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gbase$gameplus$upgradeutil$util$core$CompatibleAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 538
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->values()[Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$4;->$SwitchMap$com$gbase$gameplus$upgradeutil$util$core$CompatibleAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$4;->$SwitchMap$com$gbase$gameplus$upgradeutil$util$core$CompatibleAsyncTask$Status:[I

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->RUNNING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$4;->$SwitchMap$com$gbase$gameplus$upgradeutil$util$core$CompatibleAsyncTask$Status:[I

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->FINISHED:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
