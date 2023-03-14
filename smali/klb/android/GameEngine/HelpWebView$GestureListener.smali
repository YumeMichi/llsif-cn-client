.class Lklb/android/GameEngine/HelpWebView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WebViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lklb/android/GameEngine/HelpWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/HelpWebView;


# direct methods
.method private constructor <init>(Lklb/android/GameEngine/HelpWebView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lklb/android/GameEngine/HelpWebView$GestureListener;->this$0:Lklb/android/GameEngine/HelpWebView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lklb/android/GameEngine/HelpWebView;Lklb/android/GameEngine/HelpWebView$1;)V
    .locals 0

    .line 490
    invoke-direct {p0, p1}, Lklb/android/GameEngine/HelpWebView$GestureListener;-><init>(Lklb/android/GameEngine/HelpWebView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 499
    iget-object p1, p0, Lklb/android/GameEngine/HelpWebView$GestureListener;->this$0:Lklb/android/GameEngine/HelpWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lklb/android/GameEngine/HelpWebView;->access$102(Lklb/android/GameEngine/HelpWebView;Z)Z

    return v0
.end method
