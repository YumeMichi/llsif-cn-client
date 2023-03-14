.class public interface abstract Lgbase_okhttp3/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract connectTimeoutMillis()I
.end method

.method public abstract connection()Lgbase_okhttp3/Connection;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract proceed(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readTimeoutMillis()I
.end method

.method public abstract request()Lgbase_okhttp3/Request;
.end method

.method public abstract withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/Interceptor$Chain;
.end method

.method public abstract withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/Interceptor$Chain;
.end method

.method public abstract withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lgbase_okhttp3/Interceptor$Chain;
.end method

.method public abstract writeTimeoutMillis()I
.end method
