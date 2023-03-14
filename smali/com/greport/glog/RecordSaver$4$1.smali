.class Lcom/greport/glog/RecordSaver$4$1;
.super Ljava/lang/Object;
.source "RecordSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/greport/glog/RecordSaver$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/greport/glog/RecordSaver$4;


# direct methods
.method constructor <init>(Lcom/greport/glog/RecordSaver$4;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/greport/glog/RecordSaver$4$1;->this$1:Lcom/greport/glog/RecordSaver$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GLog"

    const-string v1, "timer DO UPLOAD!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$4$1;->this$1:Lcom/greport/glog/RecordSaver$4;

    iget-object v0, v0, Lcom/greport/glog/RecordSaver$4;->this$0:Lcom/greport/glog/RecordSaver;

    invoke-static {v0}, Lcom/greport/glog/RecordSaver;->access$300(Lcom/greport/glog/RecordSaver;)V

    .line 225
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$4$1;->this$1:Lcom/greport/glog/RecordSaver$4;

    iget-object v0, v0, Lcom/greport/glog/RecordSaver$4;->this$0:Lcom/greport/glog/RecordSaver;

    invoke-static {v0}, Lcom/greport/glog/RecordSaver;->access$100(Lcom/greport/glog/RecordSaver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/UploadManager;->getInstance(Landroid/content/Context;)Lcom/greport/glog/UploadManager;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/greport/glog/UploadManager;->uploadRecordsIfNeeded()V

    .line 227
    invoke-virtual {v0}, Lcom/greport/glog/UploadManager;->uploadErrorRecordsIfNeeded()V

    .line 228
    invoke-virtual {v0}, Lcom/greport/glog/UploadManager;->uploadAnrRecordsIfNeeded()V

    return-void
.end method
