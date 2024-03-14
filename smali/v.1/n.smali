.class public Lv/n;
.super Lv/l;
.source "SourceFile"


# instance fields
.field public A0:Z

.field public B0:I

.field public C0:I

.field public final D0:Lw/b;

.field public E0:Landroidx/constraintlayout/widget/e;

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv/l;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv/n;->u0:I

    iput v0, p0, Lv/n;->v0:I

    iput v0, p0, Lv/n;->w0:I

    iput v0, p0, Lv/n;->x0:I

    iput v0, p0, Lv/n;->y0:I

    iput v0, p0, Lv/n;->z0:I

    iput-boolean v0, p0, Lv/n;->A0:Z

    iput v0, p0, Lv/n;->B0:I

    iput v0, p0, Lv/n;->C0:I

    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    iput-object v0, p0, Lv/n;->D0:Lw/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lv/n;->E0:Landroidx/constraintlayout/widget/e;

    return-void
.end method


# virtual methods
.method public S(IIII)V
    .locals 0

    return-void
.end method

.method public final T(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lv/n;->E0:Landroidx/constraintlayout/widget/e;

    if-nez v0, :cond_0

    iget-object v1, p0, Lv/f;->W:Lv/f;

    if-eqz v1, :cond_0

    check-cast v1, Lv/g;

    iget-object v0, v1, Lv/g;->w0:Landroidx/constraintlayout/widget/e;

    iput-object v0, p0, Lv/n;->E0:Landroidx/constraintlayout/widget/e;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv/n;->D0:Lw/b;

    iput-object p2, p0, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object p4, p0, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput p3, p0, Lw/b;->c:I

    iput p5, p0, Lw/b;->d:I

    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget p2, p0, Lw/b;->e:I

    invoke-virtual {p1, p2}, Lv/f;->O(I)V

    iget p2, p0, Lw/b;->f:I

    invoke-virtual {p1, p2}, Lv/f;->L(I)V

    iget-boolean p2, p0, Lw/b;->h:Z

    iput-boolean p2, p1, Lv/f;->F:Z

    iget p0, p0, Lw/b;->g:I

    iput p0, p1, Lv/f;->d0:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, p1, Lv/f;->F:Z

    return-void
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lv/l;->t0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lv/l;->s0:[Lv/f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lv/f;->H:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
