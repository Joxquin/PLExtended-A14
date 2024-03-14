.class public final LA0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public d:Landroid/view/View;

.field public final e:Ljava/lang/String;

.field public final f:LA0/u;

.field public g:I

.field public h:Z

.field public final i:[J

.field public final j:[LA0/t;

.field public k:Z

.field public final l:LA0/n;

.field public final synthetic m:LA0/x;


# direct methods
.method public constructor <init>(LA0/x;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, LA0/w;->m:LA0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA0/u;

    invoke-direct {v0}, LA0/u;-><init>()V

    iput-object v0, p0, LA0/w;->f:LA0/u;

    const/4 v0, -0x1

    iput v0, p0, LA0/w;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LA0/w;->h:Z

    iget p1, p1, LA0/x;->a:I

    new-array v1, p1, [J

    iput-object v1, p0, LA0/w;->i:[J

    new-array p1, p1, [LA0/t;

    iput-object p1, p0, LA0/w;->j:[LA0/t;

    iput-boolean v0, p0, LA0/w;->k:Z

    new-instance p1, LA0/n;

    invoke-direct {p1, v0, p0}, LA0/n;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LA0/w;->l:LA0/n;

    iput-object p2, p0, LA0/w;->d:Landroid/view/View;

    iput-object p3, p0, LA0/w;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;LA0/u;)LA0/u;
    .locals 3

    iget-object v0, p0, LA0/w;->m:LA0/x;

    iget-object v1, v0, LA0/x;->d:LA0/u;

    if-eqz v1, :cond_0

    iget-object v2, v1, LA0/u;->f:LA0/u;

    iput-object v2, v0, LA0/x;->d:LA0/u;

    const/4 v0, 0x0

    iput-object v0, v1, LA0/u;->f:LA0/u;

    goto :goto_0

    :cond_0
    new-instance v1, LA0/u;

    invoke-direct {v1}, LA0/u;-><init>()V

    :goto_0
    iput-object p1, v1, LA0/u;->d:Landroid/view/View;

    iput-object v1, p2, LA0/u;->f:LA0/u;

    instance-of p2, p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget p1, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x7fe00000

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    iget-boolean p1, p0, LA0/w;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    neg-int p0, p0

    iput p0, v1, LA0/u;->e:I

    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    iput p1, v1, LA0/u;->e:I

    :goto_1
    if-ge v0, p1, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, LA0/w;->a(Landroid/view/View;LA0/u;)LA0/u;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    iput v0, v1, LA0/u;->e:I

    return-object v1
.end method

.method public final onDraw()V
    .locals 3

    const-string v0, "view_capture"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, LA0/w;->d:Landroid/view/View;

    iget-object v1, p0, LA0/w;->f:LA0/u;

    invoke-virtual {p0, v0, v1}, LA0/w;->a(Landroid/view/View;LA0/u;)LA0/u;

    iget-object v0, p0, LA0/w;->f:LA0/u;

    iget-object v0, v0, LA0/u;->f:LA0/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, LA0/w;->l:LA0/n;

    iput-object v1, v0, LA0/u;->g:LA0/n;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, LA0/u;->h:J

    iget-object v1, p0, LA0/w;->m:LA0/x;

    iget-object v1, v1, LA0/x;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LA0/w;->h:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
