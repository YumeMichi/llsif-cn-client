.class Landroid/support/v4/text/ICUCompat$ICUCompatImplIcs;
.super Ljava/lang/Object;
.source "ICUCompat.java"

# interfaces
.implements Landroid/support/v4/text/ICUCompat$ICUCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/ICUCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCompatImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p1}, Landroid/support/v4/text/ICUCompatIcs;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
