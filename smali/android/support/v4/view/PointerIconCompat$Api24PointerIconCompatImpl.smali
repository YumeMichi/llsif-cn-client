.class Landroid/support/v4/view/PointerIconCompat$Api24PointerIconCompatImpl;
.super Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;
.source "PointerIconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PointerIconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24PointerIconCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/PointerIconCompatApi24;->create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompatApi24;->getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-static {p1, p2}, Landroid/support/v4/view/PointerIconCompatApi24;->load(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
