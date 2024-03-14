.class final Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# instance fields
.field private final mInx:I

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-direct {p0, p3}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    iput p2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;Ljava/lang/Integer;Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->e(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v0

    iget v1, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->k(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iget-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->d(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v0

    iget v1, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->j(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {p0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->f(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result p1

    iget p2, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    mul-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->l(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 4

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->c(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->k(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->j(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->l(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->g(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/w;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/w;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->i(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->e(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->d(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v2}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->f(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v2

    mul-float/2addr v2, p2

    iget-object v3, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-static {v3, v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->h(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    iput p2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {p0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->b(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
