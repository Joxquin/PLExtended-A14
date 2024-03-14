.class public final Li/k;
.super Landroidx/core/view/Q;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Li/l;


# direct methods
.method public constructor <init>(Li/l;)V
    .locals 0

    iput-object p1, p0, Li/k;->c:Li/l;

    invoke-direct {p0}, Landroidx/core/view/Q;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Li/k;->a:Z

    iput p1, p0, Li/k;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Li/k;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Li/k;->b:I

    iget-object v1, p0, Li/k;->c:Li/l;

    iget-object v2, v1, Li/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Li/l;->d:Landroidx/core/view/P;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/view/P;->a()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Li/k;->b:I

    iput-boolean v0, p0, Li/k;->a:Z

    iput-boolean v0, v1, Li/l;->e:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Li/k;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li/k;->a:Z

    iget-object p0, p0, Li/k;->c:Li/l;

    iget-object p0, p0, Li/l;->d:Landroidx/core/view/P;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/core/view/P;->c()V

    :cond_1
    return-void
.end method
