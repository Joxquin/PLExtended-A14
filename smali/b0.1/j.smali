.class public final Lb0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lb0/l;


# direct methods
.method public constructor <init>(Lb0/l;)V
    .locals 0

    iput-object p1, p0, Lb0/j;->d:Lb0/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lb0/j;->d:Lb0/l;

    iget-boolean v1, v0, Lb0/l;->d:Z

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lb0/l;->g:Lb0/m;

    iget-object v2, v0, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lb0/m;->a(Landroid/net/Uri;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb0/l;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lb0/j;->d:Lb0/l;

    iget-object v1, v0, Lb0/l;->g:Lb0/m;

    iget-object v1, v1, Lb0/m;->b:Landroid/content/Context;

    sget-object v2, Lf0/H;->a:Lq/h;

    const-class v3, Landroid/app/slice/SliceManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceManager;

    invoke-static {v2}, Lb0/c;->a(Lq/h;)Lq/h;

    move-result-object v2

    iget-object v0, v0, Lb0/l;->a:Landroid/net/Uri;

    invoke-virtual {v3, v0, v2}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0, v1}, Lb0/c;->b(Landroid/app/slice/Slice;Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object v0

    iget-object v1, p0, Lb0/j;->d:Lb0/l;

    iget-object v1, v1, Lb0/l;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lb0/i;

    invoke-direct {v2, p0, v0}, Lb0/i;-><init>(Lb0/j;Landroidx/slice/Slice;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
