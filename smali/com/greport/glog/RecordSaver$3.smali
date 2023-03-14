.class Lcom/greport/glog/RecordSaver$3;
.super Ljava/lang/Object;
.source "RecordSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/greport/glog/RecordSaver;->addRecordAsync(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/greport/glog/RecordSaver;

.field final synthetic val$recordString:Ljava/lang/String;

.field final synthetic val$recordType:I


# direct methods
.method constructor <init>(Lcom/greport/glog/RecordSaver;Ljava/lang/String;I)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/greport/glog/RecordSaver$3;->this$0:Lcom/greport/glog/RecordSaver;

    iput-object p2, p0, Lcom/greport/glog/RecordSaver$3;->val$recordString:Ljava/lang/String;

    iput p3, p0, Lcom/greport/glog/RecordSaver$3;->val$recordType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$3;->this$0:Lcom/greport/glog/RecordSaver;

    invoke-static {v0}, Lcom/greport/glog/RecordSaver;->access$100(Lcom/greport/glog/RecordSaver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/greport/glog/RecordSaver$3;->val$recordString:Ljava/lang/String;

    const-string v2, "GPOPGUIDLog.txt"

    invoke-static {v0, v2, v1}, Lcom/greport/glog/FileHelper;->writeFileSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$3;->this$0:Lcom/greport/glog/RecordSaver;

    invoke-static {v0}, Lcom/greport/glog/RecordSaver;->access$100(Lcom/greport/glog/RecordSaver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/UploadManager;->getInstance(Landroid/content/Context;)Lcom/greport/glog/UploadManager;

    move-result-object v0

    sget-object v1, Lcom/greport/glog/GLogConfig;->GPOP_UPLOAD_URL:Ljava/lang/String;

    iget v2, p0, Lcom/greport/glog/RecordSaver$3;->val$recordType:I

    iget-object v3, p0, Lcom/greport/glog/RecordSaver$3;->val$recordString:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/greport/glog/UploadManager;->doUpload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
