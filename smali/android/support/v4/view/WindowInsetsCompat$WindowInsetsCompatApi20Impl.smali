.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatApi20Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 153
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    .line 154
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 201
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 0

    .line 159
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetBottom(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 0

    .line 164
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetLeft(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 0

    .line 169
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetRight(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 0

    .line 174
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetTop(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hasInsets(Ljava/lang/Object;)Z
    .locals 0

    .line 179
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasInsets(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 0

    .line 184
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasSystemWindowInsets(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRound(Ljava/lang/Object;)Z
    .locals 0

    .line 189
    invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->isRound(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1

    .line 195
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/WindowInsetsCompatApi20;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
