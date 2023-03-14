.class Lcom/greport/glog/RecordSaver$4;
.super Ljava/lang/Thread;
.source "RecordSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/greport/glog/RecordSaver;->startThreadToReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/greport/glog/RecordSaver;


# direct methods
.method constructor <init>(Lcom/greport/glog/RecordSaver;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/greport/glog/RecordSaver$4;->this$0:Lcom/greport/glog/RecordSaver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 215
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$4;->this$0:Lcom/greport/glog/RecordSaver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/greport/glog/RecordSaver;->access$202(Lcom/greport/glog/RecordSaver;Z)Z

    const-wide/32 v0, 0x493e0

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 219
    new-instance v0, Lcom/greport/glog/RecordSaver$4$1;

    invoke-direct {v0, p0}, Lcom/greport/glog/RecordSaver$4$1;-><init>(Lcom/greport/glog/RecordSaver$4;)V

    invoke-static {v0}, Lcom/greport/glog/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$4;->this$0:Lcom/greport/glog/RecordSaver;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/greport/glog/RecordSaver;->access$202(Lcom/greport/glog/RecordSaver;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pv exception"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
