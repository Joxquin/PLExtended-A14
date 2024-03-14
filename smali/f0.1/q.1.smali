.class public final Lf0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf0/J;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Z

.field public final v:I

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Integer;

.field public final y:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILf0/J;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lf0/q;->b:I

    .line 26
    iput v0, p0, Lf0/q;->c:I

    .line 27
    iput v0, p0, Lf0/q;->d:I

    .line 28
    iput v0, p0, Lf0/q;->e:I

    .line 29
    iput v0, p0, Lf0/q;->f:I

    .line 30
    iput v0, p0, Lf0/q;->g:I

    .line 31
    iput v0, p0, Lf0/q;->h:I

    .line 32
    iput v0, p0, Lf0/q;->i:I

    .line 33
    iput v0, p0, Lf0/q;->j:I

    .line 34
    iput v0, p0, Lf0/q;->k:I

    .line 35
    iput v0, p0, Lf0/q;->l:I

    .line 36
    iput v0, p0, Lf0/q;->m:I

    .line 37
    iput v0, p0, Lf0/q;->n:I

    .line 38
    iput v0, p0, Lf0/q;->o:I

    .line 39
    iput v0, p0, Lf0/q;->p:I

    .line 40
    iput v0, p0, Lf0/q;->q:I

    .line 41
    iput v0, p0, Lf0/q;->r:I

    .line 42
    iput v0, p0, Lf0/q;->s:I

    .line 43
    iput v0, p0, Lf0/q;->t:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lf0/q;->u:Z

    .line 45
    iput-object p3, p0, Lf0/q;->a:Lf0/J;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget-object v1, Le0/a;->a:[I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/high16 p3, -0x40800000    # -1.0f

    const/16 v1, 0x16

    .line 47
    :try_start_0
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->b:I

    const/16 v1, 0x15

    .line 48
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->c:I

    const/4 v1, 0x4

    .line 49
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->d:I

    const/4 v1, 0x3

    .line 50
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->e:I

    const/16 v1, 0x17

    .line 51
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->f:I

    const/16 v1, 0x14

    .line 52
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->g:I

    const/16 v1, 0xf

    .line 53
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->h:I

    const/16 v1, 0xe

    .line 54
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->i:I

    const/4 v1, 0x7

    .line 55
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->j:I

    const/4 v1, 0x6

    .line 56
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->k:I

    const/4 v1, 0x2

    .line 57
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->l:I

    const/4 v1, 0x1

    .line 58
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->m:I

    .line 59
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->n:I

    const/16 v1, 0xd

    .line 60
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->o:I

    const/16 v1, 0xb

    .line 61
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->p:I

    const/16 v1, 0xc

    .line 62
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->q:I

    const/16 v1, 0xa

    .line 63
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->r:I

    const/high16 v1, 0x41200000    # 10.0f

    const/16 v2, 0x11

    .line 64
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lf0/q;->s:I

    const/16 v1, 0x8

    .line 65
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lf0/q;->t:I

    const/4 p3, 0x5

    .line 66
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lf0/q;->u:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070057

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/16 p3, 0x9

    .line 68
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lf0/q;->v:I

    const/16 p1, 0x12

    .line 69
    invoke-static {p2, p1}, Lf0/q;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lf0/q;->w:Ljava/lang/Integer;

    const/16 p1, 0x13

    .line 70
    invoke-static {p2, p1}, Lf0/q;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lf0/q;->x:Ljava/lang/Integer;

    const/16 p1, 0x10

    .line 71
    invoke-static {p2, p1}, Lf0/q;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lf0/q;->y:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Lf0/J;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf0/q;->b:I

    .line 3
    iput v0, p0, Lf0/q;->c:I

    .line 4
    iput v0, p0, Lf0/q;->d:I

    .line 5
    iput v0, p0, Lf0/q;->e:I

    .line 6
    iput v0, p0, Lf0/q;->f:I

    .line 7
    iput v0, p0, Lf0/q;->g:I

    .line 8
    iput v0, p0, Lf0/q;->h:I

    .line 9
    iput v0, p0, Lf0/q;->i:I

    .line 10
    iput v0, p0, Lf0/q;->j:I

    .line 11
    iput v0, p0, Lf0/q;->k:I

    .line 12
    iput v0, p0, Lf0/q;->l:I

    .line 13
    iput v0, p0, Lf0/q;->m:I

    .line 14
    iput v0, p0, Lf0/q;->n:I

    .line 15
    iput v0, p0, Lf0/q;->o:I

    .line 16
    iput v0, p0, Lf0/q;->p:I

    .line 17
    iput v0, p0, Lf0/q;->q:I

    .line 18
    iput v0, p0, Lf0/q;->r:I

    .line 19
    iput v0, p0, Lf0/q;->s:I

    .line 20
    iput v0, p0, Lf0/q;->t:I

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lf0/q;->u:Z

    .line 22
    iput-object p2, p0, Lf0/q;->a:Lf0/J;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070057

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lf0/q;->v:I

    return-void
.end method

.method public static a(Landroid/content/res/TypedArray;I)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Lf0/q;->y:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lf0/q;->a:Lf0/J;

    iget p0, p0, Lf0/J;->c:I

    :goto_0
    return p0
.end method
