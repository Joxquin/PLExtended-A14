.class public final Landroidx/core/view/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroidx/core/view/c0;


# instance fields
.field public final a:Landroidx/core/view/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/core/view/Z;->l:Landroidx/core/view/c0;

    sput-object v0, Landroidx/core/view/c0;->b:Landroidx/core/view/c0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/core/view/a0;

    invoke-direct {v0, p0}, Landroidx/core/view/a0;-><init>(Landroidx/core/view/c0;)V

    iput-object v0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/view/Z;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/Z;-><init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    return-void
.end method

.method public static e(LE/b;IIII)LE/b;
    .locals 5

    iget v0, p0, LE/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, LE/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, LE/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, LE/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;
    .locals 2

    new-instance v0, Landroidx/core/view/c0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/core/view/c0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    sget-object p0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/E;->a(Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object p0

    iget-object v1, v0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {v1, p0}, Landroidx/core/view/a0;->q(Landroidx/core/view/c0;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/core/view/a0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->d:I

    return p0
.end method

.method public final b()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->a:I

    return p0
.end method

.method public final c()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->c:I

    return p0
.end method

.method public final d()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p0}, Landroidx/core/view/a0;->j()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->b:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/core/view/c0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/core/view/c0;

    iget-object p1, p1, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    instance-of v0, p0, Landroidx/core/view/V;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/core/view/V;

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/a0;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
