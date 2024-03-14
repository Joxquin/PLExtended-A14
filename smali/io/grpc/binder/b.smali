.class public final Lio/grpc/binder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/t1;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lio/grpc/binder/d;


# direct methods
.method public constructor <init>(Lio/grpc/binder/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/binder/b;->b:Lio/grpc/binder/d;

    iput-object p2, p0, Lio/grpc/binder/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/binder/c;
    .locals 9

    new-instance v8, Lio/grpc/binder/c;

    iget-object v1, p0, Lio/grpc/binder/b;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/grpc/binder/b;->b:Lio/grpc/binder/d;

    iget-object v2, p0, Lio/grpc/binder/d;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lio/grpc/binder/d;->c:Lio/grpc/internal/H2;

    iget-object v0, p0, Lio/grpc/binder/d;->a:Lio/grpc/internal/x1;

    iget-object v4, v0, Lio/grpc/internal/x1;->b:Lio/grpc/internal/H2;

    iget-object v5, p0, Lio/grpc/binder/d;->d:Lio/grpc/binder/h;

    iget-object v6, p0, Lio/grpc/binder/d;->f:Lio/grpc/binder/a;

    iget-object v7, p0, Lio/grpc/binder/d;->e:Lio/grpc/binder/e;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/grpc/binder/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lio/grpc/internal/H2;Lio/grpc/internal/H2;Lio/grpc/binder/h;Lio/grpc/binder/a;Lio/grpc/binder/e;)V

    return-object v8
.end method
