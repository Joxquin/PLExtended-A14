.class public final synthetic Lk0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:Ljava/lang/ref/WeakReference;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/r;->d:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lk0/r;->e:Landroid/content/Context;

    iput p3, p0, Lk0/r;->f:I

    iput-object p4, p0, Lk0/r;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lk0/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk0/r;->e:Landroid/content/Context;

    :goto_0
    iget v1, p0, Lk0/r;->f:I

    iget-object p0, p0, Lk0/r;->g:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lk0/s;->e(ILandroid/content/Context;Ljava/lang/String;)Lk0/H;

    move-result-object p0

    return-object p0
.end method
