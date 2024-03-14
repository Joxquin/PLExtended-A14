.class public final LC2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LC2/d;

.field public final b:LC2/d;

.field public final c:LC2/d;

.field public final d:LC2/d;

.field public final e:LC2/c;

.field public final f:LC2/c;

.field public final g:LC2/c;

.field public final h:LC2/c;

.field public final i:LC2/f;

.field public final j:LC2/f;

.field public final k:LC2/f;

.field public final l:LC2/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, LC2/l;

    invoke-direct {v0}, LC2/l;-><init>()V

    .line 24
    iput-object v0, p0, LC2/n;->a:LC2/d;

    .line 25
    new-instance v0, LC2/l;

    invoke-direct {v0}, LC2/l;-><init>()V

    .line 26
    iput-object v0, p0, LC2/n;->b:LC2/d;

    .line 27
    new-instance v0, LC2/l;

    invoke-direct {v0}, LC2/l;-><init>()V

    .line 28
    iput-object v0, p0, LC2/n;->c:LC2/d;

    .line 29
    new-instance v0, LC2/l;

    invoke-direct {v0}, LC2/l;-><init>()V

    .line 30
    iput-object v0, p0, LC2/n;->d:LC2/d;

    .line 31
    new-instance v0, LC2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC2/a;-><init>(F)V

    iput-object v0, p0, LC2/n;->e:LC2/c;

    .line 32
    new-instance v0, LC2/a;

    invoke-direct {v0, v1}, LC2/a;-><init>(F)V

    iput-object v0, p0, LC2/n;->f:LC2/c;

    .line 33
    new-instance v0, LC2/a;

    invoke-direct {v0, v1}, LC2/a;-><init>(F)V

    iput-object v0, p0, LC2/n;->g:LC2/c;

    .line 34
    new-instance v0, LC2/a;

    invoke-direct {v0, v1}, LC2/a;-><init>(F)V

    iput-object v0, p0, LC2/n;->h:LC2/c;

    .line 35
    new-instance v0, LC2/f;

    invoke-direct {v0}, LC2/f;-><init>()V

    .line 36
    iput-object v0, p0, LC2/n;->i:LC2/f;

    .line 37
    new-instance v0, LC2/f;

    invoke-direct {v0}, LC2/f;-><init>()V

    .line 38
    iput-object v0, p0, LC2/n;->j:LC2/f;

    .line 39
    new-instance v0, LC2/f;

    invoke-direct {v0}, LC2/f;-><init>()V

    .line 40
    iput-object v0, p0, LC2/n;->k:LC2/f;

    .line 41
    new-instance v0, LC2/f;

    invoke-direct {v0}, LC2/f;-><init>()V

    .line 42
    iput-object v0, p0, LC2/n;->l:LC2/f;

    return-void
.end method

