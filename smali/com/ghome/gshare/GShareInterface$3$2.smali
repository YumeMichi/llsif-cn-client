.class Lcom/ghome/gshare/GShareInterface$3$2;
.super Ljava/lang/Object;
.source "GShareInterface.java"

# interfaces
.implements Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareInterface$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ghome/gshare/GShareInterface$3;

.field final synthetic val$f_shareDialog_platformTypes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/GShareInterface$3;Ljava/util/List;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/ghome/gshare/GShareInterface$3$2;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iput-object p2, p0, Lcom/ghome/gshare/GShareInterface$3$2;->val$f_shareDialog_platformTypes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnClick(Landroid/view/View;I)V
    .locals 3

    .line 886
    iget-object p1, p0, Lcom/ghome/gshare/GShareInterface$3$2;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object p1, p1, Lcom/ghome/gshare/GShareInterface$3;->this$0:Lcom/ghome/gshare/GShareInterface;

    iget-object v0, p0, Lcom/ghome/gshare/GShareInterface$3$2;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$3$2;->val$f_shareDialog_platformTypes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ghome/gshare/GSharePlatformType;

    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$3$2;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v1, v1, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    iget-object v2, p0, Lcom/ghome/gshare/GShareInterface$3$2;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v2, v2, Lcom/ghome/gshare/GShareInterface$3;->val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/ghome/gshare/GShareInterface;->doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    return-void
.end method
