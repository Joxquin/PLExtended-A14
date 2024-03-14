.class public final LA0/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:LA0/g;


# direct methods
.method public constructor <init>(LA0/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, LA0/b;->a:LA0/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, LA0/b;->a:LA0/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LA0/f;

    invoke-direct {p1, p0}, LA0/f;-><init>(LA0/g;)V

    iget-object p0, p0, LA0/x;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
