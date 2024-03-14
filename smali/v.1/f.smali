.class public Lv/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:I

.field public C:F

.field public final D:[I

.field public E:F

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:I

.field public J:I

.field public final K:Lv/d;

.field public final L:Lv/d;

.field public final M:Lv/d;

.field public final N:Lv/d;

.field public final O:Lv/d;

.field public final P:Lv/d;

.field public final Q:Lv/d;

.field public final R:Lv/d;

.field public final S:[Lv/d;

.field public final T:Ljava/util/ArrayList;

.field public final U:[Z

.field public final V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public W:Lv/f;

.field public X:I

.field public Y:I

.field public Z:F

.field public a:Z

.field public a0:I

.field public b:Lw/d;

.field public b0:I

.field public c:Lw/d;

.field public c0:I

.field public d:Landroidx/constraintlayout/core/widgets/analyzer/d;

.field public d0:I

.field public e:Landroidx/constraintlayout/core/widgets/analyzer/e;

.field public e0:I

.field public final f:[Z

.field public f0:I

.field public g:Z

.field public g0:F

.field public final h:Z

.field public h0:F

.field public i:I

.field public i0:Ljava/lang/Object;

.field public j:I

.field public j0:I

.field public k:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:I

.field public n:Z

.field public final n0:[F

.field public o:Z

.field public final o0:[Lv/f;

.field public p:I

.field public final p0:[Lv/f;

.field public q:I

.field public q0:I

.field public r:I

.field public r0:I

.field public s:I

.field public t:I

.field public final u:[I

.field public v:I

.field public w:I

.field public x:F

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lv/f;->a:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iput-object v2, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Lv/f;->f:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lv/f;->g:Z

    iput-boolean v4, v0, Lv/f;->h:Z

    const/4 v4, -0x1

    iput v4, v0, Lv/f;->i:I

    iput v4, v0, Lv/f;->j:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-boolean v1, v0, Lv/f;->l:Z

    iput-boolean v1, v0, Lv/f;->m:Z

    iput-boolean v1, v0, Lv/f;->n:Z

    iput-boolean v1, v0, Lv/f;->o:Z

    iput v4, v0, Lv/f;->p:I

    iput v4, v0, Lv/f;->q:I

    iput v1, v0, Lv/f;->r:I

    iput v1, v0, Lv/f;->s:I

    iput v1, v0, Lv/f;->t:I

    new-array v5, v3, [I

    iput-object v5, v0, Lv/f;->u:[I

    iput v1, v0, Lv/f;->v:I

    iput v1, v0, Lv/f;->w:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lv/f;->x:F

    iput v1, v0, Lv/f;->y:I

    iput v1, v0, Lv/f;->z:I

    iput v5, v0, Lv/f;->A:F

    iput v4, v0, Lv/f;->B:I

    iput v5, v0, Lv/f;->C:F

    const v5, 0x7fffffff

    filled-new-array {v5, v5}, [I

    move-result-object v5

    iput-object v5, v0, Lv/f;->D:[I

    const/high16 v5, 0x7fc00000    # Float.NaN

    iput v5, v0, Lv/f;->E:F

    iput-boolean v1, v0, Lv/f;->F:Z

    iput-boolean v1, v0, Lv/f;->H:Z

    iput v1, v0, Lv/f;->I:I

    iput v1, v0, Lv/f;->J:I

    new-instance v5, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v5, v0, Lv/f;->K:Lv/d;

    new-instance v12, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v12, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v12, v0, Lv/f;->L:Lv/d;

    new-instance v13, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v13, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v13, v0, Lv/f;->M:Lv/d;

    new-instance v14, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v14, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v14, v0, Lv/f;->N:Lv/d;

    new-instance v15, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v15, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v15, v0, Lv/f;->O:Lv/d;

    new-instance v11, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v11, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v11, v0, Lv/f;->P:Lv/d;

    new-instance v10, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v10, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v10, v0, Lv/f;->Q:Lv/d;

    new-instance v9, Lv/d;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-direct {v9, v0, v6}, Lv/d;-><init>(Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    iput-object v9, v0, Lv/f;->R:Lv/d;

    move-object v6, v5

    move-object v7, v13

    move-object v8, v12

    move-object/from16 v16, v9

    move-object v9, v14

    move-object/from16 v17, v10

    move-object v10, v15

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    filled-new-array/range {v6 .. v11}, [Lv/d;

    move-result-object v6

    iput-object v6, v0, Lv/f;->S:[Lv/d;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lv/f;->T:Ljava/util/ArrayList;

    new-array v7, v3, [Z

    iput-object v7, v0, Lv/f;->U:[Z

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    filled-new-array {v7, v7}, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    iput-object v7, v0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v2, v0, Lv/f;->W:Lv/f;

    iput v1, v0, Lv/f;->X:I

    iput v1, v0, Lv/f;->Y:I

    const/4 v7, 0x0

    iput v7, v0, Lv/f;->Z:F

    iput v4, v0, Lv/f;->a0:I

    iput v1, v0, Lv/f;->b0:I

    iput v1, v0, Lv/f;->c0:I

    iput v1, v0, Lv/f;->d0:I

    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, v0, Lv/f;->g0:F

    iput v7, v0, Lv/f;->h0:F

    iput v1, v0, Lv/f;->j0:I

    iput-object v2, v0, Lv/f;->k0:Ljava/lang/String;

    iput v1, v0, Lv/f;->l0:I

    iput v1, v0, Lv/f;->m0:I

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, Lv/f;->n0:[F

    filled-new-array {v2, v2}, [Lv/f;

    move-result-object v1

    iput-object v1, v0, Lv/f;->o0:[Lv/f;

    filled-new-array {v2, v2}, [Lv/f;

    move-result-object v1

    iput-object v1, v0, Lv/f;->p0:[Lv/f;

    iput v4, v0, Lv/f;->q0:I

    iput v4, v0, Lv/f;->r0:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static H(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p8, "FIXED"

    invoke-virtual {p8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const-string p8, "      behavior"

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " :   "

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x0

    const-string p8, "      size"

    invoke-static {p2, p1, p8, p0}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "      min"

    invoke-static {p3, p1, p2, p0}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "      max"

    const p3, 0x7fffffff

    invoke-static {p4, p3, p2, p0}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "      matchMin"

    invoke-static {p5, p1, p2, p0}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p2, "      matchDef"

    invoke-static {p6, p1, p2, p0}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Lv/f;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V
    .locals 2

    iget-object v0, p2, Lv/d;->f:Lv/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : [ \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lv/d;->f:Lv/d;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lv/d;->h:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    iget p1, p2, Lv/d;->g:I

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lv/d;->g:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Lv/d;->h:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lv/d;->h:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, " ] ,\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->g:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lv/f;->j0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lv/f;->K:Lv/d;

    iget-boolean v0, v0, Lv/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-boolean p0, p0, Lv/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lv/f;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lv/f;->L:Lv/d;

    iget-boolean v0, v0, Lv/d;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lv/f;->N:Lv/d;

    iget-boolean p0, p0, Lv/d;->c:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public D()V
    .locals 6

    iget-object v0, p0, Lv/f;->K:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->L:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->M:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->N:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->O:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->P:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->Q:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    iget-object v0, p0, Lv/f;->R:Lv/d;

    invoke-virtual {v0}, Lv/d;->j()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv/f;->W:Lv/f;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lv/f;->E:F

    const/4 v1, 0x0

    iput v1, p0, Lv/f;->X:I

    iput v1, p0, Lv/f;->Y:I

    const/4 v2, 0x0

    iput v2, p0, Lv/f;->Z:F

    const/4 v2, -0x1

    iput v2, p0, Lv/f;->a0:I

    iput v1, p0, Lv/f;->b0:I

    iput v1, p0, Lv/f;->c0:I

    iput v1, p0, Lv/f;->d0:I

    iput v1, p0, Lv/f;->e0:I

    iput v1, p0, Lv/f;->f0:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lv/f;->g0:F

    iput v3, p0, Lv/f;->h0:F

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v4, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v3, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    iput-object v0, p0, Lv/f;->i0:Ljava/lang/Object;

    iput v1, p0, Lv/f;->j0:I

    iput v1, p0, Lv/f;->l0:I

    iput v1, p0, Lv/f;->m0:I

    iget-object v0, p0, Lv/f;->n0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v1

    aput v3, v0, v5

    iput v2, p0, Lv/f;->p:I

    iput v2, p0, Lv/f;->q:I

    iget-object v0, p0, Lv/f;->D:[I

    const v3, 0x7fffffff

    aput v3, v0, v1

    aput v3, v0, v5

    iput v1, p0, Lv/f;->s:I

    iput v1, p0, Lv/f;->t:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lv/f;->x:F

    iput v0, p0, Lv/f;->A:F

    iput v3, p0, Lv/f;->w:I

    iput v3, p0, Lv/f;->z:I

    iput v1, p0, Lv/f;->v:I

    iput v1, p0, Lv/f;->y:I

    iput v2, p0, Lv/f;->B:I

    iput v0, p0, Lv/f;->C:F

    iget-object v0, p0, Lv/f;->f:[Z

    aput-boolean v5, v0, v1

    aput-boolean v5, v0, v5

    iput-boolean v1, p0, Lv/f;->H:Z

    iget-object v0, p0, Lv/f;->U:[Z

    aput-boolean v1, v0, v1

    aput-boolean v1, v0, v5

    iput-boolean v5, p0, Lv/f;->g:Z

    iget-object v0, p0, Lv/f;->u:[I

    aput v1, v0, v1

    aput v1, v0, v5

    iput v2, p0, Lv/f;->i:I

    iput v2, p0, Lv/f;->j:I

    return-void
.end method

.method public final E()V
    .locals 3

    iget-object v0, p0, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lv/g;

    if-eqz v1, :cond_0

    check-cast v0, Lv/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lv/f;->T:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/d;

    invoke-virtual {v2}, Lv/d;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final F()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/f;->l:Z

    iput-boolean v0, p0, Lv/f;->m:Z

    iput-boolean v0, p0, Lv/f;->n:Z

    iput-boolean v0, p0, Lv/f;->o:Z

    iget-object p0, p0, Lv/f;->T:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/d;

    iput-boolean v0, v3, Lv/d;->c:Z

    iput v0, v3, Lv/d;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Lt/e;)V
    .locals 0

    iget-object p1, p0, Lv/f;->K:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->L:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->M:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->N:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->O:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->R:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p1, p0, Lv/f;->P:Lv/d;

    invoke-virtual {p1}, Lv/d;->k()V

    iget-object p0, p0, Lv/f;->Q:Lv/d;

    invoke-virtual {p0}, Lv/d;->k()V

    return-void
.end method

.method public final J(II)V
    .locals 1

    iget-boolean v0, p0, Lv/f;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv/f;->K:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->l(I)V

    iget-object v0, p0, Lv/f;->M:Lv/d;

    invoke-virtual {v0, p2}, Lv/d;->l(I)V

    iput p1, p0, Lv/f;->b0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lv/f;->X:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv/f;->l:Z

    return-void
.end method

.method public final K(II)V
    .locals 1

    iget-boolean v0, p0, Lv/f;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lv/f;->L:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->l(I)V

    iget-object v0, p0, Lv/f;->N:Lv/d;

    invoke-virtual {v0, p2}, Lv/d;->l(I)V

    iput p1, p0, Lv/f;->c0:I

    sub-int/2addr p2, p1

    iput p2, p0, Lv/f;->Y:I

    iget-boolean p2, p0, Lv/f;->F:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lv/f;->d0:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lv/f;->O:Lv/d;

    invoke-virtual {p2, p1}, Lv/d;->l(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lv/f;->m:Z

    return-void
.end method

.method public final L(I)V
    .locals 1

    iput p1, p0, Lv/f;->Y:I

    iget v0, p0, Lv/f;->f0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lv/f;->Y:I

    :cond_0
    return-void
.end method

.method public final M(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

.method public final N(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 1

    iget-object p0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public final O(I)V
    .locals 1

    iput p1, p0, Lv/f;->X:I

    iget v0, p0, Lv/f;->e0:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lv/f;->X:I

    :cond_0
    return-void
.end method

.method public P(ZZ)V
    .locals 7

    iget-object v0, p0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v0, v6

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Lv/f;->b0:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lv/f;->c0:I

    :cond_3
    iget v2, p0, Lv/f;->j0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Lv/f;->X:I

    iput v6, p0, Lv/f;->Y:I

    return-void

    :cond_4
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v3, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eqz p1, :cond_6

    aget-object p1, v3, v6

    if-ne p1, v2, :cond_5

    iget p1, p0, Lv/f;->X:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lv/f;->X:I

    iget p1, p0, Lv/f;->e0:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lv/f;->X:I

    :cond_6
    if-eqz p2, :cond_8

    const/4 p1, 0x1

    aget-object p1, v3, p1

    if-ne p1, v2, :cond_7

    iget p1, p0, Lv/f;->Y:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Lv/f;->Y:I

    iget p1, p0, Lv/f;->f0:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lv/f;->Y:I

    :cond_8
    return-void
.end method

.method public Q(Lt/f;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lv/f;->K:Lv/d;

    invoke-static {p1}, Lt/f;->n(Lv/d;)I

    move-result p1

    iget-object v0, p0, Lv/f;->L:Lv/d;

    invoke-static {v0}, Lt/f;->n(Lv/d;)I

    move-result v0

    iget-object v1, p0, Lv/f;->M:Lv/d;

    invoke-static {v1}, Lt/f;->n(Lv/d;)I

    move-result v1

    iget-object v2, p0, Lv/f;->N:Lv/d;

    invoke-static {v2}, Lt/f;->n(Lv/d;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v5, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz p2, :cond_1

    iget-object v3, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v4, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    move p1, v4

    move v0, p1

    move v1, v0

    move v2, v1

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Lv/f;->b0:I

    iput v0, p0, Lv/f;->c0:I

    iget p1, p0, Lv/f;->j0:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Lv/f;->X:I

    iput v4, p0, Lv/f;->Y:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p1, v4

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v0, :cond_5

    iget v3, p0, Lv/f;->X:I

    if-ge v1, v3, :cond_5

    move v1, v3

    :cond_5
    const/4 v3, 0x1

    aget-object v4, p1, v3

    if-ne v4, v0, :cond_6

    iget v0, p0, Lv/f;->Y:I

    if-ge v2, v0, :cond_6

    move v2, v0

    :cond_6
    iput v1, p0, Lv/f;->X:I

    iput v2, p0, Lv/f;->Y:I

    iget v0, p0, Lv/f;->f0:I

    if-ge v2, v0, :cond_7

    iput v0, p0, Lv/f;->Y:I

    :cond_7
    iget v0, p0, Lv/f;->e0:I

    if-ge v1, v0, :cond_8

    iput v0, p0, Lv/f;->X:I

    :cond_8
    iget v0, p0, Lv/f;->w:I

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-lez v0, :cond_9

    if-ne p2, v4, :cond_9

    iget p2, p0, Lv/f;->X:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lv/f;->X:I

    :cond_9
    iget p2, p0, Lv/f;->z:I

    if-lez p2, :cond_a

    aget-object p1, p1, v3

    if-ne p1, v4, :cond_a

    iget p1, p0, Lv/f;->Y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lv/f;->Y:I

    :cond_a
    iget p1, p0, Lv/f;->X:I

    if-eq v1, p1, :cond_b

    iput p1, p0, Lv/f;->i:I

    :cond_b
    iget p1, p0, Lv/f;->Y:I

    if-eq v2, p1, :cond_c

    iput p1, p0, Lv/f;->j:I

    :cond_c
    :goto_0
    return-void
.end method

.method public final b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p0}, Lv/m;->a(Lv/g;Lt/f;Lv/f;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    invoke-virtual {p1, p5}, Lv/g;->W(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lv/f;->c(Lt/f;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object p5, p0, Lv/f;->K:Lv/d;

    iget-object p5, p5, Lv/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v1, v0, Lv/d;->d:Lv/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-object p0, p0, Lv/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lv/d;

    iget-object v0, p5, Lv/d;->d:Lv/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object p5, p0, Lv/f;->L:Lv/d;

    iget-object p5, p5, Lv/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v1, v0, Lv/d;->d:Lv/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object p5, p0, Lv/f;->N:Lv/d;

    iget-object p5, p5, Lv/d;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/d;

    iget-object v1, v0, Lv/d;->d:Lv/f;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lv/f;->O:Lv/d;

    iget-object p0, p0, Lv/d;->a:Ljava/util/HashSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lv/d;

    iget-object v0, p5, Lv/d;->d:Lv/f;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lv/f;->b(Lv/g;Lt/f;Ljava/util/HashSet;IZ)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method public c(Lt/f;Z)V
    .locals 66

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lv/f;->K:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v13

    iget-object v1, v15, Lv/f;->M:Lv/d;

    invoke-virtual {v14, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v12

    iget-object v2, v15, Lv/f;->L:Lv/d;

    invoke-virtual {v14, v2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v11

    iget-object v10, v15, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v10}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v9

    iget-object v8, v15, Lv/f;->O:Lv/d;

    invoke-virtual {v14, v8}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v7

    iget-object v3, v15, Lv/f;->W:Lv/f;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v3, v5

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const/4 v5, 0x1

    aget-object v3, v3, v5

    if-ne v3, v6, :cond_1

    move/from16 v20, v5

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    :goto_1
    iget v3, v15, Lv/f;->r:I

    if-eq v3, v5, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    move/from16 v29, v4

    move/from16 v28, v20

    goto :goto_2

    :cond_2
    move/from16 v29, v4

    const/16 v28, 0x0

    goto :goto_2

    :cond_3
    const/16 v20, 0x0

    :cond_4
    move/from16 v28, v20

    const/16 v29, 0x0

    :goto_2
    iget v3, v15, Lv/f;->j0:I

    const/16 v5, 0x8

    iget-object v4, v15, Lv/f;->U:[Z

    if-ne v3, v5, :cond_9

    iget-object v3, v15, Lv/f;->T:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v21, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Lv/d;

    iget-object v3, v3, Lv/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v23

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_a

    const/4 v3, 0x0

    aget-boolean v5, v4, v3

    if-nez v5, :cond_a

    const/4 v3, 0x1

    aget-boolean v5, v4, v3

    if-nez v5, :cond_a

    return-void

    :cond_9
    move-object/from16 v21, v6

    :cond_a
    iget-boolean v3, v15, Lv/f;->l:Z

    if-nez v3, :cond_c

    iget-boolean v5, v15, Lv/f;->m:Z

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move-object/from16 v23, v4

    const/4 v6, 0x5

    goto/16 :goto_e

    :cond_c
    :goto_7
    iget-boolean v5, v15, Lv/f;->h:Z

    if-eqz v3, :cond_11

    iget v3, v15, Lv/f;->b0:I

    invoke-virtual {v14, v13, v3}, Lt/f;->d(Lt/m;I)V

    iget v3, v15, Lv/f;->b0:I

    iget v6, v15, Lv/f;->X:I

    add-int/2addr v3, v6

    invoke-virtual {v14, v12, v3}, Lt/f;->d(Lt/m;I)V

    if-eqz v29, :cond_11

    iget-object v3, v15, Lv/f;->W:Lv/f;

    if-eqz v3, :cond_11

    if-eqz v5, :cond_10

    check-cast v3, Lv/g;

    iget-object v6, v3, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v0}, Lv/d;->d()I

    move-result v6

    move-object/from16 v23, v4

    iget-object v4, v3, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/d;

    invoke-virtual {v4}, Lv/d;->d()I

    move-result v4

    if-le v6, v4, :cond_e

    goto :goto_8

    :cond_d
    move-object/from16 v23, v4

    :goto_8
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lv/g;->J0:Ljava/lang/ref/WeakReference;

    :cond_e
    iget-object v4, v3, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v1}, Lv/d;->d()I

    move-result v4

    iget-object v6, v3, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv/d;

    invoke-virtual {v6}, Lv/d;->d()I

    move-result v6

    if-le v4, v6, :cond_12

    :cond_f
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lv/g;->L0:Ljava/lang/ref/WeakReference;

    goto :goto_9

    :cond_10
    move-object/from16 v23, v4

    iget-object v3, v3, Lv/f;->M:Lv/d;

    invoke-virtual {v14, v3}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v6, 0x0

    invoke-virtual {v14, v3, v12, v6, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_9

    :cond_11
    move-object/from16 v23, v4

    :cond_12
    :goto_9
    iget-boolean v3, v15, Lv/f;->m:Z

    if-eqz v3, :cond_1a

    iget v3, v15, Lv/f;->c0:I

    invoke-virtual {v14, v11, v3}, Lt/f;->d(Lt/m;I)V

    iget v3, v15, Lv/f;->c0:I

    iget v4, v15, Lv/f;->Y:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v9, v3}, Lt/f;->d(Lt/m;I)V

    iget-object v3, v8, Lv/d;->a:Ljava/util/HashSet;

    if-nez v3, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_15

    iget v3, v15, Lv/f;->c0:I

    iget v4, v15, Lv/f;->d0:I

    add-int/2addr v3, v4

    invoke-virtual {v14, v7, v3}, Lt/f;->d(Lt/m;I)V

    :cond_15
    if-eqz v28, :cond_1a

    iget-object v3, v15, Lv/f;->W:Lv/f;

    if-eqz v3, :cond_1a

    if-eqz v5, :cond_19

    check-cast v3, Lv/g;

    iget-object v4, v3, Lv/g;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v4

    iget-object v5, v3, Lv/g;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    invoke-virtual {v5}, Lv/d;->d()I

    move-result v5

    if-le v4, v5, :cond_17

    :cond_16
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lv/g;->I0:Ljava/lang/ref/WeakReference;

    :cond_17
    iget-object v4, v3, Lv/g;->K0:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v10}, Lv/d;->d()I

    move-result v4

    iget-object v5, v3, Lv/g;->K0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv/d;

    invoke-virtual {v5}, Lv/d;->d()I

    move-result v5

    if-le v4, v5, :cond_1a

    :cond_18
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lv/g;->K0:Ljava/lang/ref/WeakReference;

    goto :goto_c

    :cond_19
    iget-object v3, v3, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v3}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x5

    invoke-virtual {v14, v3, v9, v4, v6}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_d

    :cond_1a
    :goto_c
    const/4 v4, 0x0

    const/4 v6, 0x5

    :goto_d
    iget-boolean v3, v15, Lv/f;->l:Z

    if-eqz v3, :cond_1b

    iget-boolean v3, v15, Lv/f;->m:Z

    if-eqz v3, :cond_1b

    iput-boolean v4, v15, Lv/f;->l:Z

    iput-boolean v4, v15, Lv/f;->m:Z

    return-void

    :cond_1b
    :goto_e
    iget-object v5, v15, Lv/f;->f:[Z

    if-eqz p2, :cond_1e

    iget-object v3, v15, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eqz v3, :cond_1e

    iget-object v4, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v4, :cond_1e

    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-object/from16 v27, v8

    iget-boolean v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v8, :cond_1f

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1f

    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1f

    iget-object v3, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_1f

    iget v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v13, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v12, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v11, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v9, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-virtual {v14, v7, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_1d

    if-eqz v29, :cond_1c

    const/4 v0, 0x0

    aget-boolean v1, v5, v0

    if-eqz v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lv/f;->y()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v15, Lv/f;->W:Lv/f;

    iget-object v1, v1, Lv/f;->M:Lv/d;

    invoke-virtual {v14, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v14, v1, v12, v0, v2}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_1c
    if-eqz v28, :cond_1d

    const/4 v0, 0x1

    aget-boolean v0, v5, v0

    if-eqz v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lv/f;->z()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, v15, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v9, v2, v1}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, v15, Lv/f;->l:Z

    iput-boolean v2, v15, Lv/f;->m:Z

    return-void

    :cond_1e
    move-object/from16 v27, v8

    :cond_1f
    iget-object v3, v15, Lv/f;->W:Lv/f;

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lv/f;->x(I)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, v15, Lv/f;->W:Lv/f;

    check-cast v4, Lv/g;

    invoke-virtual {v4, v3, v15}, Lv/g;->S(ILv/f;)V

    const/4 v3, 0x1

    goto :goto_10

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lv/f;->y()Z

    move-result v3

    :goto_10
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Lv/f;->x(I)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, v15, Lv/f;->W:Lv/f;

    check-cast v6, Lv/g;

    invoke-virtual {v6, v4, v15}, Lv/g;->S(ILv/f;)V

    const/4 v4, 0x1

    goto :goto_11

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lv/f;->z()Z

    move-result v4

    :goto_11
    if-nez v3, :cond_22

    if-eqz v29, :cond_22

    iget v6, v15, Lv/f;->j0:I

    const/16 v8, 0x8

    if-eq v6, v8, :cond_22

    iget-object v6, v0, Lv/d;->f:Lv/d;

    if-nez v6, :cond_22

    iget-object v6, v1, Lv/d;->f:Lv/d;

    if-nez v6, :cond_22

    iget-object v6, v15, Lv/f;->W:Lv/f;

    iget-object v6, v6, Lv/f;->M:Lv/d;

    invoke-virtual {v14, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v6

    move/from16 v24, v3

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v14, v6, v12, v3, v8}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_12

    :cond_22
    move/from16 v24, v3

    :goto_12
    if-nez v4, :cond_23

    if-eqz v28, :cond_23

    iget v3, v15, Lv/f;->j0:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_23

    iget-object v3, v2, Lv/d;->f:Lv/d;

    if-nez v3, :cond_23

    iget-object v3, v10, Lv/d;->f:Lv/d;

    if-nez v3, :cond_23

    if-nez v27, :cond_23

    iget-object v3, v15, Lv/f;->W:Lv/f;

    iget-object v3, v3, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v3}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v14, v3, v9, v8, v6}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_23
    move/from16 v30, v4

    move/from16 v31, v24

    goto :goto_13

    :cond_24
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_13
    iget v3, v15, Lv/f;->X:I

    iget v4, v15, Lv/f;->e0:I

    if-ge v3, v4, :cond_25

    goto :goto_14

    :cond_25
    move v4, v3

    :goto_14
    iget v6, v15, Lv/f;->Y:I

    iget v8, v15, Lv/f;->f0:I

    if-ge v6, v8, :cond_26

    goto :goto_15

    :cond_26
    move v8, v6

    :goto_15
    move-object/from16 v32, v11

    iget-object v11, v15, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v24, v4

    const/16 v19, 0x0

    aget-object v4, v11, v19

    move-object/from16 v33, v9

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v34, v7

    const/16 v18, 0x1

    if-eq v4, v9, :cond_27

    const/16 v25, 0x1

    goto :goto_16

    :cond_27
    const/16 v25, 0x0

    :goto_16
    aget-object v7, v11, v18

    move/from16 v35, v8

    if-eq v7, v9, :cond_28

    const/16 v26, 0x1

    goto :goto_17

    :cond_28
    const/16 v26, 0x0

    :goto_17
    iget v8, v15, Lv/f;->a0:I

    iput v8, v15, Lv/f;->B:I

    move-object/from16 v36, v5

    iget v5, v15, Lv/f;->Z:F

    iput v5, v15, Lv/f;->C:F

    move-object/from16 v37, v12

    iget v12, v15, Lv/f;->s:I

    move-object/from16 v38, v13

    iget v13, v15, Lv/f;->t:I

    const/16 v39, 0x0

    cmpl-float v39, v5, v39

    if-lez v39, :cond_3b

    iget v14, v15, Lv/f;->j0:I

    move-object/from16 v41, v11

    const/16 v11, 0x8

    if-eq v14, v11, :cond_3c

    if-ne v4, v9, :cond_29

    if-nez v12, :cond_29

    const/4 v12, 0x3

    :cond_29
    if-ne v7, v9, :cond_2a

    if-nez v13, :cond_2a

    const/4 v13, 0x3

    :cond_2a
    if-ne v4, v9, :cond_35

    if-ne v7, v9, :cond_35

    const/4 v11, 0x3

    if-ne v12, v11, :cond_35

    if-ne v13, v11, :cond_35

    const/4 v11, -0x1

    if-ne v8, v11, :cond_2c

    if-eqz v25, :cond_2b

    if-nez v26, :cond_2b

    const/4 v3, 0x0

    iput v3, v15, Lv/f;->B:I

    goto :goto_18

    :cond_2b
    if-nez v25, :cond_2c

    if-eqz v26, :cond_2c

    const/4 v3, 0x1

    iput v3, v15, Lv/f;->B:I

    if-ne v8, v11, :cond_2c

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v14, v3, v5

    iput v14, v15, Lv/f;->C:F

    :cond_2c
    :goto_18
    iget v3, v15, Lv/f;->B:I

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Lv/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v10}, Lv/d;->h()Z

    move-result v3

    if-nez v3, :cond_2e

    :cond_2d
    const/4 v3, 0x1

    iput v3, v15, Lv/f;->B:I

    goto :goto_19

    :cond_2e
    const/4 v3, 0x1

    iget v4, v15, Lv/f;->B:I

    if-ne v4, v3, :cond_30

    invoke-virtual {v0}, Lv/d;->h()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v1}, Lv/d;->h()Z

    move-result v3

    if-nez v3, :cond_30

    :cond_2f
    const/4 v3, 0x0

    iput v3, v15, Lv/f;->B:I

    :cond_30
    :goto_19
    iget v3, v15, Lv/f;->B:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_33

    invoke-virtual {v2}, Lv/d;->h()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v10}, Lv/d;->h()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v0}, Lv/d;->h()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v1}, Lv/d;->h()Z

    move-result v3

    if-nez v3, :cond_33

    :cond_31
    invoke-virtual {v2}, Lv/d;->h()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v10}, Lv/d;->h()Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x0

    iput v2, v15, Lv/f;->B:I

    goto :goto_1a

    :cond_32
    invoke-virtual {v0}, Lv/d;->h()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v1}, Lv/d;->h()Z

    move-result v0

    if-eqz v0, :cond_33

    iget v0, v15, Lv/f;->C:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lv/f;->C:F

    const/4 v0, 0x1

    iput v0, v15, Lv/f;->B:I

    :cond_33
    :goto_1a
    iget v0, v15, Lv/f;->B:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    iget v0, v15, Lv/f;->v:I

    if-lez v0, :cond_34

    iget v1, v15, Lv/f;->y:I

    if-nez v1, :cond_34

    const/4 v1, 0x0

    iput v1, v15, Lv/f;->B:I

    goto :goto_1c

    :cond_34
    if-nez v0, :cond_3a

    iget v0, v15, Lv/f;->y:I

    if-lez v0, :cond_3a

    iget v0, v15, Lv/f;->C:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v0

    iput v14, v15, Lv/f;->C:F

    const/4 v0, 0x1

    iput v0, v15, Lv/f;->B:I

    goto :goto_1c

    :cond_35
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne v4, v9, :cond_37

    if-ne v12, v1, :cond_37

    const/4 v2, 0x0

    iput v2, v15, Lv/f;->B:I

    int-to-float v1, v6

    mul-float/2addr v5, v1

    float-to-int v4, v5

    if-eq v7, v9, :cond_36

    move v12, v0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1f

    :cond_36
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1d

    :cond_37
    if-ne v7, v9, :cond_3a

    if-ne v13, v1, :cond_3a

    const/4 v1, 0x1

    iput v1, v15, Lv/f;->B:I

    const/4 v1, -0x1

    if-ne v8, v1, :cond_38

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v14, v1, v5

    iput v14, v15, Lv/f;->C:F

    goto :goto_1b

    :cond_38
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1b
    iget v2, v15, Lv/f;->C:F

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v8, v2

    if-eq v4, v9, :cond_39

    move/from16 v4, v24

    goto :goto_20

    :cond_39
    move/from16 v4, v24

    goto :goto_1e

    :cond_3a
    :goto_1c
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v4, v24

    :goto_1d
    move/from16 v8, v35

    :goto_1e
    move/from16 v40, v8

    move/from16 v43, v12

    move/from16 v42, v13

    const/16 v35, 0x1

    goto :goto_21

    :cond_3b
    move-object/from16 v41, v11

    :cond_3c
    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v4, v24

    :goto_1f
    move v0, v13

    move/from16 v8, v35

    :goto_20
    move/from16 v42, v0

    move/from16 v40, v8

    move/from16 v43, v12

    const/16 v35, 0x0

    :goto_21
    iget-object v0, v15, Lv/f;->u:[I

    const/4 v2, 0x0

    aput v43, v0, v2

    const/4 v2, 0x1

    aput v42, v0, v2

    if-eqz v35, :cond_3e

    iget v0, v15, Lv/f;->B:I

    const/4 v2, -0x1

    if-eqz v0, :cond_3d

    if-ne v0, v2, :cond_3f

    :cond_3d
    const/16 v39, 0x1

    goto :goto_22

    :cond_3e
    const/4 v2, -0x1

    :cond_3f
    const/16 v39, 0x0

    :goto_22
    if-eqz v35, :cond_41

    iget v0, v15, Lv/f;->B:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_40

    if-ne v0, v2, :cond_41

    :cond_40
    const/4 v0, 0x0

    const/16 v44, 0x1

    goto :goto_23

    :cond_41
    const/4 v0, 0x0

    const/16 v44, 0x0

    :goto_23
    aget-object v2, v41, v0

    move-object/from16 v6, v21

    if-ne v2, v6, :cond_42

    instance-of v0, v15, Lv/g;

    if-eqz v0, :cond_42

    const/4 v11, 0x1

    goto :goto_24

    :cond_42
    const/4 v11, 0x0

    :goto_24
    if-eqz v11, :cond_43

    const/4 v13, 0x0

    goto :goto_25

    :cond_43
    move v13, v4

    :goto_25
    iget-object v14, v15, Lv/f;->R:Lv/d;

    invoke-virtual {v14}, Lv/d;->h()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/lit8 v45, v0, 0x1

    const/4 v0, 0x0

    aget-boolean v21, v23, v0

    aget-boolean v46, v23, v2

    iget v0, v15, Lv/f;->p:I

    iget-object v12, v15, Lv/f;->D:[I

    const/16 v47, 0x0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4b

    iget-boolean v0, v15, Lv/f;->l:Z

    if-nez v0, :cond_4b

    if-eqz p2, :cond_47

    iget-object v0, v15, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-eqz v0, :cond_47

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v3, :cond_47

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v0, :cond_44

    goto :goto_27

    :cond_44
    if-eqz p2, :cond_46

    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v8, p1

    move v4, v1

    move-object/from16 v7, v38

    invoke-virtual {v8, v7, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v3, v37

    invoke-virtual {v8, v3, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_45

    if-eqz v29, :cond_45

    const/4 v0, 0x0

    aget-boolean v1, v36, v0

    if-eqz v1, :cond_45

    invoke-virtual/range {p0 .. p0}, Lv/f;->y()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, v15, Lv/f;->W:Lv/f;

    iget-object v1, v1, Lv/f;->M:Lv/d;

    invoke-virtual {v8, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v8, v1, v3, v0, v2}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_26

    :cond_45
    const/16 v2, 0x8

    :goto_26
    move-object/from16 v62, v3

    move-object/from16 v55, v6

    move-object/from16 v63, v7

    move-object/from16 v59, v9

    move-object/from16 v61, v10

    move-object/from16 v57, v27

    move-object/from16 v60, v32

    move-object/from16 v58, v33

    move-object/from16 v56, v34

    goto/16 :goto_2c

    :cond_46
    move-object/from16 v8, p1

    goto/16 :goto_2b

    :cond_47
    :goto_27
    move-object/from16 v8, p1

    move v4, v1

    move-object/from16 v3, v37

    move-object/from16 v7, v38

    const/16 v2, 0x8

    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_48

    iget-object v0, v0, Lv/f;->M:Lv/d;

    invoke-virtual {v8, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_28

    :cond_48
    move-object/from16 v16, v47

    :goto_28
    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_49

    iget-object v0, v0, Lv/f;->K:Lv/d;

    invoke-virtual {v8, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_29

    :cond_49
    move-object/from16 v17, v47

    :goto_29
    const/16 v19, 0x0

    aget-boolean v20, v36, v19

    aget-object v23, v41, v19

    iget-object v1, v15, Lv/f;->K:Lv/d;

    iget-object v0, v15, Lv/f;->M:Lv/d;

    iget v2, v15, Lv/f;->b0:I

    move/from16 v38, v2

    iget v2, v15, Lv/f;->e0:I

    aget v48, v12, v19

    move/from16 v49, v2

    iget v2, v15, Lv/f;->g0:F

    const/16 v18, 0x1

    aget-object v4, v41, v18

    if-ne v4, v9, :cond_4a

    move/from16 v50, v18

    goto :goto_2a

    :cond_4a
    move/from16 v50, v19

    :goto_2a
    iget v4, v15, Lv/f;->v:I

    move/from16 v24, v4

    iget v4, v15, Lv/f;->w:I

    move/from16 v25, v4

    iget v4, v15, Lv/f;->x:F

    move/from16 v26, v4

    const/4 v4, 0x1

    move/from16 v37, v38

    move/from16 v38, v49

    const/16 v51, 0x8

    move/from16 v49, v2

    move v2, v4

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v53, v1

    move-object/from16 v1, p1

    move-object/from16 v54, v3

    move/from16 v3, v29

    move/from16 v4, v28

    move/from16 v5, v20

    move-object/from16 v55, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v56, v34

    move-object/from16 v7, v16

    move-object/from16 v57, v27

    move-object/from16 v8, v23

    move-object/from16 v59, v9

    move-object/from16 v58, v33

    move v9, v11

    move-object v11, v10

    move-object/from16 v10, v53

    move-object/from16 v61, v11

    move-object/from16 v60, v32

    move-object/from16 v32, v41

    move-object/from16 v11, v52

    move-object/from16 v33, v12

    move-object/from16 v62, v54

    move/from16 v12, v37

    move-object/from16 v63, v17

    move-object/from16 v34, v14

    move/from16 v14, v38

    move/from16 v15, v48

    move/from16 v16, v49

    move/from16 v17, v39

    move/from16 v18, v50

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v22, v43

    move/from16 v23, v42

    move/from16 v27, v45

    invoke-virtual/range {v0 .. v27}, Lv/f;->e(Lt/f;ZZZZLt/m;Lt/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLv/d;Lv/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_2d

    :cond_4b
    :goto_2b
    move-object/from16 v55, v6

    move-object/from16 v59, v9

    move-object/from16 v61, v10

    move-object/from16 v57, v27

    move-object/from16 v60, v32

    move-object/from16 v58, v33

    move-object/from16 v56, v34

    move-object/from16 v62, v37

    move-object/from16 v63, v38

    :goto_2c
    move-object/from16 v32, v41

    move-object/from16 v33, v12

    move-object/from16 v34, v14

    :goto_2d
    if-eqz p2, :cond_4f

    move-object/from16 v15, p0

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-eqz v0, :cond_4e

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v2, :cond_4e

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v0, :cond_4e

    iget v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v60

    invoke-virtual {v14, v13, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v12, v58

    invoke-virtual {v14, v12, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    move-object/from16 v1, v56

    invoke-virtual {v14, v1, v0}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_4d

    if-nez v30, :cond_4d

    if-eqz v28, :cond_4d

    const/4 v11, 0x1

    aget-boolean v2, v36, v11

    if-eqz v2, :cond_4c

    iget-object v0, v0, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    invoke-virtual {v14, v0, v12, v10, v2}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_2e

    :cond_4c
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_2e

    :cond_4d
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_2e
    move v4, v10

    goto :goto_30

    :cond_4e
    move-object/from16 v14, p1

    move-object/from16 v1, v56

    move-object/from16 v12, v58

    move-object/from16 v13, v60

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_2f

    :cond_4f
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, v56

    move-object/from16 v12, v58

    move-object/from16 v13, v60

    :goto_2f
    move v4, v11

    :goto_30
    iget v0, v15, Lv/f;->q:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_50

    move v5, v10

    goto :goto_31

    :cond_50
    move v5, v4

    :goto_31
    if-eqz v5, :cond_5b

    iget-boolean v0, v15, Lv/f;->m:Z

    if-nez v0, :cond_5b

    aget-object v0, v32, v11

    move-object/from16 v3, v55

    if-ne v0, v3, :cond_51

    instance-of v0, v15, Lv/g;

    if-eqz v0, :cond_51

    move v9, v11

    goto :goto_32

    :cond_51
    move v9, v10

    :goto_32
    if-eqz v9, :cond_52

    move/from16 v40, v10

    :cond_52
    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_53

    iget-object v0, v0, Lv/f;->N:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    move-object v7, v0

    goto :goto_33

    :cond_53
    move-object/from16 v7, v47

    :goto_33
    iget-object v0, v15, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_54

    iget-object v0, v0, Lv/f;->L:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    move-object v6, v0

    goto :goto_34

    :cond_54
    move-object/from16 v6, v47

    :goto_34
    iget v0, v15, Lv/f;->d0:I

    if-gtz v0, :cond_55

    iget v3, v15, Lv/f;->j0:I

    if-ne v3, v2, :cond_59

    :cond_55
    move-object/from16 v3, v57

    iget-object v4, v3, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_57

    invoke-virtual {v14, v1, v13, v0, v2}, Lt/f;->e(Lt/m;Lt/m;II)V

    iget-object v0, v3, Lv/d;->f:Lv/d;

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    invoke-virtual {v14, v1, v0, v3, v2}, Lt/f;->e(Lt/m;Lt/m;II)V

    if-eqz v28, :cond_56

    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v14, v7, v0, v10, v1}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_56
    move/from16 v27, v10

    goto :goto_36

    :cond_57
    iget v4, v15, Lv/f;->j0:I

    if-ne v4, v2, :cond_58

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_35

    :cond_58
    invoke-virtual {v14, v1, v13, v0, v2}, Lt/f;->e(Lt/m;Lt/m;II)V

    :cond_59
    :goto_35
    move/from16 v27, v45

    :goto_36
    aget-boolean v5, v36, v11

    aget-object v8, v32, v11

    iget-object v4, v15, Lv/f;->L:Lv/d;

    iget-object v3, v15, Lv/f;->N:Lv/d;

    iget v1, v15, Lv/f;->c0:I

    iget v0, v15, Lv/f;->f0:I

    aget v16, v33, v11

    iget v2, v15, Lv/f;->h0:F

    aget-object v11, v32, v10

    move-object/from16 v10, v59

    if-ne v11, v10, :cond_5a

    const/16 v18, 0x1

    goto :goto_37

    :cond_5a
    const/16 v18, 0x0

    :goto_37
    iget v10, v15, Lv/f;->y:I

    move/from16 v24, v10

    iget v10, v15, Lv/f;->z:I

    move/from16 v25, v10

    iget v10, v15, Lv/f;->A:F

    move/from16 v26, v10

    const/4 v10, 0x0

    move/from16 v17, v2

    move v2, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v28

    move-object v10, v4

    move/from16 v4, v29

    move-object/from16 v64, v12

    move/from16 v12, v20

    move-object/from16 v65, v13

    move/from16 v13, v40

    move/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v44

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v46

    move/from16 v22, v42

    move/from16 v23, v43

    invoke-virtual/range {v0 .. v27}, Lv/f;->e(Lt/f;ZZZZLt/m;Lt/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLv/d;Lv/d;IIIIFZZZZZIIIIFZ)V

    goto :goto_38

    :cond_5b
    move-object/from16 v64, v12

    move-object/from16 v65, v13

    :goto_38
    if-eqz v35, :cond_5d

    move-object/from16 v0, p0

    iget v1, v0, Lv/f;->B:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5c

    iget v1, v0, Lv/f;->C:F

    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v3

    iget-object v4, v3, Lt/d;->d:Lt/c;

    move-object/from16 v5, v64

    invoke-interface {v4, v5, v2}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    move-object/from16 v4, v65

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v2, v4, v6}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    move-object/from16 v7, v62

    invoke-interface {v2, v7, v1}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    neg-float v1, v1

    move-object/from16 v8, v63

    invoke-interface {v2, v8, v1}, Lt/c;->d(Lt/m;F)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v3}, Lt/f;->c(Lt/d;)V

    goto :goto_39

    :cond_5c
    move-object/from16 v1, p1

    move-object/from16 v7, v62

    move-object/from16 v8, v63

    move-object/from16 v5, v64

    move-object/from16 v4, v65

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, v0, Lv/f;->C:F

    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v9

    iget-object v10, v9, Lt/d;->d:Lt/c;

    invoke-interface {v10, v7, v2}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v9, Lt/d;->d:Lt/c;

    invoke-interface {v2, v8, v6}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v9, Lt/d;->d:Lt/c;

    invoke-interface {v2, v5, v3}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v9, Lt/d;->d:Lt/c;

    neg-float v3, v3

    invoke-interface {v2, v4, v3}, Lt/c;->d(Lt/m;F)V

    invoke-virtual {v1, v9}, Lt/f;->c(Lt/d;)V

    goto :goto_39

    :cond_5d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_39
    invoke-virtual/range {v34 .. v34}, Lv/d;->h()Z

    move-result v2

    if-eqz v2, :cond_5e

    move-object/from16 v2, v34

    iget-object v3, v2, Lv/d;->f:Lv/d;

    iget-object v3, v3, Lv/d;->d:Lv/f;

    iget v4, v0, Lv/f;->E:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lv/d;->e()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v6

    invoke-virtual {v1, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v7}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v8

    invoke-virtual {v1, v8}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v9}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v10

    invoke-virtual {v1, v10}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v11}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v12

    invoke-virtual {v1, v12}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v12

    invoke-virtual {v3, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v5

    invoke-virtual {v1, v5}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v5

    invoke-virtual {v3, v7}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v7

    invoke-virtual {v1, v7}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v7

    invoke-virtual {v3, v9}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v9

    invoke-virtual {v1, v9}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v9

    invoke-virtual {v3, v11}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-object v4, v9

    move-object/from16 p2, v10

    int-to-double v9, v2

    move-object/from16 v17, v4

    move-object v2, v5

    mul-double v4, v15, v9

    double-to-float v4, v4

    iget-object v5, v11, Lt/d;->d:Lt/c;

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-interface {v5, v7, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v5, v11, Lt/d;->d:Lt/c;

    invoke-interface {v5, v3, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v3, v11, Lt/d;->d:Lt/c;

    const/high16 v5, -0x41000000    # -0.5f

    invoke-interface {v3, v8, v5}, Lt/c;->d(Lt/m;F)V

    iget-object v3, v11, Lt/d;->d:Lt/c;

    invoke-interface {v3, v12, v5}, Lt/c;->d(Lt/m;F)V

    neg-float v3, v4

    iput v3, v11, Lt/d;->b:F

    invoke-virtual {v1, v11}, Lt/f;->c(Lt/d;)V

    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    double-to-float v4, v7

    iget-object v7, v3, Lt/d;->d:Lt/c;

    invoke-interface {v7, v2, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    move-object/from16 v7, v17

    invoke-interface {v2, v7, v15}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    invoke-interface {v2, v6, v5}, Lt/c;->d(Lt/m;F)V

    iget-object v2, v3, Lt/d;->d:Lt/c;

    move-object/from16 v6, p2

    invoke-interface {v2, v6, v5}, Lt/c;->d(Lt/m;F)V

    neg-float v2, v4

    iput v2, v3, Lt/d;->b:F

    invoke-virtual {v1, v3}, Lt/f;->c(Lt/d;)V

    :cond_5e
    const/4 v1, 0x0

    iput-boolean v1, v0, Lv/f;->l:Z

    iput-boolean v1, v0, Lv/f;->m:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget p0, p0, Lv/f;->j0:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(Lt/f;ZZZZLt/m;Lt/m;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLv/d;Lv/d;IIIIFZZZZZIIIIFZ)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    move/from16 v5, p26

    invoke-virtual {v10, v13}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v9

    invoke-virtual {v10, v14}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v8

    iget-object v6, v13, Lv/d;->f:Lv/d;

    invoke-virtual {v10, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v7

    iget-object v6, v14, Lv/d;->f:Lv/d;

    invoke-virtual {v10, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v6

    invoke-virtual/range {p10 .. p10}, Lv/d;->h()Z

    move-result v16

    invoke-virtual/range {p11 .. p11}, Lv/d;->h()Z

    move-result v17

    iget-object v12, v0, Lv/f;->R:Lv/d;

    invoke-virtual {v12}, Lv/d;->h()Z

    move-result v12

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v2, v18

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-eqz v11, :cond_4

    if-eq v11, v6, :cond_4

    const/4 v6, 0x2

    if-eq v11, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x4

    if-eq v14, v6, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x4

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iget v6, v0, Lv/f;->i:I

    move/from16 v22, v11

    const/4 v11, -0x1

    if-eq v6, v11, :cond_6

    if-eqz p2, :cond_6

    iput v11, v0, Lv/f;->i:I

    move/from16 p13, v6

    const/16 v22, 0x0

    :cond_6
    iget v6, v0, Lv/f;->j:I

    if-eq v6, v11, :cond_7

    if-nez p2, :cond_7

    iput v11, v0, Lv/f;->j:I

    const/16 v22, 0x0

    goto :goto_4

    :cond_7
    move/from16 v6, p13

    :goto_4
    iget v11, v0, Lv/f;->j0:I

    move/from16 p13, v6

    const/16 v6, 0x8

    if-ne v11, v6, :cond_8

    const/4 v11, 0x0

    const/16 v22, 0x0

    goto :goto_5

    :cond_8
    move/from16 v11, p13

    :goto_5
    if-eqz p27, :cond_b

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v12, :cond_9

    move/from16 v6, p12

    invoke-virtual {v10, v9, v6}, Lt/f;->d(Lt/m;I)V

    goto :goto_6

    :cond_9
    if-eqz v16, :cond_a

    if-nez v17, :cond_a

    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v6

    move/from16 v24, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v6, v12}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v24, v12

    const/16 v12, 0x8

    goto :goto_7

    :cond_b
    move/from16 v24, v12

    move v12, v6

    :goto_7
    if-nez v22, :cond_f

    if-eqz p9, :cond_d

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v10, v8, v9, v6, v5}, Lt/f;->e(Lt/m;Lt/m;II)V

    if-lez v15, :cond_c

    invoke-virtual {v10, v8, v9, v15, v12}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_c
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_e

    invoke-virtual {v10, v8, v9, v1, v12}, Lt/f;->g(Lt/m;Lt/m;II)V

    goto :goto_8

    :cond_d
    const/4 v5, 0x3

    invoke-virtual {v10, v8, v9, v11, v12}, Lt/f;->e(Lt/m;Lt/m;II)V

    :cond_e
    :goto_8
    move v1, v5

    goto/16 :goto_c

    :cond_f
    const/4 v1, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_12

    if-nez p17, :cond_12

    const/4 v6, 0x1

    if-eq v14, v6, :cond_10

    if-nez v14, :cond_12

    :cond_10
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-lez v4, :cond_11

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_11
    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v5, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    const/16 v22, 0x0

    goto :goto_c

    :cond_12
    const/4 v6, -0x2

    if-ne v3, v6, :cond_13

    move v3, v11

    :cond_13
    if-ne v4, v6, :cond_14

    move v4, v11

    :cond_14
    if-lez v11, :cond_15

    const/4 v6, 0x1

    if-eq v14, v6, :cond_15

    const/4 v11, 0x0

    :cond_15
    if-lez v3, :cond_16

    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v3, v6}, Lt/f;->f(Lt/m;Lt/m;II)V

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_16
    if-lez v4, :cond_19

    if-eqz p3, :cond_17

    const/4 v6, 0x1

    if-ne v14, v6, :cond_17

    const/4 v6, 0x0

    goto :goto_9

    :cond_17
    const/4 v6, 0x1

    :goto_9
    if-eqz v6, :cond_18

    const/16 v6, 0x8

    invoke-virtual {v10, v8, v9, v4, v6}, Lt/f;->g(Lt/m;Lt/m;II)V

    goto :goto_a

    :cond_18
    const/16 v6, 0x8

    :goto_a
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_b

    :cond_19
    const/16 v6, 0x8

    :goto_b
    const/4 v12, 0x1

    if-ne v14, v12, :cond_1c

    if-eqz p3, :cond_1a

    invoke-virtual {v10, v8, v9, v11, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    goto :goto_c

    :cond_1a
    if-eqz p19, :cond_1b

    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, Lt/f;->e(Lt/m;Lt/m;II)V

    invoke-virtual {v10, v8, v9, v11, v6}, Lt/f;->g(Lt/m;Lt/m;II)V

    goto :goto_c

    :cond_1b
    const/4 v5, 0x5

    invoke-virtual {v10, v8, v9, v11, v5}, Lt/f;->e(Lt/m;Lt/m;II)V

    invoke-virtual {v10, v8, v9, v11, v6}, Lt/f;->g(Lt/m;Lt/m;II)V

    :goto_c
    move/from16 v11, p5

    move/from16 v25, v2

    :goto_d
    move v12, v3

    goto :goto_11

    :cond_1c
    const/4 v6, 0x2

    if-ne v14, v6, :cond_20

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget-object v12, v13, Lv/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-eq v12, v6, :cond_1e

    if-ne v12, v11, :cond_1d

    goto :goto_e

    :cond_1d
    iget-object v6, v0, Lv/f;->W:Lv/f;

    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v11}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v6

    iget-object v11, v0, Lv/f;->W:Lv/f;

    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v11, v12}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v11

    invoke-virtual {v10, v11}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v11

    goto :goto_f

    :cond_1e
    :goto_e
    iget-object v12, v0, Lv/f;->W:Lv/f;

    invoke-virtual {v12, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v6

    invoke-virtual {v10, v6}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v6

    iget-object v12, v0, Lv/f;->W:Lv/f;

    invoke-virtual {v12, v11}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v11

    invoke-virtual {v10, v11}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v11

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lt/f;->l()Lt/d;

    move-result-object v12

    iget-object v1, v12, Lt/d;->d:Lt/c;

    move/from16 v25, v2

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v8, v2}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v12, Lt/d;->d:Lt/c;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v9, v2}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v12, Lt/d;->d:Lt/c;

    invoke-interface {v1, v11, v5}, Lt/c;->d(Lt/m;F)V

    iget-object v1, v12, Lt/d;->d:Lt/c;

    neg-float v2, v5

    invoke-interface {v1, v6, v2}, Lt/c;->d(Lt/m;F)V

    invoke-virtual {v10, v12}, Lt/f;->c(Lt/d;)V

    if-eqz p3, :cond_1f

    const/16 v22, 0x0

    :cond_1f
    move/from16 v1, p5

    goto :goto_10

    :cond_20
    move/from16 v25, v2

    const/4 v1, 0x1

    :goto_10
    move v11, v1

    goto :goto_d

    :goto_11
    if-eqz p27, :cond_5e

    if-eqz p19, :cond_21

    move-object/from16 v2, p6

    move-object/from16 v7, p7

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v25

    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/16 v20, 0x1

    goto/16 :goto_34

    :cond_21
    if-nez v16, :cond_23

    if-nez v17, :cond_23

    if-nez v24, :cond_23

    move-object/from16 v6, v19

    :cond_22
    const/4 v5, 0x0

    goto :goto_13

    :cond_23
    if-eqz v16, :cond_25

    if-nez v17, :cond_25

    iget-object v0, v13, Lv/d;->f:Lv/d;

    iget-object v0, v0, Lv/d;->d:Lv/f;

    if-eqz p3, :cond_24

    instance-of v0, v0, Lv/a;

    if-eqz v0, :cond_24

    const/16 v6, 0x8

    goto :goto_12

    :cond_24
    const/4 v6, 0x5

    :goto_12
    move/from16 v21, p3

    move-object/from16 v15, p11

    move v0, v6

    move-object v5, v8

    move/from16 p5, v11

    move-object/from16 v1, v19

    goto/16 :goto_31

    :cond_25
    if-nez v16, :cond_27

    if-eqz v17, :cond_27

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v0

    neg-int v0, v0

    move-object/from16 v6, v19

    const/16 v1, 0x8

    invoke-virtual {v10, v8, v6, v0, v1}, Lt/f;->e(Lt/m;Lt/m;II)V

    if-eqz p3, :cond_22

    move-object/from16 v3, p6

    const/4 v0, 0x5

    const/4 v5, 0x0

    invoke-virtual {v10, v9, v3, v5, v0}, Lt/f;->f(Lt/m;Lt/m;II)V

    move-object/from16 v15, p11

    move-object v1, v6

    move/from16 p5, v11

    goto :goto_14

    :cond_26
    :goto_13
    move-object/from16 v15, p11

    move-object v1, v6

    move/from16 p5, v11

    const/4 v0, 0x5

    :goto_14
    move v6, v5

    move-object v5, v8

    goto/16 :goto_32

    :cond_27
    move-object/from16 v3, p6

    move-object/from16 v6, v19

    const/4 v5, 0x0

    if-eqz v16, :cond_26

    if-eqz v17, :cond_26

    iget-object v1, v13, Lv/d;->f:Lv/d;

    iget-object v2, v1, Lv/d;->d:Lv/f;

    move-object/from16 v1, p11

    const/4 v13, 0x3

    iget-object v5, v1, Lv/d;->f:Lv/d;

    iget-object v5, v5, Lv/d;->d:Lv/f;

    iget-object v13, v0, Lv/f;->W:Lv/f;

    const/16 v16, 0x6

    if-eqz v22, :cond_3d

    if-nez v14, :cond_2c

    if-nez v4, :cond_29

    if-nez v12, :cond_29

    iget-boolean v4, v7, Lt/m;->i:Z

    if-eqz v4, :cond_28

    iget-boolean v4, v6, Lt/m;->i:Z

    if-eqz v4, :cond_28

    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v0

    const/16 v4, 0x8

    invoke-virtual {v10, v9, v7, v0, v4}, Lt/f;->e(Lt/m;Lt/m;II)V

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v10, v8, v6, v0, v4}, Lt/f;->e(Lt/m;Lt/m;II)V

    return-void

    :cond_28
    const/16 v4, 0x8

    move/from16 v17, v4

    move/from16 v19, v17

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto :goto_15

    :cond_29
    const/16 v4, 0x8

    const/16 v17, 0x5

    const/16 v19, 0x5

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    :goto_15
    instance-of v4, v2, Lv/a;

    if-nez v4, :cond_2b

    instance-of v4, v5, Lv/a;

    if-eqz v4, :cond_2a

    goto :goto_16

    :cond_2a
    move/from16 v21, v16

    move/from16 v27, v17

    move/from16 v26, v23

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v17, 0x8

    move/from16 v23, v19

    move/from16 v19, v14

    goto :goto_1a

    :cond_2b
    :goto_16
    move/from16 v19, v14

    move/from16 v4, v17

    const/4 v15, 0x1

    const/16 v17, 0x8

    goto/16 :goto_20

    :cond_2c
    const/4 v15, 0x2

    const/16 v17, 0x8

    if-ne v14, v15, :cond_2f

    instance-of v4, v2, Lv/a;

    if-nez v4, :cond_2e

    instance-of v4, v5, Lv/a;

    if-eqz v4, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v4, 0x5

    goto :goto_18

    :cond_2e
    :goto_17
    const/4 v4, 0x4

    :goto_18
    const/4 v15, 0x5

    goto :goto_19

    :cond_2f
    const/4 v15, 0x1

    if-ne v14, v15, :cond_30

    move/from16 v15, v17

    const/4 v4, 0x4

    :goto_19
    move/from16 v23, v4

    move/from16 v19, v14

    move/from16 v27, v15

    move/from16 v21, v16

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    :goto_1a
    move-object/from16 v14, p7

    goto/16 :goto_24

    :cond_30
    const/4 v15, 0x3

    if-ne v14, v15, :cond_3c

    iget v15, v0, Lv/f;->B:I

    move/from16 v19, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_33

    if-eqz p20, :cond_32

    if-eqz p3, :cond_31

    const/4 v4, 0x5

    goto :goto_1b

    :cond_31
    const/4 v4, 0x4

    goto :goto_1b

    :cond_32
    move/from16 v4, v17

    :goto_1b
    move-object/from16 v14, p7

    move/from16 v21, v4

    move/from16 v27, v17

    const/4 v4, 0x5

    const/4 v15, 0x1

    const/16 v23, 0x5

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    goto/16 :goto_24

    :cond_33
    if-eqz p17, :cond_37

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_35

    const/4 v15, 0x1

    if-ne v14, v15, :cond_34

    goto :goto_1c

    :cond_34
    const/4 v4, 0x0

    goto :goto_1d

    :cond_35
    const/4 v15, 0x1

    :goto_1c
    move v4, v15

    :goto_1d
    if-nez v4, :cond_36

    move/from16 v14, v17

    const/4 v4, 0x5

    goto :goto_1e

    :cond_36
    const/4 v4, 0x4

    const/4 v14, 0x5

    :goto_1e
    move/from16 v23, v4

    move/from16 v27, v14

    move/from16 v24, v15

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v21, v16

    const/4 v4, 0x5

    goto :goto_1a

    :cond_37
    const/4 v15, 0x1

    if-lez v4, :cond_38

    const/4 v4, 0x5

    goto :goto_21

    :cond_38
    if-nez v4, :cond_3b

    if-nez v12, :cond_3b

    if-nez p20, :cond_39

    move/from16 v4, v17

    goto :goto_21

    :cond_39
    if-eq v2, v13, :cond_3a

    if-eq v5, v13, :cond_3a

    const/4 v4, 0x4

    goto :goto_1f

    :cond_3a
    const/4 v4, 0x5

    :goto_1f
    move/from16 v23, v15

    move/from16 v24, v23

    move/from16 v25, v24

    :goto_20
    move-object/from16 v14, p7

    move/from16 v27, v4

    move/from16 v21, v16

    move/from16 v26, v23

    const/4 v4, 0x5

    const/16 v23, 0x4

    goto/16 :goto_24

    :cond_3b
    const/4 v4, 0x4

    :goto_21
    move-object/from16 v14, p7

    move/from16 v23, v4

    move/from16 v24, v15

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v21, v16

    const/4 v4, 0x5

    const/16 v27, 0x5

    goto/16 :goto_24

    :cond_3c
    move/from16 v19, v14

    const/4 v15, 0x1

    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/16 v21, 0x0

    const/16 v23, 0x0

    goto :goto_23

    :cond_3d
    move/from16 v19, v14

    const/4 v15, 0x1

    const/16 v17, 0x8

    iget-boolean v4, v7, Lt/m;->i:Z

    if-eqz v4, :cond_40

    iget-boolean v4, v6, Lt/m;->i:Z

    if-eqz v4, :cond_40

    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v0

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v2

    const/16 v3, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v0

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v2

    move/from16 p25, v3

    invoke-virtual/range {p17 .. p25}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    if-eqz p3, :cond_3f

    if-eqz v11, :cond_3f

    iget-object v0, v1, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_3e

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v0

    move-object/from16 v14, p7

    goto :goto_22

    :cond_3e
    move-object/from16 v14, p7

    const/4 v0, 0x0

    :goto_22
    if-eq v6, v14, :cond_3f

    const/4 v4, 0x5

    invoke-virtual {v10, v14, v8, v0, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_3f
    return-void

    :cond_40
    move-object/from16 v14, p7

    const/4 v4, 0x5

    move/from16 v21, v15

    move/from16 v23, v21

    :goto_23
    move/from16 v27, v4

    move/from16 v24, v21

    move/from16 v25, v23

    const/16 v23, 0x4

    const/16 v26, 0x0

    move/from16 v21, v16

    :goto_24
    if-eqz v24, :cond_41

    if-ne v7, v6, :cond_41

    if-eq v2, v13, :cond_41

    const/16 v24, 0x0

    const/16 v28, 0x0

    goto :goto_25

    :cond_41
    move/from16 v28, v24

    move/from16 v24, v15

    :goto_25
    if-eqz v25, :cond_43

    if-nez v22, :cond_42

    if-nez p18, :cond_42

    if-nez p20, :cond_42

    if-ne v7, v3, :cond_42

    if-ne v6, v14, :cond_42

    move/from16 v25, v17

    move/from16 v27, v25

    const/16 v21, 0x0

    const/16 v24, 0x0

    goto :goto_26

    :cond_42
    move/from16 v25, v21

    move/from16 v21, p3

    :goto_26
    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v29

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v30

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v9

    move/from16 p5, v11

    move-object v11, v3

    move-object v3, v7

    move/from16 v31, v4

    move/from16 v4, v29

    move/from16 p8, v12

    const/16 v20, 0x0

    move-object v12, v5

    move/from16 v5, p16

    move-object/from16 p2, v6

    move/from16 v11, v17

    const/16 v17, 0x4

    const/16 v20, 0x1

    move-object/from16 v32, v7

    move-object v7, v8

    move-object/from16 v33, v8

    move/from16 v8, v30

    move-object/from16 v34, v9

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lt/f;->b(Lt/m;Lt/m;IFLt/m;Lt/m;II)V

    goto :goto_27

    :cond_43
    move-object v14, v2

    move-object/from16 p2, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v34, v9

    move/from16 p5, v11

    move/from16 p8, v12

    move/from16 v20, v15

    move/from16 v11, v17

    const/16 v17, 0x4

    move-object v15, v1

    move-object v12, v5

    move/from16 v21, p3

    :goto_27
    move/from16 v6, v24

    iget v0, v0, Lv/f;->j0:I

    if-ne v0, v11, :cond_46

    iget-object v0, v15, Lv/d;->a:Ljava/util/HashSet;

    if-nez v0, :cond_44

    goto :goto_28

    :cond_44
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_45

    move/from16 v0, v20

    goto :goto_29

    :cond_45
    :goto_28
    const/4 v0, 0x0

    :goto_29
    if-nez v0, :cond_46

    return-void

    :cond_46
    if-eqz v28, :cond_49

    move-object/from16 v1, p2

    move-object/from16 v0, v32

    if-eqz v21, :cond_48

    if-eq v0, v1, :cond_48

    if-nez v22, :cond_48

    instance-of v2, v14, Lv/a;

    if-nez v2, :cond_47

    instance-of v2, v12, Lv/a;

    if-eqz v2, :cond_48

    :cond_47
    move/from16 v2, v16

    goto :goto_2a

    :cond_48
    move/from16 v2, v27

    :goto_2a
    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v3

    move-object/from16 v4, v34

    invoke-virtual {v10, v4, v0, v3, v2}, Lt/f;->f(Lt/m;Lt/m;II)V

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v5, v33

    invoke-virtual {v10, v5, v1, v3, v2}, Lt/f;->g(Lt/m;Lt/m;II)V

    move/from16 v27, v2

    goto :goto_2b

    :cond_49
    move-object/from16 v1, p2

    move-object/from16 v0, v32

    move-object/from16 v5, v33

    move-object/from16 v4, v34

    :goto_2b
    if-eqz v21, :cond_4a

    if-eqz p21, :cond_4a

    instance-of v2, v14, Lv/a;

    if-nez v2, :cond_4a

    instance-of v2, v12, Lv/a;

    if-nez v2, :cond_4a

    if-eq v12, v13, :cond_4a

    move/from16 v2, v16

    move v3, v2

    move/from16 v6, v20

    goto :goto_2c

    :cond_4a
    move/from16 v2, v23

    move/from16 v3, v27

    :goto_2c
    if-eqz v6, :cond_56

    if-eqz v26, :cond_53

    if-eqz p20, :cond_4b

    if-eqz p4, :cond_53

    :cond_4b
    if-eq v14, v13, :cond_4d

    if-ne v12, v13, :cond_4c

    goto :goto_2d

    :cond_4c
    move v6, v2

    goto :goto_2e

    :cond_4d
    :goto_2d
    move/from16 v6, v16

    :goto_2e
    instance-of v7, v14, Lv/j;

    if-nez v7, :cond_4e

    instance-of v7, v12, Lv/j;

    if-eqz v7, :cond_4f

    :cond_4e
    const/4 v6, 0x5

    :cond_4f
    instance-of v7, v14, Lv/a;

    if-nez v7, :cond_50

    instance-of v7, v12, Lv/a;

    if-eqz v7, :cond_51

    :cond_50
    const/4 v6, 0x5

    :cond_51
    if-eqz p20, :cond_52

    const/4 v6, 0x5

    :cond_52
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_53
    move v6, v2

    if-eqz v21, :cond_55

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz p17, :cond_55

    if-nez p20, :cond_55

    if-eq v14, v13, :cond_54

    if-ne v12, v13, :cond_55

    :cond_54
    move/from16 v6, v17

    :cond_55
    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v2

    invoke-virtual {v10, v4, v0, v2, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v5, v1, v2, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    :cond_56
    if-eqz v21, :cond_58

    move-object/from16 v2, p6

    move v3, v11

    if-ne v2, v0, :cond_57

    invoke-virtual/range {p10 .. p10}, Lv/d;->e()I

    move-result v6

    goto :goto_2f

    :cond_57
    const/4 v6, 0x0

    :goto_2f
    if-eq v0, v2, :cond_59

    const/4 v0, 0x5

    invoke-virtual {v10, v4, v2, v6, v0}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_30

    :cond_58
    move v3, v11

    :cond_59
    const/4 v0, 0x5

    :goto_30
    if-eqz v21, :cond_5b

    if-eqz v22, :cond_5b

    if-nez p14, :cond_5b

    if-nez p8, :cond_5b

    if-eqz v22, :cond_5a

    move/from16 v14, v19

    const/4 v2, 0x3

    if-ne v14, v2, :cond_5a

    const/4 v6, 0x0

    invoke-virtual {v10, v5, v4, v6, v3}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_33

    :cond_5a
    const/4 v6, 0x0

    invoke-virtual {v10, v5, v4, v6, v0}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_33

    :cond_5b
    :goto_31
    const/4 v6, 0x0

    goto :goto_33

    :goto_32
    move/from16 v21, p3

    :goto_33
    if-eqz v21, :cond_5d

    if-eqz p5, :cond_5d

    iget-object v2, v15, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_5c

    invoke-virtual/range {p11 .. p11}, Lv/d;->e()I

    move-result v6

    :cond_5c
    move-object/from16 v7, p7

    if-eq v1, v7, :cond_5d

    invoke-virtual {v10, v7, v5, v6, v0}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_5d
    return-void

    :cond_5e
    move-object/from16 v2, p6

    move-object/from16 v7, p7

    move-object v5, v8

    move-object v4, v9

    move/from16 p5, v11

    move/from16 v1, v25

    const/16 v3, 0x8

    const/4 v6, 0x0

    const/16 v20, 0x1

    const/4 v8, 0x2

    :goto_34
    if-ge v1, v8, :cond_63

    if-eqz p3, :cond_63

    if-eqz p5, :cond_63

    invoke-virtual {v10, v4, v2, v6, v3}, Lt/f;->f(Lt/m;Lt/m;II)V

    iget-object v0, v0, Lv/f;->O:Lv/d;

    if-nez p2, :cond_60

    iget-object v1, v0, Lv/d;->f:Lv/d;

    if-nez v1, :cond_5f

    goto :goto_35

    :cond_5f
    move v1, v6

    goto :goto_36

    :cond_60
    :goto_35
    move/from16 v1, v20

    :goto_36
    if-nez p2, :cond_62

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_62

    iget-object v0, v0, Lv/d;->d:Lv/f;

    iget v1, v0, Lv/f;->Z:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_61

    iget-object v0, v0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v0, v6

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_61

    aget-object v0, v0, v20

    if-ne v0, v2, :cond_61

    goto :goto_37

    :cond_61
    move/from16 v20, v6

    goto :goto_37

    :cond_62
    move/from16 v20, v1

    :goto_37
    if-eqz v20, :cond_63

    invoke-virtual {v10, v7, v5, v6, v3}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_63
    return-void
.end method

.method public final f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .locals 10

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->k:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    const/4 v7, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    invoke-virtual {p0, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    invoke-virtual {p0, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p4

    invoke-virtual {p0, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lv/d;->h()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lv/d;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move p1, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, p2, v3, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v5, p2, v5, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    move p1, v9

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lv/d;->h()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lv/d;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    move v9, v7

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4, p2, v4, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v6, p2, v6, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {p0, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_7
    if-eqz v9, :cond_1c

    invoke-virtual {p0, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_8
    if-eq p3, v3, :cond_b

    if-ne p3, v5, :cond_9

    goto :goto_2

    :cond_9
    if-eq p3, v4, :cond_a

    if-ne p3, v6, :cond_1c

    :cond_a
    invoke-virtual {p0, v4, p2, p3, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v6, p2, p3, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_b
    :goto_2
    invoke-virtual {p0, v3, p2, p3, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v5, p2, p3, v7}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    invoke-virtual {p0, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_c
    if-ne p1, v2, :cond_e

    if-eq p3, v3, :cond_d

    if-ne p3, v5, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p2

    invoke-virtual {p0, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    invoke-virtual {p1, p2, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p3, p2, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0, p2, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_e
    if-ne p1, v1, :cond_10

    if-eq p3, v4, :cond_f

    if-ne p3, v6, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p2

    invoke-virtual {p2, p1, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    invoke-virtual {p0, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p2, v3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p2, v5}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_11
    if-ne p1, v1, :cond_12

    if-ne p3, v1, :cond_12

    invoke-virtual {p0, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p2, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p2, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p4

    invoke-virtual {p1, p4, v7}, Lv/d;->a(Lv/d;I)V

    invoke-virtual {p0, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lv/d;->a(Lv/d;I)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {p0, p1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v7

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p2

    invoke-virtual {v7, p2}, Lv/d;->i(Lv/d;)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    if-ne p1, p3, :cond_14

    invoke-virtual {p0, v4}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p0, v6}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lv/d;->j()V

    :cond_13
    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lv/d;->j()V

    goto :goto_4

    :cond_14
    if-eq p1, v4, :cond_18

    if-ne p1, v6, :cond_15

    goto :goto_3

    :cond_15
    if-eq p1, v3, :cond_16

    if-ne p1, v5, :cond_1b

    :cond_16
    invoke-virtual {p0, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    iget-object v0, p3, Lv/d;->f:Lv/d;

    if-eq v0, p2, :cond_17

    invoke-virtual {p3}, Lv/d;->j()V

    :cond_17
    invoke-virtual {p0, p1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p1}, Lv/d;->f()Lv/d;

    move-result-object p1

    invoke-virtual {p0, v2}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0}, Lv/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Lv/d;->j()V

    invoke-virtual {p0}, Lv/d;->j()V

    goto :goto_4

    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lv/d;->j()V

    :cond_19
    invoke-virtual {p0, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p3

    iget-object v0, p3, Lv/d;->f:Lv/d;

    if-eq v0, p2, :cond_1a

    invoke-virtual {p3}, Lv/d;->j()V

    :cond_1a
    invoke-virtual {p0, p1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    invoke-virtual {p1}, Lv/d;->f()Lv/d;

    move-result-object p1

    invoke-virtual {p0, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p0}, Lv/d;->h()Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-virtual {p1}, Lv/d;->j()V

    invoke-virtual {p0}, Lv/d;->j()V

    :cond_1b
    :goto_4
    invoke-virtual {v7, p2, p4}, Lv/d;->a(Lv/d;I)V

    :cond_1c
    :goto_5
    return-void
.end method

.method public final g(Lv/d;Lv/d;I)V
    .locals 1

    iget-object v0, p1, Lv/d;->d:Lv/f;

    if-ne v0, p0, :cond_0

    iget-object v0, p2, Lv/d;->d:Lv/f;

    iget-object p1, p1, Lv/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    iget-object p2, p2, Lv/d;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, p1, v0, p2, p3}, Lv/f;->f(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    :cond_0
    return-void
.end method

.method public final h(Lt/f;)V
    .locals 1

    iget-object v0, p0, Lv/f;->K:Lv/d;

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    iget-object v0, p0, Lv/f;->L:Lv/d;

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    iget-object v0, p0, Lv/f;->M:Lv/d;

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    iget-object v0, p0, Lv/f;->N:Lv/d;

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    iget v0, p0, Lv/f;->d0:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lv/f;->O:Lv/d;

    invoke-virtual {p1, p0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/d;-><init>(Lv/f;)V

    iput-object v0, p0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    :cond_0
    iget-object v0, p0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/e;-><init>(Lv/f;)V

    iput-object v0, p0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    :cond_1
    return-void
.end method

.method public j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lv/f;->Q:Lv/d;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lv/f;->P:Lv/d;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lv/f;->R:Lv/d;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lv/f;->O:Lv/d;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lv/f;->N:Lv/d;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lv/f;->M:Lv/d;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lv/f;->L:Lv/d;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lv/f;->K:Lv/d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 1

    iget-object p0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l()I
    .locals 2

    iget v0, p0, Lv/f;->j0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lv/f;->Y:I

    return p0
.end method

.method public final m(I)Lv/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-object p1, p0, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lv/d;->d:Lv/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lv/f;->N:Lv/d;

    iget-object p1, p0, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lv/d;->d:Lv/f;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final n(I)Lv/f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lv/f;->K:Lv/d;

    iget-object p1, p0, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lv/d;->d:Lv/f;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lv/f;->L:Lv/d;

    iget-object p1, p0, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_1

    iget-object p0, p1, Lv/d;->d:Lv/f;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public o(Ljava/lang/StringBuilder;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v10, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lv/f;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":{\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    actualWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lv/f;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualHeight:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lv/f;->Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualLeft:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lv/f;->b0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualTop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lv/f;->c0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left"

    iget-object v2, v0, Lv/f;->K:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "top"

    iget-object v2, v0, Lv/f;->L:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "right"

    iget-object v2, v0, Lv/f;->M:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "bottom"

    iget-object v2, v0, Lv/f;->N:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "baseline"

    iget-object v2, v0, Lv/f;->O:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "centerX"

    iget-object v2, v0, Lv/f;->P:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v1, "centerY"

    iget-object v2, v0, Lv/f;->Q:Lv/d;

    invoke-static {v10, v1, v2}, Lv/f;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/d;)V

    const-string v2, "    width"

    iget v3, v0, Lv/f;->X:I

    iget v4, v0, Lv/f;->e0:I

    iget-object v11, v0, Lv/f;->D:[I

    const/4 v12, 0x0

    aget v5, v11, v12

    iget v6, v0, Lv/f;->v:I

    iget v7, v0, Lv/f;->s:I

    iget v8, v0, Lv/f;->x:F

    iget-object v13, v0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v13, v12

    iget-object v14, v0, Lv/f;->n0:[F

    aget v1, v14, v12

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lv/f;->p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    const-string v2, "    height"

    iget v3, v0, Lv/f;->Y:I

    iget v4, v0, Lv/f;->f0:I

    const/4 v1, 0x1

    aget v5, v11, v1

    iget v6, v0, Lv/f;->y:I

    iget v7, v0, Lv/f;->t:I

    iget v8, v0, Lv/f;->A:F

    aget-object v9, v13, v1

    aget v1, v14, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lv/f;->p(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    iget v1, v0, Lv/f;->Z:F

    iget v2, v0, Lv/f;->a0:I

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "    dimensionRatio"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :  ["

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],\n"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, v0, Lv/f;->g0:F

    const-string v2, "    horizontalBias"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v10, v2, v1, v3}, Lv/f;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    verticalBias"

    iget v2, v0, Lv/f;->h0:F

    invoke-static {v10, v1, v2, v3}, Lv/f;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    horizontalChainStyle"

    iget v2, v0, Lv/f;->l0:I

    invoke-static {v2, v12, v1, v10}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "    verticalChainStyle"

    iget v0, v0, Lv/f;->m0:I

    invoke-static {v0, v12, v1, v10}, Lv/f;->H(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "  }"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final r()I
    .locals 2

    iget v0, p0, Lv/f;->j0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lv/f;->X:I

    return p0
.end method

.method public final s()I
    .locals 2

    iget-object v0, p0, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lv/g;

    if-eqz v1, :cond_0

    check-cast v0, Lv/g;

    iget v0, v0, Lv/g;->z0:I

    iget p0, p0, Lv/f;->b0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lv/f;->b0:I

    return p0
.end method

.method public final t()I
    .locals 2

    iget-object v0, p0, Lv/f;->W:Lv/f;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lv/g;

    if-eqz v1, :cond_0

    check-cast v0, Lv/g;

    iget v0, v0, Lv/g;->A0:I

    iget p0, p0, Lv/f;->c0:I

    add-int/2addr v0, p0

    return v0

    :cond_0
    iget p0, p0, Lv/f;->c0:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv/f;->k0:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lv/f;->k0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/f;->b0:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/f;->c0:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/f;->X:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lv/f;->Y:I

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lv/f;->K:Lv/d;

    iget-object p1, p1, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-object p0, p0, Lv/d;->f:Lv/d;

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :cond_3
    iget-object p1, p0, Lv/f;->L:Lv/d;

    iget-object p1, p1, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    :goto_3
    iget-object v3, p0, Lv/f;->N:Lv/d;

    iget-object v3, v3, Lv/d;->f:Lv/d;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    add-int/2addr p1, v3

    iget-object p0, p0, Lv/f;->O:Lv/d;

    iget-object p0, p0, Lv/d;->f:Lv/d;

    if-eqz p0, :cond_6

    move p0, v1

    goto :goto_5

    :cond_6
    move p0, v2

    :goto_5
    add-int/2addr p1, p0

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    return v1
.end method

.method public final v(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lv/f;->K:Lv/d;

    iget-object v2, p1, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lv/d;->c:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-object v2, p0, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lv/d;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    invoke-virtual {p0}, Lv/d;->e()I

    move-result p0

    sub-int/2addr v2, p0

    iget-object p0, p1, Lv/d;->f:Lv/d;

    invoke-virtual {p0}, Lv/d;->d()I

    move-result p0

    invoke-virtual {p1}, Lv/d;->e()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object p1, p0, Lv/f;->L:Lv/d;

    iget-object v2, p1, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_3

    iget-boolean v2, v2, Lv/d;->c:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lv/f;->N:Lv/d;

    iget-object v2, p0, Lv/d;->f:Lv/d;

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lv/d;->c:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lv/d;->d()I

    move-result v2

    invoke-virtual {p0}, Lv/d;->e()I

    move-result p0

    sub-int/2addr v2, p0

    iget-object p0, p1, Lv/d;->f:Lv/d;

    invoke-virtual {p0}, Lv/d;->d()I

    move-result p0

    invoke-virtual {p1}, Lv/d;->e()I

    move-result p1

    add-int/2addr p1, p0

    sub-int/2addr v2, p1

    if-lt v2, p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public final w(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Lv/f;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p0

    invoke-virtual {p2, p3}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p4, p5, p2}, Lv/d;->b(Lv/d;IIZ)Z

    return-void
.end method

.method public final x(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lv/f;->S:[Lv/d;

    aget-object v0, p0, p1

    iget-object v1, v0, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lv/d;->f:Lv/d;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget-object p1, p0, Lv/d;->f:Lv/d;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lv/d;->f:Lv/d;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Lv/f;->K:Lv/d;

    iget-object v1, v0, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lv/d;->f:Lv/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lv/f;->M:Lv/d;

    iget-object v0, p0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Z
    .locals 2

    iget-object v0, p0, Lv/f;->L:Lv/d;

    iget-object v1, v0, Lv/d;->f:Lv/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lv/d;->f:Lv/d;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object p0, p0, Lv/f;->N:Lv/d;

    iget-object v0, p0, Lv/d;->f:Lv/d;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lv/d;->f:Lv/d;

    if-ne v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
