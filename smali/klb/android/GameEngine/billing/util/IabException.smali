.class public Lklb/android/GameEngine/billing/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mResult:Lklb/android/GameEngine/billing/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 36
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(Lklb/android/GameEngine/billing/util/IabResult;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 43
    new-instance v0, Lklb/android/GameEngine/billing/util/IabResult;

    invoke-direct {v0, p1, p2}, Lklb/android/GameEngine/billing/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lklb/android/GameEngine/billing/util/IabException;-><init>(Lklb/android/GameEngine/billing/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/billing/util/IabResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lklb/android/GameEngine/billing/util/IabException;-><init>(Lklb/android/GameEngine/billing/util/IabResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lklb/android/GameEngine/billing/util/IabResult;Ljava/lang/Exception;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lklb/android/GameEngine/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput-object p1, p0, Lklb/android/GameEngine/billing/util/IabException;->mResult:Lklb/android/GameEngine/billing/util/IabResult;

    return-void
.end method


# virtual methods
.method public getResult()Lklb/android/GameEngine/billing/util/IabResult;
    .locals 1

    .line 47
    iget-object v0, p0, Lklb/android/GameEngine/billing/util/IabException;->mResult:Lklb/android/GameEngine/billing/util/IabResult;

    return-object v0
.end method
