.class public final LA0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)LA0/x;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LA0/g;->j:LA0/x;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LA0/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context.applicationContext"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SAViewCapture"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, LA0/a;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, LA0/a;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v2}, LA0/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    sput-object v0, LA0/g;->j:LA0/x;

    goto :goto_0

    :cond_1
    sget-object v0, LA0/x;->g:LA0/a;

    new-instance v1, LA0/c;

    invoke-direct {v1, p0}, LA0/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/concurrent/FutureTask;

    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p0}, LA0/a;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, LA0/x;

    const-string p0, "context: Context): ViewC\u2026    throw e\n            }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static synthetic getVIEW_CAPTURE_ENABLED$frameworks__libs__systemui__viewcapturelib__android_common__view_capture$annotations()V
    .locals 0

    return-void
.end method
