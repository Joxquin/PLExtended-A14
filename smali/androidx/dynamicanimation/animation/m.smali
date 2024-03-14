.class public abstract Landroidx/dynamicanimation/animation/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/c;


# static fields
.field public static final m:Landroidx/dynamicanimation/animation/h;

.field public static final n:Landroidx/dynamicanimation/animation/h;

.field public static final o:Landroidx/dynamicanimation/animation/h;

.field public static final p:Landroidx/dynamicanimation/animation/h;

.field public static final q:Landroidx/dynamicanimation/animation/h;

.field public static final r:Landroidx/dynamicanimation/animation/h;

.field public static final s:Landroidx/dynamicanimation/animation/h;

.field public static final t:Landroidx/dynamicanimation/animation/h;

.field public static final u:Landroidx/dynamicanimation/animation/h;

.field public static final v:Landroidx/dynamicanimation/animation/h;

.field public static final w:Landroidx/dynamicanimation/animation/h;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Landroidx/dynamicanimation/animation/q;

.field public f:Z

.field public g:F

.field public h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "translationX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->m:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "translationY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->n:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "translationZ"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->o:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "scaleX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "scaleY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "rotation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->r:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "rotationX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->s:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "rotationY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->t:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "x"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "y"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "alpha"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->u:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "scrollX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->v:Landroidx/dynamicanimation/animation/h;

    new-instance v0, Landroidx/dynamicanimation/animation/h;

    const-string v1, "scrollY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/m;->w:Landroidx/dynamicanimation/animation/h;

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/dynamicanimation/animation/m;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/dynamicanimation/animation/m;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/m;->c:Z

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    iput v0, p0, Landroidx/dynamicanimation/animation/m;->g:F

    const v0, -0x800001

    iput v0, p0, Landroidx/dynamicanimation/animation/m;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/m;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/m;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/m;->l:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/dynamicanimation/animation/m;->d:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/dynamicanimation/animation/m;->e:Landroidx/dynamicanimation/animation/q;

    sget-object p2, Landroidx/dynamicanimation/animation/m;->r:Landroidx/dynamicanimation/animation/h;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/dynamicanimation/animation/m;->s:Landroidx/dynamicanimation/animation/h;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/dynamicanimation/animation/m;->t:Landroidx/dynamicanimation/animation/h;

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Landroidx/dynamicanimation/animation/m;->u:Landroidx/dynamicanimation/animation/h;

    if-ne p1, p2, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    goto :goto_2

    :cond_1
    sget-object p2, Landroidx/dynamicanimation/animation/m;->p:Landroidx/dynamicanimation/animation/h;

    if-eq p1, p2, :cond_3

    sget-object p2, Landroidx/dynamicanimation/animation/m;->q:Landroidx/dynamicanimation/animation/h;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    :goto_2
    return-void
.end method

.method public static d()Landroidx/dynamicanimation/animation/g;
    .locals 3

    sget-object v0, Landroidx/dynamicanimation/animation/g;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/dynamicanimation/animation/g;

    new-instance v2, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v2}, Landroidx/dynamicanimation/animation/e;-><init>()V

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/g;-><init>(Landroidx/dynamicanimation/animation/e;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/g;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/dynamicanimation/animation/j;)V
    .locals 1

    iget-object p0, p0, Landroidx/dynamicanimation/animation/m;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    check-cast v0, Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/m;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object v1

    iget-object v2, v1, Landroidx/dynamicanimation/animation/g;->a:Lq/m;

    invoke-virtual {v2, p0}, Lq/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/dynamicanimation/animation/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/g;->f:Z

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/dynamicanimation/animation/m;->i:J

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->c:Z

    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/m;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/j;

    iget v2, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v3, p0, Landroidx/dynamicanimation/animation/m;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/animation/j;->onAnimationEnd(Landroidx/dynamicanimation/animation/m;ZFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .locals 4

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/m;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/m;->i:J

    iget p1, p0, Landroidx/dynamicanimation/animation/m;->b:F

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/m;->f(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    iput-wide p1, p0, Landroidx/dynamicanimation/animation/m;->i:J

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object p1

    iget p1, p1, Landroidx/dynamicanimation/animation/g;->g:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    const-wide/32 p1, 0x7fffffff

    goto :goto_0

    :cond_1
    long-to-float p2, v0

    div-float/2addr p2, p1

    float-to-long p1, p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/m;->i(J)Z

    move-result p1

    iget p2, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v0, p0, Landroidx/dynamicanimation/animation/m;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v0, p0, Landroidx/dynamicanimation/animation/m;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/dynamicanimation/animation/m;->b:F

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/m;->f(F)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/m;->c(Z)V

    :cond_2
    return p1
.end method

.method public final e(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/m;->g(F)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(F)V
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/m;->e:Landroidx/dynamicanimation/animation/q;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/m;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/q;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/m;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/k;

    iget v1, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v2, p0, Landroidx/dynamicanimation/animation/m;->a:F

    invoke-interface {v0, v1, v2}, Landroidx/dynamicanimation/animation/k;->a(FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public abstract g(F)V
.end method

.method public h()V
    .locals 5

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    check-cast v0, Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/e;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    if-nez v0, :cond_4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/m;->e:Landroidx/dynamicanimation/animation/q;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/m;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/q;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroidx/dynamicanimation/animation/m;->b:F

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v1, p0, Landroidx/dynamicanimation/animation/m;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    iget v1, p0, Landroidx/dynamicanimation/animation/m;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iget-object v1, v0, Landroidx/dynamicanimation/animation/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    check-cast v2, Landroidx/dynamicanimation/animation/e;

    iget-object v2, v2, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    check-cast v2, Landroid/view/Choreographer;

    new-instance v3, Landroidx/dynamicanimation/animation/f;

    iget-object v4, v0, Landroidx/dynamicanimation/animation/g;->d:Landroidx/dynamicanimation/animation/a;

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/f;-><init>(Landroidx/dynamicanimation/animation/a;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v2

    iput v2, v0, Landroidx/dynamicanimation/animation/g;->g:F

    iget-object v2, v0, Landroidx/dynamicanimation/animation/g;->h:Landroidx/dynamicanimation/animation/e;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/dynamicanimation/animation/e;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/e;-><init>(Landroidx/dynamicanimation/animation/g;)V

    iput-object v2, v0, Landroidx/dynamicanimation/animation/g;->h:Landroidx/dynamicanimation/animation/e;

    :cond_1
    iget-object v0, v0, Landroidx/dynamicanimation/animation/g;->h:Landroidx/dynamicanimation/animation/e;

    iget-object v2, v0, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    check-cast v2, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/dynamicanimation/animation/d;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/d;-><init>(Landroidx/dynamicanimation/animation/e;)V

    iput-object v2, v0, Landroidx/dynamicanimation/animation/e;->a:Ljava/lang/Object;

    invoke-static {v2}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract i(J)Z
.end method
