.class public Lcom/sqo/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static listAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sqo/log/adapter/LogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdapter(Lcom/sqo/log/adapter/LogAdapter;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqo/log/adapter/LogAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 22
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    sget-object v0, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 74
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 75
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqo/log/adapter/LogAdapter;

    const/16 v2, 0xa

    invoke-interface {v1, v2, p0, p1}, Lcom/sqo/log/adapter/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 80
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqo/log/adapter/LogAdapter;

    const/16 v2, 0x28

    invoke-interface {v1, v2, p0, p1}, Lcom/sqo/log/adapter/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 86
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqo/log/adapter/LogAdapter;

    const/16 v2, 0x32

    invoke-interface {v1, v2, p0, p1}, Lcom/sqo/log/adapter/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 92
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqo/log/adapter/LogAdapter;

    const/16 v2, 0x14

    invoke-interface {v1, v2, p0, p1}, Lcom/sqo/log/adapter/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeAdapter(Lcom/sqo/log/adapter/LogAdapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 30
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 31
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 32
    sget-object p0, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 98
    :goto_0
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    sget-object v1, Lcom/sqo/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqo/log/adapter/LogAdapter;

    const/16 v2, 0x1e

    invoke-interface {v1, v2, p0, p1}, Lcom/sqo/log/adapter/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
