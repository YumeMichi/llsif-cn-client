.class Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
.super Landroid/support/v7/widget/TintInfo;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatBackgroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundTintInfo"
.end annotation


# instance fields
.field public mOriginalTintList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 230
    invoke-super {p0}, Landroid/support/v7/widget/TintInfo;->clear()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    return-void
.end method
