.class Landroid/support/v4/app/ActivityOptionsCompatJB;
.super Ljava/lang/Object;
.source "ActivityOptionsCompatJB.java"


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method

.method public static makeCustomAnimation(Landroid/content/Context;II)Landroid/support/v4/app/ActivityOptionsCompatJB;
    .locals 1

    .line 29
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB;

    .line 30
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/support/v4/app/ActivityOptionsCompatJB;
    .locals 1

    .line 35
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB;

    .line 36
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/ActivityOptionsCompatJB;
    .locals 1

    .line 41
    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB;

    .line 42
    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 52
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Landroid/support/v4/app/ActivityOptionsCompatJB;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    return-void
.end method
