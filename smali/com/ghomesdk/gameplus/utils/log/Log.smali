.class public Lcom/ghomesdk/gameplus/utils/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static isDebug:Z

.field private static listAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ghomesdk/gameplus/utils/log/LogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/ghomesdk/gameplus/utils/log/Log;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAdapter(Lcom/ghomesdk/gameplus/utils/log/LogAdapter;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 21
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_2
    :goto_1
    sget-object v0, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 73
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    const/16 v2, 0xa

    invoke-interface {v1, v2, p0, p1}, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 79
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 80
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    const/16 v2, 0x28

    invoke-interface {v1, v2, p0, p1}, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fault(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 85
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    const/16 v2, 0x32

    invoke-interface {v1, v2, p0, p1}, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 91
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    const/16 v2, 0x14

    invoke-interface {v1, v2, p0, p1}, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeAdapter(Lcom/ghomesdk/gameplus/utils/log/LogAdapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 29
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 31
    sget-object p0, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

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

    .line 97
    :goto_0
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    sget-object v1, Lcom/ghomesdk/gameplus/utils/log/Log;->listAdapter:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;

    const/16 v2, 0x1e

    invoke-interface {v1, v2, p0, p1}, Lcom/ghomesdk/gameplus/utils/log/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
