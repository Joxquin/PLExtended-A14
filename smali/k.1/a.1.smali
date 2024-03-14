.class public final Lk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/P;


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lk/b;


# direct methods
.method public constructor <init>(Lk/b;)V
    .locals 0

    iput-object p1, p0, Lk/a;->c:Lk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk/a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lk/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk/a;->c:Lk/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lk/b;->i:Landroidx/core/view/O;

    iget p0, p0, Lk/a;->b:I

    invoke-static {v0, p0}, Lk/b;->b(Lk/b;I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/a;->a:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lk/a;->c:Lk/b;

    invoke-static {v0}, Lk/b;->a(Lk/b;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk/a;->a:Z

    return-void
.end method
