.class Lcom/geetest/sdk/aq;
.super Ljava/lang/Object;
.source "WriteAction.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/geetest/sdk/aq;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/aq;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
