.class Lcom/gsk/TouchMatrixActivity$6;
.super Landroid/text/style/URLSpan;
.source "TouchMatrixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/TouchMatrixActivity;->observeUrlClick(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/TouchMatrixActivity;


# direct methods
.method constructor <init>(Lcom/gsk/TouchMatrixActivity;Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gsk/TouchMatrixActivity$6;->this$0:Lcom/gsk/TouchMatrixActivity;

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    sget-object p1, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/gsk/TouchMatrixActivity$6;->this$0:Lcom/gsk/TouchMatrixActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/gsk/TouchMatrixActivity;->skipUserCancelCallback:Z

    .line 178
    invoke-virtual {p1}, Lcom/gsk/TouchMatrixActivity;->finish()V

    .line 179
    sget-object p1, Lcom/gsk/TouchMatrixActivity;->touchMatrixEventListener:Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;

    invoke-virtual {p0}, Lcom/gsk/TouchMatrixActivity$6;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;->onLinkClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
