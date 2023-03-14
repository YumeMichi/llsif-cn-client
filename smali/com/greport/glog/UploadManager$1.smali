.class Lcom/greport/glog/UploadManager$1;
.super Ljava/util/TimerTask;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/greport/glog/UploadManager;->doUploadRetry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/greport/glog/UploadManager;

.field final synthetic val$reportContent:Ljava/lang/String;

.field final synthetic val$reportUrl:Ljava/lang/String;

.field final synthetic val$retryCount:[I

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/greport/glog/UploadManager;[ILjava/lang/String;Ljava/lang/String;Ljava/util/Timer;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/greport/glog/UploadManager$1;->this$0:Lcom/greport/glog/UploadManager;

    iput-object p2, p0, Lcom/greport/glog/UploadManager$1;->val$retryCount:[I

    iput-object p3, p0, Lcom/greport/glog/UploadManager$1;->val$reportUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/greport/glog/UploadManager$1;->val$reportContent:Ljava/lang/String;

    iput-object p5, p0, Lcom/greport/glog/UploadManager$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 217
    iget-object v0, p0, Lcom/greport/glog/UploadManager$1;->val$retryCount:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUploadRetry start111: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/greport/glog/UploadManager$1;->val$retryCount:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLog"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/greport/glog/UploadManager$1;->this$0:Lcom/greport/glog/UploadManager;

    iget-object v3, p0, Lcom/greport/glog/UploadManager$1;->val$reportUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/greport/glog/UploadManager$1;->val$reportContent:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/greport/glog/UploadManager;->access$000(Lcom/greport/glog/UploadManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "doUploadRetry start222"

    .line 220
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/greport/glog/UploadManager$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/UploadManager$1;->val$retryCount:[I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void
.end method
