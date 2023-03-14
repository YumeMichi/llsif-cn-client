.class final Lgbase_okhttp3/EventListener$2;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Lgbase_okhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/EventListener;->factory(Lgbase_okhttp3/EventListener;)Lgbase_okhttp3/EventListener$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lgbase_okhttp3/EventListener;


# direct methods
.method constructor <init>(Lgbase_okhttp3/EventListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lgbase_okhttp3/EventListener$2;->val$listener:Lgbase_okhttp3/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lgbase_okhttp3/Call;)Lgbase_okhttp3/EventListener;
    .locals 0

    .line 31
    iget-object p1, p0, Lgbase_okhttp3/EventListener$2;->val$listener:Lgbase_okhttp3/EventListener;

    return-object p1
.end method
