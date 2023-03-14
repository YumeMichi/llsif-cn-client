.class public Lcom/tencent/connect/api/QQAuthManage$Resp;
.super Lcom/tencent/open/apireq/BaseResp;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/api/QQAuthManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/tencent/open/apireq/BaseResp;-><init>()V

    return-void
.end method
