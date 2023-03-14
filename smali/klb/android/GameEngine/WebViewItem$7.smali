.class Lklb/android/GameEngine/WebViewItem$7;
.super Ljava/lang/Object;
.source "WebViewItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lklb/android/GameEngine/WebViewItem;->setColor(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lklb/android/GameEngine/WebViewItem;


# direct methods
.method constructor <init>(Lklb/android/GameEngine/WebViewItem;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 399
    iget-object v0, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v0, v0, Lklb/android/GameEngine/WebViewItem;->m_alpha:I

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    iget v1, v1, Lklb/android/GameEngine/WebViewItem;->m_color:I

    or-int/2addr v0, v1

    .line 400
    iget-object v1, p0, Lklb/android/GameEngine/WebViewItem$7;->this$0:Lklb/android/GameEngine/WebViewItem;

    invoke-static {v1}, Lklb/android/GameEngine/WebViewItem;->access$100(Lklb/android/GameEngine/WebViewItem;)Lklb/android/GameEngine/HelpWebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lklb/android/GameEngine/HelpWebView;->setBackgroundColor(I)V

    return-void
.end method
