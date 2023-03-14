.class public Lcom/ghome/gshare/record/RecordService$RecordBinder;
.super Landroid/os/Binder;
.source "RecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghome/gshare/record/RecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghome/gshare/record/RecordService;


# direct methods
.method public constructor <init>(Lcom/ghome/gshare/record/RecordService;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ghome/gshare/record/RecordService$RecordBinder;->this$0:Lcom/ghome/gshare/record/RecordService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordService()Lcom/ghome/gshare/record/RecordService;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ghome/gshare/record/RecordService$RecordBinder;->this$0:Lcom/ghome/gshare/record/RecordService;

    return-object v0
.end method
