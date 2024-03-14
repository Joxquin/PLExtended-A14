.class public final Lb0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/google/android/apps/nexuslauncher/allapps/x0;

.field public d:Z

.field public final e:Lb0/j;

.field public final f:Lb0/k;

.field public final synthetic g:Lb0/m;


# direct methods
.method public constructor <init>(Lb0/m;Landroid/net/Uri;Lcom/android/launcher3/util/LooperExecutor;Lcom/google/android/apps/nexuslauncher/allapps/x0;)V
    .locals 2

    iput-object p1, p0, Lb0/l;->g:Lb0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb0/j;

    invoke-direct {p1, p0}, Lb0/j;-><init>(Lb0/l;)V

    iput-object p1, p0, Lb0/l;->e:Lb0/j;

    new-instance p1, Lb0/k;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lb0/k;-><init>(Lb0/l;Landroid/os/Handler;)V

    iput-object p1, p0, Lb0/l;->f:Lb0/k;

    iput-object p2, p0, Lb0/l;->a:Landroid/net/Uri;

    iput-object p3, p0, Lb0/l;->b:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lb0/l;->c:Lcom/google/android/apps/nexuslauncher/allapps/x0;

    return-void
.end method
