.class Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;
.super Ljava/lang/Object;
.source "GShareSinaWBEngine.java"

# interfaces
.implements Lcom/sina/weibo/sdk/openapi/SdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/sina/GShareSinaWBEngine;->share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

.field final synthetic val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/sina/GShareSinaWBEngine;Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    iput-object p2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    iput-object p4, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-static {v0}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->access$000(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWBAPI initFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-static {v0}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->access$100(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-static {v0}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->access$100(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    invoke-static {v1}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->access$200(Lcom/ghome/gshare/sina/GShareSinaWBEngine;)Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ghome/gshare/GSharePlatformConfig$GShareSinaWBPlatform;->getPlatformType()Lcom/ghome/gshare/GSharePlatformType;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/ghome/gshare/listener/GShareListener;->onError(Lcom/ghome/gshare/GSharePlatformType;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onInitSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/ghomesdk/gameplus/config/Config;->WB_REGISTERED:Z

    .line 69
    iget-object v0, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->this$0:Lcom/ghome/gshare/sina/GShareSinaWBEngine;

    iget-object v1, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$shareMedia:Lcom/ghome/gshare/share_media/GShareBaseMedia;

    iget-object v3, p0, Lcom/ghome/gshare/sina/GShareSinaWBEngine$1;->val$shareListener:Lcom/ghome/gshare/listener/GShareListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ghome/gshare/sina/GShareSinaWBEngine;->shareStart(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    return-void
.end method
