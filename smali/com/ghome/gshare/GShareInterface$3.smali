.class Lcom/ghome/gshare/GShareInterface$3;
.super Ljava/lang/Object;
.source "GShareInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareInterface;->doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/GShareInterface;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$platformType:Lcom/ghome/gshare/GSharePlatformType;

.field final synthetic val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

.field final synthetic val$shareLogListener:Lcom/ghome/gshare/GShareLogListener;

.field final synthetic val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/GShareInterface;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/GShareLogListener;Lcom/ghome/gshare/GSharePlatformType;Landroid/app/Activity;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/ghome/gshare/GShareInterface$3;->this$0:Lcom/ghome/gshare/GShareInterface;

    iput-object p2, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    iput-object p3, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareLogListener:Lcom/ghome/gshare/GShareLogListener;

    iput-object p4, p0, Lcom/ghome/gshare/GShareInterface$3;->val$platformType:Lcom/ghome/gshare/GSharePlatformType;

    iput-object p5, p0, Lcom/ghome/gshare/GShareInterface$3;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 817
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 819
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "doShareWithSystemPrimal: runOnUiThread thread id:"

    invoke-static {v2, v0, v1}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 823
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 825
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$900()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 826
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareWebMedia;

    if-eqz v4, :cond_0

    const-string v0, "\u7cfb\u7edf\u5206\u4eab\u5931\u8d25\uff0c\u7cfb\u7edf\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u9875\u5206\u4eab"

    .line 827
    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareLogListener:Lcom/ghome/gshare/GShareLogListener;

    iget-object v2, p0, Lcom/ghome/gshare/GShareInterface$3;->val$platformType:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v1, v2, v0}, Lcom/ghome/gshare/GShareLogListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    return-void

    .line 832
    :cond_0
    instance-of v3, v3, Lcom/ghome/gshare/share_media/GShareSystemPrimalImageMedia;

    if-nez v3, :cond_1

    const-string v3, "\u5fae\u4fe1\u670b\u53cb\u5708"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 834
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 835
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 836
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 839
    :cond_1
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    if-nez v4, :cond_2

    instance-of v3, v3, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz v3, :cond_5

    :cond_2
    const-string v3, "QQ\u7a7a\u95f4"

    .line 840
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 841
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 842
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 843
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 844
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    const-string v3, "\u65b0\u6d6a\u5fae\u535a"

    .line 846
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 847
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 848
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 849
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 850
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 852
    :cond_4
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v3, v3, Lcom/ghome/gshare/share_media/GShareSystemPrimalMusicMedia;

    if-eqz v3, :cond_5

    const-string v3, "\u5fae\u4fe1\u597d\u53cb"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 853
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 854
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 855
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 856
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 859
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 860
    new-instance v2, Lcom/ghome/gshare/share_dialog/GShareDialog;

    iget-object v4, p0, Lcom/ghome/gshare/GShareInterface$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v4, v0, v1}, Lcom/ghome/gshare/share_dialog/GShareDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 861
    new-instance v0, Lcom/ghome/gshare/GShareInterface$3$1;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/GShareInterface$3$1;-><init>(Lcom/ghome/gshare/GShareInterface$3;)V

    invoke-virtual {v2, v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->SetDialogCancelListener(Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;)V

    .line 883
    new-instance v0, Lcom/ghome/gshare/GShareInterface$3$2;

    invoke-direct {v0, p0, v3}, Lcom/ghome/gshare/GShareInterface$3$2;-><init>(Lcom/ghome/gshare/GShareInterface$3;Ljava/util/List;)V

    .line 890
    invoke-virtual {v2, v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->setOnClickListener(Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;)V

    .line 891
    invoke-virtual {v2}, Lcom/ghome/gshare/share_dialog/GShareDialog;->show()V

    return-void
.end method
