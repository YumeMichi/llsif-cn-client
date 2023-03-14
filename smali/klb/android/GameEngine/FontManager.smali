.class public Lklb/android/GameEngine/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static instance:Lklb/android/GameEngine/FontManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lklb/android/GameEngine/FontManager;

    invoke-direct {v0}, Lklb/android/GameEngine/FontManager;-><init>()V

    sput-object v0, Lklb/android/GameEngine/FontManager;->instance:Lklb/android/GameEngine/FontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatePaint(Ljava/lang/String;Z)Landroid/graphics/Paint;
    .locals 1

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    if-eqz p0, :cond_0

    .line 31
    invoke-static {p0}, Lklb/android/GameEngine/Typefaces;->get(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    .line 37
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFontMetrics(Landroid/graphics/Paint;)Landroid/graphics/Paint$FontMetrics;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lklb/android/GameEngine/FontManager;
    .locals 1

    .line 19
    sget-object v0, Lklb/android/GameEngine/FontManager;->instance:Lklb/android/GameEngine/FontManager;

    return-object v0
.end method

.method public static measureText(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static setAntiAlias(Landroid/graphics/Paint;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static setTextSize(Landroid/graphics/Paint;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    .line 48
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
