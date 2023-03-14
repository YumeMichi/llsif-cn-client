.class Lcom/gsk/api/GskWebApi$SmsHandler$1;
.super Ljava/lang/Object;
.source "GskWebApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsk/api/GskWebApi$SmsHandler;-><init>(Lcom/gsk/api/GskWebApi;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsk/api/GskWebApi$SmsHandler;

.field final synthetic val$webApi:Lcom/gsk/api/GskWebApi;


# direct methods
.method constructor <init>(Lcom/gsk/api/GskWebApi$SmsHandler;Lcom/gsk/api/GskWebApi;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/gsk/api/GskWebApi$SmsHandler$1;->this$0:Lcom/gsk/api/GskWebApi$SmsHandler;

    iput-object p2, p0, Lcom/gsk/api/GskWebApi$SmsHandler$1;->val$webApi:Lcom/gsk/api/GskWebApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/gsk/api/GskWebApi$SmsHandler$1;->val$webApi:Lcom/gsk/api/GskWebApi;

    invoke-virtual {v0}, Lcom/gsk/api/GskWebApi;->stopGetSMS()V

    return-void
.end method
