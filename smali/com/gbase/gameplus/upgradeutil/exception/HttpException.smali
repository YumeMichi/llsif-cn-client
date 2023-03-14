.class public Lcom/gbase/gameplus/upgradeutil/exception/HttpException;
.super Lcom/gbase/gameplus/upgradeutil/exception/BaseException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exceptionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>()V

    .line 27
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2, p3}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/exception/HttpException;->exceptionCode:I

    return v0
.end method
