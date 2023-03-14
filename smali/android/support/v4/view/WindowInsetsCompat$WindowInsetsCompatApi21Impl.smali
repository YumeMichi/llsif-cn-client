.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi21Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 211
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->consumeStableInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .locals 0

    .line 216
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetBottom(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .locals 0

    .line 221
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetLeft(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .locals 0

    .line 226
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetRight(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .locals 0

    .line 231
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->getStableInsetTop(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .locals 0

    .line 236
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->hasStableInsets(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .locals 0

    .line 241
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi21;->isConsumed(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 247
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Landroid/support/v4/view/WindowInsetsCompatApi21;->replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
