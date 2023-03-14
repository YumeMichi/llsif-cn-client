.class Lcom/gsk/api/GskWebApi$13;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->startGetSMS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;

.field final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$13;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0}, Lcom/gsk/api/GskWebApi;->access$500(Lcom/gsk/api/GskWebApi;)Lcom/gsk/api/GskWebApi$SmsHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0}, Lcom/gsk/api/GskWebApi;->access$500(Lcom/gsk/api/GskWebApi;)Lcom/gsk/api/GskWebApi$SmsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsk/api/GskWebApi$SmsHandler;->cancelTimer()V

    .line 655
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0, v1}, Lcom/gsk/api/GskWebApi;->access$502(Lcom/gsk/api/GskWebApi;Lcom/gsk/api/GskWebApi$SmsHandler;)Lcom/gsk/api/GskWebApi$SmsHandler;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v2, v2, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 659
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object v1, v0, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    new-instance v2, Lcom/gsk/utils/YouYunSmsObserver;

    new-instance v3, Lcom/gsk/api/GskWebApi$SmsHandler;

    iget-object v4, p0, Lcom/gsk/api/GskWebApi$13;->val$callback:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Lcom/gsk/api/GskWebApi$SmsHandler;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/gsk/api/GskWebApi;->access$502(Lcom/gsk/api/GskWebApi;Lcom/gsk/api/GskWebApi$SmsHandler;)Lcom/gsk/api/GskWebApi$SmsHandler;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/gsk/utils/YouYunSmsObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v1, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    .line 664
    sget-object v1, Lcom/gsk/utils/YouYunSmsHelper;->SMS_URI_ALL:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gsk/api/GskWebApi$13;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v3, v3, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
