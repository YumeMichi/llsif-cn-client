.class synthetic Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart$1;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gbase$gameplus$upgradeutil$http$client$multipart$HttpMultipartMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 180
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->values()[Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart$1;->$SwitchMap$com$gbase$gameplus$upgradeutil$http$client$multipart$HttpMultipartMode:[I

    :try_start_0
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart$1;->$SwitchMap$com$gbase$gameplus$upgradeutil$http$client$multipart$HttpMultipartMode:[I

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipart$1;->$SwitchMap$com$gbase$gameplus$upgradeutil$http$client$multipart$HttpMultipartMode:[I

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
