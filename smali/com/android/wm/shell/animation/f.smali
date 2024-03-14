.class public final Lcom/android/wm/shell/animation/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public f:I

.field public final g:Landroid/util/ArrayMap;

.field public final synthetic h:Lcom/android/wm/shell/animation/l;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/l;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/animation/f;->h:Lcom/android/wm/shell/animation/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/animation/f;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/animation/f;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/wm/shell/animation/f;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/android/wm/shell/animation/f;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/android/wm/shell/animation/f;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/animation/f;->f:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/f;->g:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/animation/f;->g:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/animation/f;->f:I

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/animation/f;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/animation/h;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v1}, Lcom/android/wm/shell/animation/h;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :cond_1
    return-void
.end method
