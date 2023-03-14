.class Lcom/ghome/gshare/GShareInterface$2;
.super Ljava/lang/Object;
.source "GShareInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareInterface;->doShareWithVendorSDK(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
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
.method constructor <init>(Lcom/ghome/gshare/GShareInterface;Lcom/ghome/gshare/share_media/GShareBaseMedia;Landroid/app/Activity;Lcom/ghome/gshare/GShareLogListener;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/ghome/gshare/GShareInterface$2;->this$0:Lcom/ghome/gshare/GShareInterface;

    iput-object p2, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    iput-object p3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareLogListener:Lcom/ghome/gshare/GShareLogListener;

    iput-object p5, p0, Lcom/ghome/gshare/GShareInterface$2;->val$platformType:Lcom/ghome/gshare/GSharePlatformType;

    iput-object p6, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 611
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 613
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "doShareWithVendorSDK: runOnUiThread thread id:"

    invoke-static {v2, v0, v1}, Lcom/ghome/gshare/util/GShareLogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$700()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$800()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$900()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 621
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v3, v3, Lcom/ghome/gshare/share_media/GShareWebMedia;

    if-nez v3, :cond_0

    const-string v3, "QQ\u7a7a\u95f4"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 623
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 624
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 625
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 628
    :cond_0
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareTextMedia;

    const-string v5, "\u65b0\u6d6a\u5fae\u535a"

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-eqz v4, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    instance-of v3, v3, Lcom/ghome/gshare/share_media/GShareVendorSDKMusicMedia;

    if-eqz v3, :cond_6

    .line 651
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 652
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 653
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 654
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 655
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    :goto_0
    const-string v3, "QQ\u597d\u53cb"

    .line 629
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 630
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 631
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 632
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 633
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 635
    :cond_3
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    const-string v6, "https://"

    const-string v7, "http://"

    if-eqz v4, :cond_5

    check-cast v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    invoke-virtual {v3}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    check-cast v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    invoke-virtual {v3}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 636
    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 637
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 639
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 641
    :cond_5
    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v4, v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    if-eqz v4, :cond_6

    check-cast v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    invoke-virtual {v3}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/ghome/gshare/GShareInterface$2;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    check-cast v3, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;

    invoke-virtual {v3}, Lcom/ghome/gshare/share_media/GShareVendorSDKVideoMedia;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 642
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 643
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 644
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 645
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$1000()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$1000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ic_share_xl"

    const-string v6, "drawable"

    invoke-static {v3, v5, v6, v4}, Lcom/ghome/gshare/util/GShareBaseUtility;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v3, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_6
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 659
    new-instance v2, Lcom/ghome/gshare/share_dialog/GShareDialog;

    iget-object v4, p0, Lcom/ghome/gshare/GShareInterface$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v4, v0, v1}, Lcom/ghome/gshare/share_dialog/GShareDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 660
    new-instance v0, Lcom/ghome/gshare/GShareInterface$2$1;

    invoke-direct {v0, p0}, Lcom/ghome/gshare/GShareInterface$2$1;-><init>(Lcom/ghome/gshare/GShareInterface$2;)V

    invoke-virtual {v2, v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->SetDialogCancelListener(Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;)V

    .line 682
    new-instance v0, Lcom/ghome/gshare/GShareInterface$2$2;

    invoke-direct {v0, p0, v3}, Lcom/ghome/gshare/GShareInterface$2$2;-><init>(Lcom/ghome/gshare/GShareInterface$2;Ljava/util/List;)V

    .line 689
    invoke-virtual {v2, v0}, Lcom/ghome/gshare/share_dialog/GShareDialog;->setOnClickListener(Lcom/ghome/gshare/share_dialog/GShareDialog$OnClickListener;)V

    .line 690
    invoke-virtual {v2}, Lcom/ghome/gshare/share_dialog/GShareDialog;->show()V

    return-void
.end method
