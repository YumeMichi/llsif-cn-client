.class public Landroid/support/v4/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;,
        Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# instance fields
.field private final mInsets:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 256
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 258
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;

    invoke-direct {v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 276
    :cond_0
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object p1, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, p1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    return-void
.end method

.method static unwrap(Landroid/support/v4/view/WindowInsetsCompat;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 527
    :cond_0
    iget-object p0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method static wrap(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 523
    :cond_0
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-direct {v0, p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public consumeStableInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 502
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 390
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 513
    :cond_1
    check-cast p1, Landroid/support/v4/view/WindowInsetsCompat;

    .line 514
    iget-object v2, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p1, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getStableInsetBottom()I
    .locals 2

    .line 478
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 2

    .line 447
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetRight()I
    .locals 2

    .line 462
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStableInsetTop()I
    .locals 2

    .line 431
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getStableInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 2

    .line 328
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 2

    .line 289
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 2

    .line 315
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 2

    .line 302
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hasInsets()Z
    .locals 2

    .line 350
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasStableInsets()Z
    .locals 2

    .line 493
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasStableInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 2

    .line 341
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 519
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isConsumed()Z
    .locals 2

    .line 367
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isConsumed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 2

    .line 381
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->isRound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 6

    .line 404
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 416
    sget-object v0, Landroid/support/v4/view/WindowInsetsCompat;->IMPL:Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompat;->mInsets:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
