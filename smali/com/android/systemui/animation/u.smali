.class public final Lcom/android/systemui/animation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/t;


# instance fields
.field public final d:Landroid/view/View;

.field public final e:Lm3/l;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lm3/l;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/u;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/animation/u;->e:Lm3/l;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/u;->g:I

    return-void
.end method


# virtual methods
.method public final i(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/animation/u;->f:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/animation/u;->g:I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/u;->e:Lm3/l;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/animation/u;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/animation/u;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/animation/u;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/animation/u;->g:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/animation/u;->g:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/u;->e:Lm3/l;

    if-nez p1, :cond_2

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/animation/u;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lm3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
