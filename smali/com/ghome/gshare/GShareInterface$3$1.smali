.class Lcom/ghome/gshare/GShareInterface$3$1;
.super Ljava/lang/Object;
.source "GShareInterface.java"

# interfaces
.implements Lcom/ghome/gshare/share_dialog/GShareDialog$GShareDialogCancelListener;


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


# direct methods
.method constructor <init>(Lcom/ghome/gshare/GShareInterface$3;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/ghome/gshare/GShareInterface$3$1;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/ghome/gshare/GShareInterface$3$1;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$3;->val$shareLogListener:Lcom/ghome/gshare/GShareLogListener;

    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$3$1;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v1, v1, Lcom/ghome/gshare/GShareInterface$3;->val$platformType:Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v0, v1}, Lcom/ghome/gshare/GShareLogListener;->onCancel(Lcom/ghome/gshare/GSharePlatformType;)V

    return-void
.end method

.method public saveFile()V
    .locals 4

    .line 869
    iget-object v0, p0, Lcom/ghome/gshare/GShareInterface$3$1;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v0, v0, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    instance-of v0, v0, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    if-eqz v0, :cond_0

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ghome/gshare/GShareInterface;->access$1000()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get external files dir failed. Exception message is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    const-string v0, ""

    .line 877
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK_CHOOSE_PLATFORM share, save image path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ghome/gshare/util/GShareBaseUtility;->doLogger(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/ghome/gshare/GShareInterface$3$1;->this$1:Lcom/ghome/gshare/GShareInterface$3;

    iget-object v1, v1, Lcom/ghome/gshare/GShareInterface$3;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    check-cast v1, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    .line 879
    invoke-virtual {v1}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    :cond_0
    return-void
.end method
