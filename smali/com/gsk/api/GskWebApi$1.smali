.class Lcom/gsk/api/GskWebApi$1;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Lcom/gsk/ui/TouchMatrix$TouchMatrixEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->showPwdPanel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;

.field final synthetic val$touchFinishedCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$1;->val$touchFinishedCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "about:blank"

    .line 188
    invoke-static {v0}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchFinished(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->val$touchFinishedCallback:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const-string p1, "javascript:%s(%d,\"%s\")"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gsk/api/GskWebApi;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchMatrixWillShown()V
    .locals 2

    .line 179
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iget-boolean v1, v1, Lcom/gsk/api/GskWebApi;->showBackButton:Z

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->showBackButton(Z)V

    .line 180
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi;->touchMatrixTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->setTitle(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi;->touchMatrixTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->setTip(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi;->touchMatrixMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->setMessage(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/gsk/TouchMatrixActivity;->getInstance()Lcom/gsk/TouchMatrixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/gsk/api/GskWebApi$1;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v1, v1, Lcom/gsk/api/GskWebApi;->touchMatrixFooter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gsk/TouchMatrixActivity;->setFooter(Ljava/lang/String;)V

    return-void
.end method
