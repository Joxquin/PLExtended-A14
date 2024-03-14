.class public final LA0/g;
.super LA0/x;
.source "SourceFile"


# static fields
.field public static j:LA0/x;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, LA0/x;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, LA0/g;->h:Landroid/content/Context;

    new-instance p2, Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;

    invoke-direct {p2, p0}, Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;-><init>(LA0/g;)V

    iput-object p2, p0, LA0/g;->i:Lcom/android/app/viewcapture/SettingsAwareViewCapture$mDumpCallback$1;

    new-instance p2, LA0/f;

    invoke-direct {p2, p0}, LA0/f;-><init>(LA0/g;)V

    iget-object v0, p0, LA0/x;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "view_capture_enabled"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LA0/b;

    invoke-direct {v1, p0, v0}, LA0/b;-><init>(LA0/g;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
