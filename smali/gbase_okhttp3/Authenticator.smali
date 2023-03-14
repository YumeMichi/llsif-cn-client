.class public interface abstract Lgbase_okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lgbase_okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lgbase_okhttp3/Authenticator$1;

    invoke-direct {v0}, Lgbase_okhttp3/Authenticator$1;-><init>()V

    sput-object v0, Lgbase_okhttp3/Authenticator;->NONE:Lgbase_okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lgbase_okhttp3/Route;Lgbase_okhttp3/Response;)Lgbase_okhttp3/Request;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
