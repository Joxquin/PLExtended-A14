.class public abstract Lf0/F;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public d:Lf0/M;

.field public e:I

.field public f:Z

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Lf0/E;

.field public m:Lf0/J;

.field public n:Lf0/q;

.field public o:Lf0/O;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lf0/F;->e:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lf0/F;->g:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lf0/F;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lf0/F;->o:Lf0/O;

    if-eqz p0, :cond_0

    iget p0, p0, Lf0/O;->c:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public abstract c()V
.end method

.method public d(Landroidx/slice/SliceItem;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public f(IIII)V
    .locals 0

    iput p1, p0, Lf0/F;->h:I

    iput p2, p0, Lf0/F;->i:I

    iput p3, p0, Lf0/F;->j:I

    iput p4, p0, Lf0/F;->k:I

    return-void
.end method

.method public g(J)V
    .locals 0

    iput-wide p1, p0, Lf0/F;->g:J

    return-void
.end method

.method public h(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public i(Lf0/O;)V
    .locals 0

    iput-object p1, p0, Lf0/F;->o:Lf0/O;

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lf0/F;->f:Z

    return-void
.end method

.method public k(Lf0/M;)V
    .locals 0

    iput-object p1, p0, Lf0/F;->d:Lf0/M;

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public m(Lf0/j;)V
    .locals 0

    return-void
.end method

.method public n(Lf0/G;ZIILf0/M;)V
    .locals 0

    return-void
.end method

.method public o(Lf0/J;Lf0/q;)V
    .locals 0

    iput-object p1, p0, Lf0/F;->m:Lf0/J;

    iput-object p2, p0, Lf0/F;->n:Lf0/q;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lf0/F;->e:I

    return-void
.end method
