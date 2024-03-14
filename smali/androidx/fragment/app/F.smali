.class public final Landroidx/fragment/app/F;
.super Landroidx/fragment/app/H;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln/a;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lc/b;

.field public final synthetic d:Landroidx/activity/result/c;

.field public final synthetic e:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;Ln/a;Ljava/util/concurrent/atomic/AtomicReference;Lc/b;Landroidx/activity/result/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/F;->e:Landroidx/fragment/app/K;

    iput-object p2, p0, Landroidx/fragment/app/F;->a:Ln/a;

    iput-object p3, p0, Landroidx/fragment/app/F;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/F;->c:Lc/b;

    iput-object p5, p0, Landroidx/fragment/app/F;->d:Landroidx/activity/result/c;

    invoke-direct {p0}, Landroidx/fragment/app/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/F;->e:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/F;->a:Ln/a;

    invoke-interface {v2}, Ln/a;->a()Landroidx/activity/result/h;

    move-result-object v2

    iget-object v3, p0, Landroidx/fragment/app/F;->c:Lc/b;

    iget-object v4, p0, Landroidx/fragment/app/F;->d:Landroidx/activity/result/c;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/h;->c(Ljava/lang/String;Landroidx/lifecycle/q;Lc/b;Landroidx/activity/result/c;)Landroidx/activity/result/e;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/F;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