.method public constructor <init>(LC2/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, LC2/m;->a:LC2/d;

    .line 3
    iput-object v0, p0, LC2/n;->a:LC2/d;

    .line 4
    iget-object v0, p1, LC2/m;->b:LC2/d;

    .line 5
    iput-object v0, p0, LC2/n;->b:LC2/d;

    .line 6
    iget-object v0, p1, LC2/m;->c:LC2/d;

    .line 7
    iput-object v0, p0, LC2/n;->c:LC2/d;

    .line 8
    iget-object v0, p1, LC2/m;->d:LC2/d;

    .line 9
    iput-object v0, p0, LC2/n;->d:LC2/d;

    .line 10
    iget-object v0, p1, LC2/m;->e:LC2/c;

    .line 11
    iput-object v0, p0, LC2/n;->e:LC2/c;

    .line 12
    iget-object v0, p1, LC2/m;->f:LC2/c;

    .line 13
    iput-object v0, p0, LC2/n;->f:LC2/c;

    .line 14
    iget-object v0, p1, LC2/m;->g:LC2/c;

    .line 15
    iput-object v0, p0, LC2/n;->g:LC2/c;

    .line 16
    iget-object v0, p1, LC2/m;->h:LC2/c;

    .line 17
    iput-object v0, p0, LC2/n;->h:LC2/c;

    .line 18
    iget-object v0, p1, LC2/m;->i:LC2/f;

    iput-object v0, p0, LC2/n;->i:LC2/f;

    .line 19
    iget-object v0, p1, LC2/m;->j:LC2/f;

    iput-object v0, p0, LC2/n;->j:LC2/f;

    .line 20
    iget-object v0, p1, LC2/m;->k:LC2/f;

    iput-object v0, p0, LC2/n;->k:LC2/f;

    .line 21
    iget-object p1, p1, LC2/m;->l:LC2/f;

    iput-object p1, p0, LC2/n;->l:LC2/f;

    return-void
.end method

.method public static a(Landroid/content/Context;IILC2/a;)LC2/m;
    .locals 8

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_0

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, p0

    :cond_0
    sget-object p0, Li2/a;->y:[I

    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    invoke-static {p0, v2, p3}, LC2/n;->c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;

    move-result-object p3

    const/16 v2, 0x8

    invoke-static {p0, v2, p3}, LC2/n;->c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {p0, v3, p3}, LC2/n;->c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {p0, v4, p3}, LC2/n;->c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {p0, v5, p3}, LC2/n;->c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;

    move-result-object p3

    new-instance v5, LC2/m;

    invoke-direct {v5}, LC2/m;-><init>()V

    invoke-static {p2}, LC2/j;->a(I)LC2/d;

    move-result-object p2

    iput-object p2, v5, LC2/m;->a:LC2/d;

    invoke-static {p2}, LC2/m;->b(LC2/d;)F

    move-result p2

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, p2, v6

    if-eqz v7, :cond_1

    new-instance v7, LC2/a;

    invoke-direct {v7, p2}, LC2/a;-><init>(F)V

    iput-object v7, v5, LC2/m;->e:LC2/c;

    :cond_1
    iput-object v2, v5, LC2/m;->e:LC2/c;

    invoke-static {v0}, LC2/j;->a(I)LC2/d;

    move-result-object p2

    iput-object p2, v5, LC2/m;->b:LC2/d;

    invoke-static {p2}, LC2/m;->b(LC2/d;)F

    move-result p2

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_2

    new-instance v0, LC2/a;

    invoke-direct {v0, p2}, LC2/a;-><init>(F)V

    iput-object v0, v5, LC2/m;->f:LC2/c;

    :cond_2
    iput-object v3, v5, LC2/m;->f:LC2/c;

    invoke-static {v1}, LC2/j;->a(I)LC2/d;

    move-result-object p2

    iput-object p2, v5, LC2/m;->c:LC2/d;

    invoke-static {p2}, LC2/m;->b(LC2/d;)F

    move-result p2

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_3

    new-instance v0, LC2/a;

    invoke-direct {v0, p2}, LC2/a;-><init>(F)V

    iput-object v0, v5, LC2/m;->g:LC2/c;

    :cond_3
    iput-object v4, v5, LC2/m;->g:LC2/c;

    invoke-static {p1}, LC2/j;->a(I)LC2/d;

    move-result-object p1

    iput-object p1, v5, LC2/m;->d:LC2/d;

    invoke-static {p1}, LC2/m;->b(LC2/d;)F

    move-result p1

    cmpl-float p2, p1, v6

    if-eqz p2, :cond_4

    new-instance p2, LC2/a;

    invoke-direct {p2, p1}, LC2/a;-><init>(F)V

    iput-object p2, v5, LC2/m;->h:LC2/c;

    :cond_4
    iput-object p3, v5, LC2/m;->h:LC2/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static b(Landroid/content/Context;Landroid/util/AttributeSet;II)LC2/m;
    .locals 3

    new-instance v0, LC2/a;

    const/4 v1, 0x0

    int-to-float v2, v1

    invoke-direct {v0, v2}, LC2/a;-><init>(F)V

    sget-object v2, Li2/a;->s:[I

    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, v0}, LC2/n;->a(Landroid/content/Context;IILC2/a;)LC2/m;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/res/TypedArray;ILC2/c;)LC2/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, LC2/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, LC2/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, LC2/k;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, LC2/k;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;)Z
    .locals 5

    iget-object v0, p0, LC2/n;->l:LC2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LC2/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/n;->j:LC2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/n;->i:LC2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LC2/n;->k:LC2/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, LC2/n;->e:LC2/c;

    invoke-interface {v1, p1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, LC2/n;->f:LC2/c;

    invoke-interface {v4, p1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, LC2/n;->h:LC2/c;

    invoke-interface {v4, p1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, LC2/n;->g:LC2/c;

    invoke-interface {v4, p1}, LC2/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v1, p0, LC2/n;->b:LC2/d;

    instance-of v1, v1, LC2/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, LC2/n;->a:LC2/d;

    instance-of v1, v1, LC2/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, LC2/n;->c:LC2/d;

    instance-of v1, v1, LC2/l;

    if-eqz v1, :cond_2

    iget-object p0, p0, LC2/n;->d:LC2/d;

    instance-of p0, p0, LC2/l;

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method
