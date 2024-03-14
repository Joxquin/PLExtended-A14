.class public abstract LL1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/launcher3/util/LooperExecutor;Ljava/util/concurrent/Executor;LL1/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/c;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LL1/c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, LL1/c;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, LL1/c;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;LL1/X;)V
.end method

.method public abstract b(LJ1/n;LL1/P;Ljava/lang/String;Ljava/util/function/Supplier;)V
.end method

.method public abstract c(ILandroid/os/Bundle;)V
.end method

.method public abstract d(ILandroid/os/Bundle;LL1/b;)V
.end method
