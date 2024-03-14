.class public abstract Landroidx/fragment/app/W;
.super Landroidx/fragment/app/U;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/Activity;

.field public final e:Landroid/content/Context;

.field public final f:Landroid/os/Handler;

.field public final g:Landroidx/fragment/app/q0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/P;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Landroidx/fragment/app/U;-><init>()V

    new-instance v1, Landroidx/fragment/app/q0;

    invoke-direct {v1}, Landroidx/fragment/app/q0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/W;->g:Landroidx/fragment/app/q0;

    iput-object p1, p0, Landroidx/fragment/app/W;->d:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, LL/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/fragment/app/W;->e:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/W;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract d(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract e()Landroidx/fragment/app/P;
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g(Ljava/lang/String;)Z
.end method

.method public abstract h()V
.end method
