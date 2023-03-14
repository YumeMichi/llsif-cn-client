.class public Lcom/bytedance/applog/network/RangersHttpException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public mResponseCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/bytedance/applog/network/RangersHttpException;->mResponseCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/bytedance/applog/network/RangersHttpException;->mResponseCode:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/bytedance/applog/network/RangersHttpException;->mResponseCode:I

    return v0
.end method
