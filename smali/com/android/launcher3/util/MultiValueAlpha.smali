.class public final Lcom/android/launcher3/util/MultiValueAlpha;
.super Lcom/android/launcher3/util/MultiPropertyFactory;
.source "SourceFile"


# static fields
.field private static final ALPHA_AGGREGATOR:Lcom/android/launcher3/util/y;


# instance fields
.field private final mHiddenVisibility:I

.field private mUpdateVisibility:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/y;

    invoke-direct {v0}, Lcom/android/launcher3/util/y;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/MultiValueAlpha;->ALPHA_AGGREGATOR:Lcom/android/launcher3/util/y;

    return-void
.end method

.method public constructor <init>(ILandroid/view/View;I)V
    .locals 6

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/util/MultiValueAlpha;->ALPHA_AGGREGATOR:Lcom/android/launcher3/util/y;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V

    iput p3, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mHiddenVisibility:I

    return-void
.end method


# virtual methods
.method public final apply(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->apply(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mHiddenVisibility:I

    invoke-static {p1, p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final setUpdateVisibility()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    return-void
.end method
