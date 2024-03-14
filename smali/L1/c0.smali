.class public final synthetic LL1/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic b:LL1/K;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;LL1/K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/c0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput-object p2, p0, LL1/c0;->b:LL1/K;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, LL1/c0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    iget-object p0, p0, LL1/c0;->b:LL1/K;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Path;->offset(FF)V

    :cond_0
    iget-object p0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->s:LL1/B;

    iget-object v0, p0, LL1/B;->p:Landroid/graphics/Path;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, LL1/B;->q:Landroid/graphics/Path;

    iput-object p1, p0, LL1/B;->p:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, LL1/B;->o:F

    :cond_2
    :goto_0
    return-void
.end method
