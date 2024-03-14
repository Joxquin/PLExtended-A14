.class public final Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDefaultValue:F

.field private final mInx:I

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiPropertyFactory;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/MultiPropertyFactory;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return p0
.end method


# virtual methods
.method public final animateToValue(F)Landroid/animation/Animator;
    .locals 4

    sget-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object p0
.end method

.method public final getValue()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return p0
.end method

.method public final setValue(F)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->c(Lcom/android/launcher3/util/MultiPropertyFactory;)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->e(Lcom/android/launcher3/util/MultiPropertyFactory;F)V

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->d(Lcom/android/launcher3/util/MultiPropertyFactory;)[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v6, v2, :cond_0

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->b(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v6

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->a(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v7

    iget v5, v5, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-interface {v6, v7, v5}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v5

    invoke-static {v0, v5}, Lcom/android/launcher3/util/MultiPropertyFactory;->e(Lcom/android/launcher3/util/MultiPropertyFactory;F)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;->f(Lcom/android/launcher3/util/MultiPropertyFactory;I)V

    :cond_2
    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->b(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->a(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v1

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->apply(F)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
