.class public Landroid/support/v4/app/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;,
        Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
    }
.end annotation


# static fields
.field public static final EXTRA_USAGE_TIME_REPORT:Ljava/lang/String; = "android.activity.usage_time"

.field public static final EXTRA_USAGE_TIME_REPORT_PACKAGES:Ljava/lang/String; = "android.usage_time_packages"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeBasic()Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 299
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 300
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 301
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeBasic()Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 302
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 303
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 304
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeBasic()Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 306
    :cond_1
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 138
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 139
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 142
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 143
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 146
    :cond_1
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 65
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 66
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 67
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 68
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 71
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object v0

    .line 72
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 73
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    .line 74
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    return-object v0

    .line 76
    :cond_3
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 102
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 105
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 106
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 107
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 109
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 110
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 111
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object v0

    .line 113
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 114
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    .line 115
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    return-object v0

    .line 118
    :cond_3
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method

.method public static makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 211
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 212
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 214
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 215
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 216
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 218
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 219
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 220
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object v0

    .line 223
    :cond_2
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method

.method public static varargs makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/support/v4/util/Pair;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Landroid/support/v4/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/support/v4/app/ActivityOptionsCompat;"
        }
    .end annotation

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 249
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    .line 250
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 251
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 252
    aget-object v3, p1, v2

    iget-object v3, v3, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    aput-object v3, v0, v2

    .line 253
    aget-object v3, p1, v2

    iget-object v3, v3, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 256
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_2

    .line 257
    new-instance p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 258
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object p1

    .line 259
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_3

    .line 260
    new-instance p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 261
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object p1

    .line 263
    :cond_3
    new-instance p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 264
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object p1

    .line 267
    :cond_4
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method

.method public static makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 282
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 283
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 284
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 285
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 286
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 287
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 288
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 289
    invoke-static {}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeTaskLaunchBehind()Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object v0

    .line 291
    :cond_2
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 2

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 171
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    .line 172
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompat24;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0

    .line 174
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 175
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    .line 176
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompat23;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat23;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;-><init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    return-object v0

    .line 178
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 179
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;

    .line 180
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompat21;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompat21;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V

    return-object v0

    .line 182
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 183
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;

    .line 184
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/ActivityOptionsCompatJB;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompatJB;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V

    return-object v0

    .line 187
    :cond_3
    new-instance p0, Landroid/support/v4/app/ActivityOptionsCompat;

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 0

    return-void
.end method
