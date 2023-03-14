.class Lcom/ghome/gshare/weixin/GShareWXEngine$3;
.super Ljava/lang/Object;
.source "GShareWXEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/weixin/GShareWXEngine;->share(Landroid/app/Activity;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

.field final synthetic val$finalStrImgPath:Ljava/lang/String;

.field final synthetic val$shareImageMedia:Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/weixin/GShareWXEngine;Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$3;->this$0:Lcom/ghome/gshare/weixin/GShareWXEngine;

    iput-object p2, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$3;->val$shareImageMedia:Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    iput-object p3, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$3;->val$finalStrImgPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$3;->val$shareImageMedia:Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;

    invoke-virtual {v0}, Lcom/ghome/gshare/share_media/GShareVendorSDKImageMedia;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/weixin/GShareWXEngine$3;->val$finalStrImgPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ghome/gshare/util/GShareBitmapUtils;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method
