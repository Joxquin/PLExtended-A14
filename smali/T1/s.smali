.class public final synthetic LT1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LT1/x;


# direct methods
.method public synthetic constructor <init>(LT1/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT1/s;->a:LT1/x;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, LT1/s;->a:LT1/x;

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v0, "com.google.android.googlequicksearchbox"

    iget-object p0, p0, LT1/x;->b:LT1/t;

    invoke-virtual {p1, v0, p0}, Landroid/app/appsearch/GlobalSearchSession;->unregisterObserverCallback(Ljava/lang/String;Landroid/app/appsearch/observer/ObserverCallback;)V
    :try_end_0
    .catch Landroid/app/appsearch/exceptions/AppSearchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ZeroStateWebSuggestDataLoader"

    const-string v1, "Failed to unregister app search observer"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Landroid/app/appsearch/GlobalSearchSession;->close()V

    return-void
.end method
