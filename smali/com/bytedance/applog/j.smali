.class public Lcom/bytedance/applog/j;
.super Lcom/bytedance/applog/f;
.source ""


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/applog/f;-><init>(Lcom/bytedance/applog/h;)V

    iput-object p2, p0, Lcom/bytedance/applog/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/applog/j;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/applog/r0;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "RangersEventVerify"

    return-object v0
.end method

.method public e()[J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
