.class Lcom/gsk/api/GskWebApi$14;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi;->stopGetSMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi;)V
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0}, Lcom/gsk/api/GskWebApi;->access$500(Lcom/gsk/api/GskWebApi;)Lcom/gsk/api/GskWebApi$SmsHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0}, Lcom/gsk/api/GskWebApi;->access$500(Lcom/gsk/api/GskWebApi;)Lcom/gsk/api/GskWebApi$SmsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsk/api/GskWebApi$SmsHandler;->cancelTimer()V

    .line 682
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    invoke-static {v0, v1}, Lcom/gsk/api/GskWebApi;->access$502(Lcom/gsk/api/GskWebApi;Lcom/gsk/api/GskWebApi$SmsHandler;)Lcom/gsk/api/GskWebApi$SmsHandler;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v0, v0, Lcom/gsk/api/GskWebApi;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    iget-object v2, v2, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 686
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$14;->this$0:Lcom/gsk/api/GskWebApi;

    iput-object v1, v0, Lcom/gsk/api/GskWebApi;->youYunSmsObserver:Lcom/gsk/utils/YouYunSmsObserver;

    :cond_1
    return-void
.end method
