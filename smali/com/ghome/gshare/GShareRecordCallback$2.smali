.class Lcom/ghome/gshare/GShareRecordCallback$2;
.super Ljava/lang/Object;
.source "GShareRecordCallback.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghome/gshare/GShareRecordCallback;->onEndRecordSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/GShareRecordCallback;

.field final synthetic val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ghome/gshare/GShareRecordCallback;Ljava/lang/String;[Lcom/ghome/gshare/GSharePlatformType;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    iput-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->val$videoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 50
    new-instance p1, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;

    invoke-direct {p1}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;-><init>()V

    const-string p2, "\u89c6\u9891\u5206\u4eab."

    .line 51
    invoke-virtual {p1, p2}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;->setDescription(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->val$videoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ghome/gshare/share_media/GShareSystemPrimalVideoMedia;->addMediaPath(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {p2}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/ghome/gshare/GShareInterface;->getInstance(Landroid/content/Context;)Lcom/ghome/gshare/GShareInterface;

    move-result-object p2

    iget-object v0, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v0}, Lcom/ghome/gshare/GShareRecordCallback;->access$000(Lcom/ghome/gshare/GShareRecordCallback;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->val$platformType:[Lcom/ghome/gshare/GSharePlatformType;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ghome/gshare/GShareRecordCallback$2;->this$0:Lcom/ghome/gshare/GShareRecordCallback;

    invoke-static {v2}, Lcom/ghome/gshare/GShareRecordCallback;->access$100(Lcom/ghome/gshare/GShareRecordCallback;)Lcom/ghome/gshare/listener/GShareListener;

    move-result-object v2

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/ghome/gshare/GShareInterface;->doShareWithSystemPrimal(Landroid/app/Activity;Lcom/ghome/gshare/GSharePlatformType;Lcom/ghome/gshare/share_media/GShareBaseMedia;Lcom/ghome/gshare/listener/GShareListener;)V

    return-void
.end method
