.class Lcom/greport/glog/RecordSaver$1;
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
.method constructor <init>(Lcom/greport/glog/RecordSaver;ILjava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/greport/glog/RecordSaver$1;->this$0:Lcom/greport/glog/RecordSaver;

    iput p2, p0, Lcom/greport/glog/RecordSaver$1;->val$recordType:I

    iput-object p3, p0, Lcom/greport/glog/RecordSaver$1;->val$recordString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/greport/glog/RecordSaver$1;->this$0:Lcom/greport/glog/RecordSaver;

    iget v1, p0, Lcom/greport/glog/RecordSaver$1;->val$recordType:I

    iget-object v2, p0, Lcom/greport/glog/RecordSaver$1;->val$recordString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/greport/glog/RecordSaver;->access$000(Lcom/greport/glog/RecordSaver;ILjava/lang/String;)V

    return-void
.end method
