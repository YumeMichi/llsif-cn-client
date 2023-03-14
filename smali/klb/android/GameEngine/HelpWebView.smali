.class Lklb/android/GameEngine/HelpWebView;
.super Landroid/webkit/WebView;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lklb/android/GameEngine/HelpWebView$GestureListener;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private mDoubleTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 427
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lklb/android/GameEngine/HelpWebView;->mDoubleTouch:Z

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 434
    invoke-static {v0}, Lklb/android/GameEngine/HelpWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 437
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lklb/android/GameEngine/HelpWebView$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lklb/android/GameEngine/HelpWebView$GestureListener;-><init>(Lklb/android/GameEngine/HelpWebView;Lklb/android/GameEngine/HelpWebView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lklb/android/GameEngine/HelpWebView;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$102(Lklb/android/GameEngine/HelpWebView;Z)Z
    .locals 0

    .line 419
    iput-boolean p1, p0, Lklb/android/GameEngine/HelpWebView;->mDoubleTouch:Z

    return p1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 460
    iget-object v0, p0, Lklb/android/GameEngine/HelpWebView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 461
    iget-boolean v0, p0, Lklb/android/GameEngine/HelpWebView;->mDoubleTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 463
    iput-boolean p1, p0, Lklb/android/GameEngine/HelpWebView;->mDoubleTouch:Z

    return p1

    .line 466
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
