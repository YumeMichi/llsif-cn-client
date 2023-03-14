.class public abstract Lcom/bytedance/applog/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/applog/t;->b:Z

    iput-boolean p2, p0, Lcom/bytedance/applog/t;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/applog/t;->d:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bytedance/applog/t;->b:Z

    iput-boolean p2, p0, Lcom/bytedance/applog/t;->c:Z

    iput-boolean p3, p0, Lcom/bytedance/applog/t;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)Z
.end method
