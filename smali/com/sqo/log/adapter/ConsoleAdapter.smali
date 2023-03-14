.class public Lcom/sqo/log/adapter/ConsoleAdapter;
.super Ljava/lang/Object;
.source "ConsoleAdapter.java"

# interfaces
.implements Lcom/sqo/log/adapter/LogAdapter;


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sqo/log/adapter/ConsoleAdapter;->level:I

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 23
    :cond_0
    iget v0, p0, Lcom/sqo/log/adapter/ConsoleAdapter;->level:I

    if-ge p1, v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 27
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 29
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_4

    .line 31
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v0, 0x28

    if-ne p1, v0, :cond_5

    .line 33
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    .line 35
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/sqo/log/adapter/ConsoleAdapter;->level:I

    return-void
.end method
